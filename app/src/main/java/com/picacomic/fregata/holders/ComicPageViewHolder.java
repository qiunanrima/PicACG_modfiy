package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemComicPageRecyclerViewCellBinding;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ComicPageViewHolder extends RecyclerView.ViewHolder {

    ItemComicPageRecyclerViewCellBinding binding;
    public FrameLayout frameLayout_container;
    public ImageView imageView_image;
    public TextView textView_page;

    public ComicPageViewHolder(View view) {
        super(view);
        this.binding = ItemComicPageRecyclerViewCellBinding.bind(view);
        this.frameLayout_container = this.binding.frameLayoutComicPageRecyclerViewCellContainer;
        this.imageView_image = this.binding.imageViewComicPageRecyclerViewCellImage;
        this.textView_page = this.binding.textViewComicPageRecyclerViewCellPage;
    }
}
