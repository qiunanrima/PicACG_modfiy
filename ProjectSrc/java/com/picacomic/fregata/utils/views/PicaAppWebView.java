package com.picacomic.fregata.utils.views;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.picacomic.fregata.a_pkg.j;

/* JADX INFO: loaded from: classes.dex */
public class PicaAppWebView extends WebView {
    Context context;
    j picaAppInterface;

    public PicaAppWebView(Context context) {
        super(context);
        this.context = context;
    }

    public PicaAppWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.context = context;
    }

    public PicaAppWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.context = context;
    }

    public void init(j jVar) {
        setWebChromeClient(new WebChromeClient());
        setWebViewClient(new WebViewClient());
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(false);
        settings.setBuiltInZoomControls(false);
        settings.setSupportMultipleWindows(true);
        addJavascriptInterface(this, "PicaApp");
        this.picaAppInterface = jVar;
    }

    @JavascriptInterface
    public void fullScreen() {
        this.picaAppInterface.fullScreen();
    }

    @JavascriptInterface
    public void rotation() {
        this.picaAppInterface.rotation();
    }

    @JavascriptInterface
    public void backButton() {
        this.picaAppInterface.backButton();
    }
}
