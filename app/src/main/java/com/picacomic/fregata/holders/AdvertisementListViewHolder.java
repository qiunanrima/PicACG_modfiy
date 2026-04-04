package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.webkit.WebView;
import com.picacomic.fregata.databinding.ItemAdvertisementListCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.g;

/* JADX INFO: loaded from: classes.dex */
public class AdvertisementListViewHolder extends RecyclerView.ViewHolder {

    ItemAdvertisementListCellBinding binding;
    public WebView webView_ads;

    public AdvertisementListViewHolder(View view) {
        super(view);
        this.binding = ItemAdvertisementListCellBinding.bind(view);
        this.webView_ads = this.binding.webViewAdsList;
        g.k(this.webView_ads);
    }
}
