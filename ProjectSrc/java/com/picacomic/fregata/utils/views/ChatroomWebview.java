package com.picacomic.fregata.utils.views;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.a;
import com.picacomic.fregata.utils.g;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomWebview extends RelativeLayout {
    String defaultUrl;

    @BindView(R.id.imageButton_banner_close)
    ImageButton imageButton_close;

    @BindView(R.id.relativeLayout_banner_container)
    RelativeLayout relativeLayout_container;

    @BindView(R.id.webview_banner)
    WebView webView_banner;

    public ChatroomWebview(Context context) {
        super(context);
        init(context);
    }

    public ChatroomWebview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public ChatroomWebview(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        setMeasuredDimension(measuredWidth, measuredWidth / 3);
    }

    public void init(Context context) {
        inflate(context, R.layout.layout_banner_webview, this);
        ButterKnife.bind(this);
        this.defaultUrl = a.dT();
        g.k(this.webView_banner);
        this.webView_banner.loadUrl(this.defaultUrl);
        this.imageButton_close.setVisibility(8);
    }

    public void setBannerUrl(String str) {
        if (this.webView_banner == null || str == null) {
            return;
        }
        if (str.startsWith("http://") || str.startsWith("https://")) {
            this.webView_banner.loadUrl(str);
        }
    }

    public void hide() {
        if (this.relativeLayout_container != null) {
            this.relativeLayout_container.setVisibility(8);
            if (this.webView_banner != null) {
                this.webView_banner.stopLoading();
            }
        }
    }

    public void show() {
        if (this.relativeLayout_container != null) {
            this.relativeLayout_container.setVisibility(0);
            setBannerUrl(this.defaultUrl);
        }
    }

    public void show(String str) {
        if (this.relativeLayout_container != null) {
            this.relativeLayout_container.setVisibility(0);
            setBannerUrl(str);
        }
    }
}
