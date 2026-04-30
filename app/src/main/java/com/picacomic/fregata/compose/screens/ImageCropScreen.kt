package com.picacomic.fregata.compose.screens

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Matrix
import android.graphics.Paint
import android.graphics.RectF
import android.net.Uri
import android.view.MotionEvent
import android.view.ScaleGestureDetector
import android.view.View
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.utils.FileProviderHelper
import com.picacomic.fregata.utils.f
import java.io.FileOutputStream
import kotlin.math.max
import kotlin.math.min

@Composable
fun ImageCropScreen(
    imageUriString: String?,
    cropType: Int,
    onCropped: (Uri) -> Unit,
    onError: () -> Unit,
) {
    PicaComposeTheme {
        val context = LocalContext.current
        val cropView = remember { PicaCropImageView(context) }

        LaunchedEffect(imageUriString, cropType) {
            val uri = imageUriString?.takeIf { it.isNotBlank() }?.let(Uri::parse)
            if (uri == null || !cropView.load(uri, cropType)) {
                onError()
            }
        }

        DisposableEffect(Unit) {
            onDispose { cropView.release() }
        }

        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(androidx.compose.ui.graphics.Color.Black),
        ) {
            AndroidView(
                factory = { cropView },
                modifier = Modifier.fillMaxSize(),
            )

            Row(
                horizontalArrangement = Arrangement.spacedBy(16.dp),
                modifier = Modifier
                    .align(Alignment.BottomCenter)
                    .padding(24.dp),
            ) {
                CropFab(
                    iconRes = R.drawable.ic_rotate_left_black_24dp,
                    onClick = { cropView.rotateLeft() },
                )
                CropFab(
                    iconRes = R.drawable.ic_rotate_right_black_24dp,
                    onClick = { cropView.rotateRight() },
                )
                CropFab(
                    iconRes = R.drawable.ic_done_black_24dp,
                    onClick = {
                        val uri = cropView.cropToCache()
                        if (uri != null) onCropped(uri) else onError()
                    },
                )
            }
        }
    }
}

@Composable
private fun CropFab(
    iconRes: Int,
    onClick: () -> Unit,
) {
    FloatingActionButton(
        onClick = onClick,
        containerColor = MaterialTheme.colorScheme.surface,
        contentColor = MaterialTheme.colorScheme.primary,
        modifier = Modifier.size(48.dp),
    ) {
        Icon(
            painter = painterResource(iconRes),
            contentDescription = null,
        )
    }
}

