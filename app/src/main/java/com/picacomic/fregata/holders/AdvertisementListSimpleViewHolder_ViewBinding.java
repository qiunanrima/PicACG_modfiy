package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.webkit.WebView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class AdvertisementListSimpleViewHolder_ViewBinding implements Unbinder {
    private AdvertisementListSimpleViewHolder sc;

    @UiThread
    public AdvertisementListSimpleViewHolder_ViewBinding(AdvertisementListSimpleViewHolder advertisementListSimpleViewHolder, View view) {
        this.sc = advertisementListSimpleViewHolder;
        advertisementListSimpleViewHolder.webView_ads = (WebView) Utils.findRequiredViewAsType(view, R.id.webView_ads_list, "field 'webView_ads'", WebView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AdvertisementListSimpleViewHolder advertisementListSimpleViewHolder = this.sc;
        if (advertisementListSimpleViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sc = null;
        advertisementListSimpleViewHolder.webView_ads = null;
    }
}
