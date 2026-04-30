package com.picacomic.fregata.activities

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import androidx.activity.compose.setContent
import androidx.recyclerview.widget.ItemTouchHelper
import com.picacomic.fregata.R
import com.picacomic.fregata.b.d
import com.picacomic.fregata.compose.screens.ImageCropScreen
import com.picacomic.fregata.objects.requests.AvatarBody
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.PutAvatarResponse
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.f
import com.picacomic.fregata.utils.g
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

/* JADX INFO: loaded from: classes.dex */
class ImageCropActivity : BaseActivity(), com.picacomic.fregata.a_pkg.f {
    var ir: Call<GeneralResponse<PutAvatarResponse?>?>? = null
    var `is`: String? = null
    var type: Int = 0

    // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onCreate(bundle: Bundle?) {
        super.onCreate(bundle)
        val intent = getIntent()
        if (intent != null) {
            this.`is` = intent.getStringExtra("KEY_IMAGE_URI_STRING")
            this.type = intent.getIntExtra("KEY_ACTION_TYPE", 2)
            setContent {
                ImageCropScreen(
                    imageUriString = this.`is`,
                    cropType = this.type,
                    onCropped = { uri -> b(uri) },
                    onError = {
                        setResult(0)
                        finish()
                    },
                )
            }
        } else {
            setResult(0)
            finish()
        }
    }

    // com.picacomic.fregata.a_pkg.f
    override fun b(uri: Uri) {
        val intent = Intent()
        intent.putExtra("CROP_IMAGE_RESULT_URI", uri.toString())
        setResult(-1, intent)
        when (this.type) {
            1 -> c(uri)
            2 -> {
                this.`is` = null
                finish()
            }

            else -> {
                this.`is` = null
                finish()
            }
        }
    }

    fun c(uri: Uri?) {
        C(getResources().getString(R.string.loading_register))
        f.aA("Show Progress")
        val dVar = d(this)
        try {
            this.ir = dVar.dO().a(
                e.z(this),
                AvatarBody(
                    g.f(
                        g.c(
                            this,
                            uri,
                            ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION
                        )
                    )
                )
            )
            this.ir!!.enqueue(object : Callback<GeneralResponse<PutAvatarResponse?>?> {
                // from class: com.picacomic.fregata.activities.ImageCropActivity.1
                // retrofit2.Callback
                override fun onResponse(
                    call: Call<GeneralResponse<PutAvatarResponse?>?>,
                    response: Response<GeneralResponse<PutAvatarResponse?>?>
                ) {
                    if (response.code() == 200) {
                        if (response.body() != null && response.body()!!.data != null && response.body()!!.data!!.getAvatar() != null) {
                            this@ImageCropActivity.`is` = null
                            this@ImageCropActivity.finish()
                        }
                    } else {
                        try {
                            com.picacomic.fregata.b.c(
                                this@ImageCropActivity,
                                response.code(),
                                response.errorBody()!!.string()
                            ).dN()
                        } catch (e: Exception) {
                            e.printStackTrace()
                        }
                    }
                    f.aA("dismiss progress")
                    this@ImageCropActivity.bC()
                }

                // retrofit2.Callback
                override fun onFailure(
                    call: Call<GeneralResponse<PutAvatarResponse?>?>,
                    th: Throwable
                ) {
                    th.printStackTrace()
                    f.aA("dismiss progress")
                    this@ImageCropActivity.bC()
                }
            })
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onDestroy() {
        if (this.ir != null) {
            this.ir!!.cancel()
        }
        super.onDestroy()
    }

    companion object {
        const val TAG: String = "ImageCropActivity"
    }
}