class PicaCropImageView(context: Context) : View(context) {
    private val imageMatrix = Matrix()
    private val inverseMatrix = Matrix()
    private val cropRect = RectF()
    private val bitmapRect = RectF()
    private val mappedBitmapRect = RectF()
    private val framePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        style = Paint.Style.STROKE
        strokeWidth = 3f
        color = android.graphics.Color.WHITE
    }
    private val guidePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        style = Paint.Style.STROKE
        strokeWidth = 1f
        color = android.graphics.Color.argb(160, 255, 255, 255)
    }
    private val overlayPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        style = Paint.Style.FILL
        color = android.graphics.Color.argb(170, 0, 0, 0)
    }
    private val scaleDetector = ScaleGestureDetector(context, ScaleListener())
    private var bitmap: Bitmap? = null
    private var cropType: Int = 2
    private var lastX = 0f
    private var lastY = 0f
    private var dragging = false

    fun load(uri: Uri, cropType: Int): Boolean {
        release()
        this.cropType = cropType
        return try {
            bitmap = decodeSampledBitmap(context, uri)
            resetFrameAndImage()
            invalidate()
            bitmap != null
        } catch (throwable: Throwable) {
            throwable.printStackTrace()
            false
        }
    }

    fun release() {
        bitmap?.recycle()
        bitmap = null
    }

    fun rotateLeft() {
        rotate(-90f)
    }

    fun rotateRight() {
        rotate(90f)
    }

    fun cropToCache(): Uri? {
        val source = bitmap ?: return null
        if (!imageMatrix.invert(inverseMatrix)) return null

        val cropInBitmap = RectF(cropRect)
        inverseMatrix.mapRect(cropInBitmap)
        val left = cropInBitmap.left.toInt().coerceIn(0, source.width - 1)
        val top = cropInBitmap.top.toInt().coerceIn(0, source.height - 1)
        val right = cropInBitmap.right.toInt().coerceIn(left + 1, source.width)
        val bottom = cropInBitmap.bottom.toInt().coerceIn(top + 1, source.height)
        val cropped = Bitmap.createBitmap(source, left, top, right - left, bottom - top)
        val output = resizeForOutput(cropped)
        if (output !== cropped) cropped.recycle()

        return try {
            val file = FileProviderHelper.getCropOutputFile(context)
            FileOutputStream(file).use { stream ->
                output.compress(Bitmap.CompressFormat.JPEG, 95, stream)
            }
            output.recycle()
            f.D(TAG, "Crop size = w:${right - left} h:${bottom - top}")
            Uri.fromFile(file)
        } catch (throwable: Throwable) {
            throwable.printStackTrace()
            output.recycle()
            null
        }
    }

    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        super.onSizeChanged(w, h, oldw, oldh)
        resetFrameAndImage()
    }

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        canvas.drawColor(Color.BLACK)
        val currentBitmap = bitmap ?: return

        canvas.drawBitmap(currentBitmap, imageMatrix, null)
        drawOverlay(canvas)
        drawGuides(canvas)
    }

    override fun onTouchEvent(event: MotionEvent): Boolean {
        scaleDetector.onTouchEvent(event)
        when (event.actionMasked) {
            MotionEvent.ACTION_DOWN -> {
                dragging = true
                lastX = event.x
                lastY = event.y
            }

            MotionEvent.ACTION_MOVE -> {
                if (dragging && !scaleDetector.isInProgress && event.pointerCount == 1) {
                    val dx = event.x - lastX
                    val dy = event.y - lastY
                    imageMatrix.postTranslate(dx, dy)
                    constrainImage()
                    invalidate()
                    lastX = event.x
                    lastY = event.y
                }
            }

            MotionEvent.ACTION_UP,
            MotionEvent.ACTION_CANCEL -> dragging = false
        }
        return true
    }

    private fun rotate(degrees: Float) {
        val source = bitmap ?: return
        val matrix = Matrix().apply { postRotate(degrees) }
        bitmap = Bitmap.createBitmap(source, 0, 0, source.width, source.height, matrix, true)
        source.recycle()
        resetFrameAndImage()
        invalidate()
    }

    private fun resetFrameAndImage() {
        val source = bitmap ?: return
        if (width <= 0 || height <= 0) return

        val availableWidth = width * 0.84f
        val availableHeight = height * 0.68f
        if (cropType == 1) {
            val side = min(availableWidth, availableHeight)
            cropRect.set(
                (width - side) / 2f,
                (height - side) / 2f,
                (width + side) / 2f,
                (height + side) / 2f,
            )
        } else {
            val sourceAspect = source.width.toFloat() / source.height.toFloat()
            var cropWidth = availableWidth
            var cropHeight = cropWidth / sourceAspect
            if (cropHeight > availableHeight) {
                cropHeight = availableHeight
                cropWidth = cropHeight * sourceAspect
            }
            cropRect.set(
                (width - cropWidth) / 2f,
                (height - cropHeight) / 2f,
                (width + cropWidth) / 2f,
                (height + cropHeight) / 2f,
            )
        }

        imageMatrix.reset()
        val scale = max(cropRect.width() / source.width, cropRect.height() / source.height)
        imageMatrix.postScale(scale, scale)
        val dx = cropRect.centerX() - source.width * scale / 2f
        val dy = cropRect.centerY() - source.height * scale / 2f
        imageMatrix.postTranslate(dx, dy)
        constrainImage()
    }

    private fun constrainImage() {
        val source = bitmap ?: return
        bitmapRect.set(0f, 0f, source.width.toFloat(), source.height.toFloat())
        imageMatrix.mapRect(mappedBitmapRect, bitmapRect)

        if (mappedBitmapRect.width() < cropRect.width() || mappedBitmapRect.height() < cropRect.height()) {
            val scale = max(
                cropRect.width() / mappedBitmapRect.width(),
                cropRect.height() / mappedBitmapRect.height(),
            )
            imageMatrix.postScale(scale, scale, cropRect.centerX(), cropRect.centerY())
            imageMatrix.mapRect(mappedBitmapRect, bitmapRect)
        }

        var dx = 0f
        var dy = 0f
        if (mappedBitmapRect.width() <= cropRect.width()) {
            dx = cropRect.centerX() - mappedBitmapRect.centerX()
        } else {
            if (mappedBitmapRect.left > cropRect.left) dx = cropRect.left - mappedBitmapRect.left
            if (mappedBitmapRect.right < cropRect.right) dx = cropRect.right - mappedBitmapRect.right
        }

        if (mappedBitmapRect.height() <= cropRect.height()) {
            dy = cropRect.centerY() - mappedBitmapRect.centerY()
        } else {
            if (mappedBitmapRect.top > cropRect.top) dy = cropRect.top - mappedBitmapRect.top
            if (mappedBitmapRect.bottom < cropRect.bottom) dy = cropRect.bottom - mappedBitmapRect.bottom
        }

        imageMatrix.postTranslate(dx, dy)
    }

    private fun drawOverlay(canvas: Canvas) {
        canvas.drawRect(0f, 0f, width.toFloat(), cropRect.top, overlayPaint)
        canvas.drawRect(0f, cropRect.bottom, width.toFloat(), height.toFloat(), overlayPaint)
        canvas.drawRect(0f, cropRect.top, cropRect.left, cropRect.bottom, overlayPaint)
        canvas.drawRect(cropRect.right, cropRect.top, width.toFloat(), cropRect.bottom, overlayPaint)
        canvas.drawRect(cropRect, framePaint)
    }

    private fun drawGuides(canvas: Canvas) {
        val thirdWidth = cropRect.width() / 3f
        val thirdHeight = cropRect.height() / 3f
        canvas.drawLine(cropRect.left + thirdWidth, cropRect.top, cropRect.left + thirdWidth, cropRect.bottom, guidePaint)
        canvas.drawLine(cropRect.left + thirdWidth * 2f, cropRect.top, cropRect.left + thirdWidth * 2f, cropRect.bottom, guidePaint)
        canvas.drawLine(cropRect.left, cropRect.top + thirdHeight, cropRect.right, cropRect.top + thirdHeight, guidePaint)
        canvas.drawLine(cropRect.left, cropRect.top + thirdHeight * 2f, cropRect.right, cropRect.top + thirdHeight * 2f, guidePaint)
    }

    private fun resizeForOutput(source: Bitmap): Bitmap {
        if (cropType == 1) {
            return Bitmap.createScaledBitmap(source, 400, 400, true)
        }

        val maxEdge = max(source.width, source.height)
        if (maxEdge <= 800) return source
        val scale = 800f / maxEdge
        val outputWidth = max(1, (source.width * scale).toInt())
        val outputHeight = max(1, (source.height * scale).toInt())
        return Bitmap.createScaledBitmap(source, outputWidth, outputHeight, true)
    }

    private inner class ScaleListener : ScaleGestureDetector.SimpleOnScaleGestureListener() {
        override fun onScale(detector: ScaleGestureDetector): Boolean {
            val scale = detector.scaleFactor.coerceIn(0.85f, 1.18f)
            imageMatrix.postScale(scale, scale, detector.focusX, detector.focusY)
            constrainImage()
            invalidate()
            return true
        }
    }

    companion object {
        private const val TAG = "PicaCropImageView"

        private fun decodeSampledBitmap(context: Context, uri: Uri): Bitmap? {
            val options = BitmapFactory.Options().apply { inJustDecodeBounds = true }
            context.contentResolver.openInputStream(uri)?.use { stream ->
                BitmapFactory.decodeStream(stream, null, options)
            }
            options.inSampleSize = calculateInSampleSize(options, 2048, 2048)
            options.inJustDecodeBounds = false
            return context.contentResolver.openInputStream(uri)?.use { stream ->
                BitmapFactory.decodeStream(stream, null, options)
            }
        }

        private fun calculateInSampleSize(
            options: BitmapFactory.Options,
            reqWidth: Int,
            reqHeight: Int,
        ): Int {
            val height = options.outHeight
            val width = options.outWidth
            var inSampleSize = 1
            if (height > reqHeight || width > reqWidth) {
                var halfHeight = height / 2
                var halfWidth = width / 2
                while (halfHeight / inSampleSize >= reqHeight && halfWidth / inSampleSize >= reqWidth) {
                    inSampleSize *= 2
                }
            }
            return inSampleSize
        }
    }
}
