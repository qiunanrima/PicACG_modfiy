package com.picacomic.fregata.utils.views;

import android.content.Context;
import android.os.CountDownTimer;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.view.LayoutInflater;
import com.picacomic.fregata.databinding.LayoutBannerWebviewBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.g;

/* JADX INFO: loaded from: classes.dex */
public class BannerWebview extends RelativeLayout {
    CountDownTimer countDownTimer;
    String defaultUrl;

    LayoutBannerWebviewBinding binding;
    ImageButton imageButton_close;
    RelativeLayout relativeLayout_container;
    WebView webView_banner;

    public BannerWebview(Context context) {
        super(context);
        this.defaultUrl = g.ag(e.al(context));
        init(context);
    }

    public BannerWebview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.defaultUrl = g.ag(e.al(context));
        init(context);
    }

    public BannerWebview(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.defaultUrl = g.ag(e.al(context));
        init(context);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        setMeasuredDimension(measuredWidth, measuredWidth / 3);
    }

    public void init(Context context) {
        this.binding = LayoutBannerWebviewBinding.inflate(LayoutInflater.from(context), this, true);
        this.imageButton_close = this.binding.imageButtonBannerClose;
        this.relativeLayout_container = this.binding.relativeLayoutBannerContainer;
        this.webView_banner = this.binding.webviewBanner;
        g.k(this.webView_banner);
        this.webView_banner.loadUrl(this.defaultUrl);
        this.imageButton_close.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.utils.views.BannerWebview.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BannerWebview.this.relativeLayout_container.setVisibility(8);
            }
        });
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
