package com.picacomic.fregata.holders;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ComicPageSimpleViewHolder {

    @BindView(R.id.frameLayout_comic_page_recycler_view_cell_container)
    public RelativeLayout frameLayout_container;

    @BindView(R.id.imageView_comic_page_recycler_view_cell_image)
    public ImageView imageView_image;

    @BindView(R.id.textView_comic_page_recycler_view_cell_page)
    public TextView textView_page;

    public ComicPageSimpleViewHolder(View view) {
        ButterKnife.bind(this, view);
    }
}
