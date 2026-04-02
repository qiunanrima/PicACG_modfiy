package com.picacomic.fregata.utils.views;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class BannerWebview_ViewBinding implements Unbinder {
    private BannerWebview target;

    @UiThread
    public BannerWebview_ViewBinding(BannerWebview bannerWebview) {
        this(bannerWebview, bannerWebview);
    }

    @UiThread
    public BannerWebview_ViewBinding(BannerWebview bannerWebview, View view) {
        this.target = bannerWebview;
        bannerWebview.relativeLayout_container = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.relativeLayout_banner_container, "field 'relativeLayout_container'", RelativeLayout.class);
        bannerWebview.webView_banner = (WebView) Utils.findRequiredViewAsType(view, R.id.webview_banner, "field 'webView_banner'", WebView.class);
        bannerWebview.imageButton_close = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_banner_close, "field 'imageButton_close'", ImageButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BannerWebview bannerWebview = this.target;
        if (bannerWebview == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        bannerWebview.relativeLayout_container = null;
        bannerWebview.webView_banner = null;
        bannerWebview.imageButton_close = null;
    }
}
