package com.picacomic.fregata.holders;

import android.view.View;
import android.webkit.WebView;
import com.picacomic.fregata.databinding.ItemAdvertisementListCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.g;

/* JADX INFO: loaded from: classes.dex */
public class AdvertisementListSimpleViewHolder {

    ItemAdvertisementListCellBinding binding;
    public WebView webView_ads;

    public AdvertisementListSimpleViewHolder(View view) {
        this.binding = ItemAdvertisementListCellBinding.bind(view);
        this.webView_ads = this.binding.webViewAdsList;
        g.k(this.webView_ads);
    }
}
