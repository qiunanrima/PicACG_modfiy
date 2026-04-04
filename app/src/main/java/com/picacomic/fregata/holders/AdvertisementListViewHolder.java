package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.webkit.WebView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.g;

/* JADX INFO: loaded from: classes.dex */
public class AdvertisementListViewHolder extends RecyclerView.ViewHolder {

    @BindView(R.id.webView_ads_list)
    public WebView webView_ads;

    public AdvertisementListViewHolder(View view) {
        super(view);
        ButterKnife.bind(this, view);
        g.k(this.webView_ads);
    }
}
