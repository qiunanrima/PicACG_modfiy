package com.picacomic.fregata.holders;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemComicPageListViewCellBinding;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ComicPageSimpleViewHolder {

    ItemComicPageListViewCellBinding binding;
    public RelativeLayout frameLayout_container;
    public ImageView imageView_image;
    public TextView textView_page;

    public ComicPageSimpleViewHolder(View view) {
        this.binding = ItemComicPageListViewCellBinding.bind(view);
        this.frameLayout_container = view.findViewById(R.id.frameLayout_comic_page_recycler_view_cell_container);
        this.imageView_image = view.findViewById(R.id.imageView_comic_page_recycler_view_cell_image);
        this.textView_page = view.findViewById(R.id.textView_comic_page_recycler_view_cell_page);
    }
}
