package com.picacomic.fregata.utils.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import com.picacomic.fregata.a_pkg.a;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: classes.dex */
public class ExpCircleView extends CircleImageView {
    private static final int DEFAULT_ANGLE = 0;
    private static final int DEFAULT_BORDER_COLOR = -16777216;
    private static final int DEFAULT_BORDER_WIDTH = 0;
    private static final int DEFAULT_FILL_COLOR = 0;
    private static final int DEFAULT_FILL_WIDTH = 2;
    private static final int[] ExpCircleViewArray = {
        com.picacomic.fregata.R.attr.exp_angle, com.picacomic.fregata.R.attr.exp_border_color, com.picacomic.fregata.R.attr.exp_border_color_dark,
        com.picacomic.fregata.R.attr.exp_border_width, com.picacomic.fregata.R.attr.exp_fill_color, com.picacomic.fregata.R.attr.exp_fill_color_dark,
        com.picacomic.fregata.R.attr.exp_fill_color_light, com.picacomic.fregata.R.attr.exp_fill_width
    };
    private int gridSize;
    private float mAngle;
    private int mBorderColor;
    private int mBorderColorDark;
    private Paint mBorderDarkPaint;
    private Paint mBorderPaint;
    private final RectF mBorderRect;
    private int mBorderWidth;
    private Paint mCalFillPaint;
    private Paint mDarkFillPaint;
    private int mFillColor;
    private int mFillColorDark;
    private int mFillColorLight;
    private Paint mFillPaint;
    private int mFillWidth;
    private Paint mLightFillPaint;
    private boolean mReady;
    private boolean mSetupPending;

    public ExpCircleView(Context context) {
        super(context);
        this.mBorderRect = new RectF();
        this.mBorderPaint = new Paint();
        this.mBorderDarkPaint = new Paint();
        this.mFillPaint = new Paint();
        this.mLightFillPaint = new Paint();
        this.mDarkFillPaint = new Paint();
        this.mCalFillPaint = new Paint();
        this.mBorderColor = -16777216;
        this.mBorderColorDark = -16777216;
        this.mBorderWidth = 0;
        this.mFillColor = 0;
        this.mFillColorLight = 0;
        this.mFillColorDark = 0;
        this.mFillWidth = 2;
        init();
    }

