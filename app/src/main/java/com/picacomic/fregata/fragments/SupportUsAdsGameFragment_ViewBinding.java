package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class SupportUsAdsGameFragment_ViewBinding implements Unbinder {
    private SupportUsAdsGameFragment rN;

    @UiThread
    public SupportUsAdsGameFragment_ViewBinding(SupportUsAdsGameFragment supportUsAdsGameFragment, View view) {
        this.rN = supportUsAdsGameFragment;
        supportUsAdsGameFragment.imageView_game = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_support_us_game, "field 'imageView_game'", ImageView.class);
        supportUsAdsGameFragment.webView_ads = (WebView) Utils.findRequiredViewAsType(view, R.id.webView_support_us_ads, "field 'webView_ads'", WebView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SupportUsAdsGameFragment supportUsAdsGameFragment = this.rN;
        if (supportUsAdsGameFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.rN = null;
        supportUsAdsGameFragment.imageView_game = null;
        supportUsAdsGameFragment.webView_ads = null;
    }
}
