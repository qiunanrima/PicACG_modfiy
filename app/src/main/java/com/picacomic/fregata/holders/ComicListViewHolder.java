package com.picacomic.fregata.holders;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemComicListRecyclerViewCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.b;
import com.picacomic.fregata.objects.ComicListObject;
import com.picacomic.fregata.utils.PicassoTransformations;
import com.picacomic.fregata.utils.g;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class ComicListViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "ComicListViewHolder";
    Context context;

    ItemComicListRecyclerViewCellBinding binding;
    public FrameLayout frameLayout_bl;
    public FrameLayout frameLayout_forbidden;
    public FrameLayout frameLayout_nonChinese;
    public ImageView imageView_image;
    public LinearLayout linearLayout_container;
    public LinearLayout linearLayout_content;
    public LinearLayout linearLayout_filter;
    b sD;
    int targetHeight;
    int targetWidth;
    public TextView textView_author;
    public TextView textView_bl;
    public TextView textView_category;
    public TextView textView_forbidden;
    public TextView textView_likeCount;
    public TextView textView_name;
    public TextView textView_nonChinese;

    public ComicListViewHolder(Context context, View view, b bVar) {
        super(view);
        this.binding = ItemComicListRecyclerViewCellBinding.bind(view);
        this.frameLayout_bl = this.binding.frameLayoutComicListRecyclerViewCellFilterBl;
        this.frameLayout_forbidden = this.binding.frameLayoutComicListRecyclerViewCellFilterForbidden;
        this.frameLayout_nonChinese = this.binding.frameLayoutComicListRecyclerViewCellFilterNonChinese;
        this.imageView_image = this.binding.imageViewComicListRecyclerViewCellImage;
        this.linearLayout_container = this.binding.linearLayoutComicListRecyclerViewCellContainer;
        this.linearLayout_content = this.binding.linearLayoutComicListRecyclerViewCellContent;
        this.linearLayout_filter = this.binding.linearLayoutComicListRecyclerViewCellFilter;
        this.textView_author = this.binding.textViewComicListRecyclerViewCellAuthor;
        this.textView_bl = this.binding.textViewComicListRecyclerViewCellFilterBl;
        this.textView_category = this.binding.textViewComicListRecyclerViewCellCategory;
        this.textView_forbidden = this.binding.textViewComicListRecyclerViewCellFilterForbidden;
        this.textView_likeCount = this.binding.textViewComicListRecyclerViewCellLikeCount;
        this.textView_name = this.binding.textViewComicListRecyclerViewCellName;
        this.textView_nonChinese = this.binding.textViewComicListRecyclerViewCellFilterNonChinese;

        this.targetWidth = 80;
        this.targetHeight = 120;
        this.context = context;
        this.sD = bVar;
        this.imageView_image.setOnClickListener(this);
        view.setOnClickListener(this);
        try {
            this.targetWidth = (int) context.getResources().getDimension(R.dimen.size_image_thumbnail);
            this.targetHeight = (int) context.getResources().getDimension(R.dimen.size_image_thumbnail_height);
        } catch (Exception unused) {
            this.targetWidth = 80;
            this.targetHeight = 120;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.imageView_comic_list_recycler_view_cell_image) {
            this.sD.I(getAdapterPosition());
        } else {
            this.sD.C(getAdapterPosition());
        }
        Log.d(TAG, "onClick--> position = " + getAdapterPosition());
    }

    public void a(ComicListObject comicListObject, String[] strArr) {
        boolean[] zArr = new boolean[8];
        for (int i = 0; i < 8; i++) {
            zArr[i] = false;
        }
        if (comicListObject.getCategories() != null) {
            for (int i2 = 0; i2 < comicListObject.getCategories().size(); i2++) {
                int i3 = 0;
                while (true) {
                    if (i3 >= 8) {
                        break;
                    }
                    if (!zArr[i3] && comicListObject.getCategories().get(i2).equalsIgnoreCase(strArr[i3])) {
                        zArr[i3] = true;
                        break;
                    }
                    i3++;
                }
            }
        }
        Picasso.with(this.context).load(g.b(comicListObject.getThumb())).placeholder(R.drawable.placeholder_avatar_2).resize(this.targetWidth, this.targetHeight).centerCrop().transform(PicassoTransformations.CARD_COVER).into(this.imageView_image);
        g.a(this.context, this.textView_name, comicListObject.getTitle(), comicListObject.getPagesCount(), comicListObject.isFinished());
        String strConcat = "";
        for (int i4 = 0; i4 < comicListObject.getCategories().size(); i4++) {
            strConcat = strConcat.concat(comicListObject.getCategories().get(i4) + " ");
        }
        this.textView_author.setText(comicListObject.getAuthor() + "");
        this.textView_category.setText(strConcat + "");
        this.textView_likeCount.setText(comicListObject.getLikesCount() + "");
        this.linearLayout_filter.setVisibility(0);
        if (zArr[0]) {
            this.frameLayout_forbidden.setVisibility(0);
        } else {
            this.frameLayout_forbidden.setVisibility(8);
        }
        if (zArr[1]) {
            this.frameLayout_nonChinese.setVisibility(0);
        } else {
            this.frameLayout_nonChinese.setVisibility(8);
        }
        if (zArr[2]) {
            this.frameLayout_bl.setVisibility(0);
        } else {
            this.frameLayout_bl.setVisibility(8);
        }
    }
}