    public ExpCircleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mBorderRect = new RectF();
        this.mBorderPaint = new Paint();
        this.mBorderDarkPaint = new Paint();
        this.mFillPaint = new Paint();
        this.mLightFillPaint = new Paint();
        this.mDarkFillPaint = new Paint();
        this.mCalFillPaint = new Paint();
        this.mBorderColor = -16777216;
        this.mBorderColorDark = -16777216;
        this.mBorderWidth = 0;
        this.mFillColor = 0;
        this.mFillColorLight = 0;
        this.mFillColorDark = 0;
        this.mFillWidth = 2;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, ExpCircleViewArray, 0, 0);
        try {
            this.mBorderWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 0);
            this.mBorderColor = typedArrayObtainStyledAttributes.getColor(1, -16777216);
            this.mBorderColorDark = typedArrayObtainStyledAttributes.getColor(2, -16777216);
            this.mFillColor = typedArrayObtainStyledAttributes.getColor(4, 0);
            this.mFillColorLight = typedArrayObtainStyledAttributes.getColor(6, 0);
            this.mFillColorDark = typedArrayObtainStyledAttributes.getColor(5, 0);
            this.mFillWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, 2);
            this.mAngle = typedArrayObtainStyledAttributes.getFloat(0, 0.0f);
            this.gridSize = 1;
            typedArrayObtainStyledAttributes.recycle();
            init();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public ExpCircleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBorderRect = new RectF();
        this.mBorderPaint = new Paint();
        this.mBorderDarkPaint = new Paint();
        this.mFillPaint = new Paint();
        this.mLightFillPaint = new Paint();
        this.mDarkFillPaint = new Paint();
        this.mCalFillPaint = new Paint();
        this.mBorderColor = -16777216;
        this.mBorderColorDark = -16777216;
        this.mBorderWidth = 0;
        this.mFillColor = 0;
        this.mFillColorLight = 0;
        this.mFillColorDark = 0;
        this.mFillWidth = 2;
    }

    @Override // de.hdodenhof.circleimageview.CircleImageView, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, getWidth() / 2, this.mBorderDarkPaint);
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, (getWidth() / 2) - this.mBorderWidth, this.mBorderPaint);
        float f = this.mAngle;
        int i2 = this.gridSize;
        float f2 = 0.0f;
        while (true) {
            if (f2 >= f) {
                break;
            }
            this.mCalFillPaint.setStyle(Paint.Style.FILL);
            this.mCalFillPaint.setAntiAlias(true);
            this.mCalFillPaint.setColor(colorCal(this.mFillColorLight, this.mFillColorDark, f2, this.gridSize));
            canvas.drawArc(this.mBorderRect, (-90) + f2, 1.0f, true, this.mCalFillPaint);
            f2 += 1.0f;
        }
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, ((getWidth() / 2) - this.mFillWidth) - this.mBorderWidth, this.mBorderDarkPaint);
        int i3 = this.gridSize;
        float f3 = 360.0f / i3;
        for (i = 1; i <= i3; i++) {
            canvas.drawArc(this.mBorderRect, (i * f3) - 90, 1.0f, true, this.mBorderDarkPaint);
        }
    }

    public void init() {
        this.mReady = true;
        if (this.mSetupPending) {
            setup();
            this.mSetupPending = false;
        }
    }

    @Override // de.hdodenhof.circleimageview.CircleImageView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        setup();
    }

    public int colorCal(int i, int i2, float f, int i3) {
        int iRed = Color.red(i);
        int iGreen = Color.green(i);
        int iBlue = Color.blue(i);
        int iRed2 = Color.red(i2);
        int iGreen2 = Color.green(i2);
        int iBlue2 = Color.blue(i2);
        int iFloor = (int) Math.floor((f / 360.0f) * i3);
        return Color.rgb(iRed2 + Math.round(((iRed - iRed2) * iFloor) / i3), iGreen2 + Math.round(((iGreen - iGreen2) * iFloor) / i3), iBlue2 + Math.round(((iBlue - iBlue2) * iFloor) / i3));
    }

    public void setup() {
        if (!this.mReady) {
            this.mSetupPending = true;
            return;
        }
        if (getWidth() == 0 && getHeight() == 0) {
            return;
        }
        this.mBorderPaint.setStyle(Paint.Style.FILL);
        this.mBorderPaint.setAntiAlias(true);
        this.mBorderPaint.setColor(this.mBorderColor);
        this.mBorderDarkPaint.setStyle(Paint.Style.FILL);
        this.mBorderDarkPaint.setAntiAlias(true);
        this.mBorderDarkPaint.setColor(this.mBorderColorDark);
        this.mFillPaint.setStyle(Paint.Style.FILL);
        this.mFillPaint.setAntiAlias(true);
        this.mFillPaint.setColor(this.mFillColor);
        this.mLightFillPaint.setStyle(Paint.Style.FILL);
        this.mLightFillPaint.setAntiAlias(true);
        this.mLightFillPaint.setColor(this.mFillColorLight);
        this.mDarkFillPaint.setStyle(Paint.Style.FILL);
        this.mDarkFillPaint.setAntiAlias(true);
        this.mDarkFillPaint.setColor(this.mFillColorDark);
        this.mCalFillPaint.setStyle(Paint.Style.FILL);
        this.mCalFillPaint.setAntiAlias(true);
        this.mCalFillPaint.setColor(this.mFillColor);
        this.mBorderRect.set(this.mBorderWidth, this.mBorderWidth, getWidth() - this.mBorderWidth, getHeight() - this.mBorderWidth);
        invalidate();
    }

    public void setAngle(float f) {
        this.mAngle = f;
        invalidate();
    }

    public void setGridSize(int i) {
        this.gridSize = i;
    }
}
