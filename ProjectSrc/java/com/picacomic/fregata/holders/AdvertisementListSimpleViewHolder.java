package com.picacomic.fregata.holders;

import android.view.View;
import android.webkit.WebView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.g;

/* JADX INFO: loaded from: classes.dex */
public class AdvertisementListSimpleViewHolder {

    @BindView(R.id.webView_ads_list)
    public WebView webView_ads;

    public AdvertisementListSimpleViewHolder(View view) {
        ButterKnife.bind(this, view);
        g.k(this.webView_ads);
    }
}
