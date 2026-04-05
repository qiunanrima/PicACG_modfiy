package com.picacomic.fregata.holders;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.view.LayoutInflater;
import com.picacomic.fregata.databinding.ItemSingleImageTextViewBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.objects.ComicListObject;
import com.picacomic.fregata.utils.PicassoTransformations;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.ComicThumbImageView;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class SingleImageTextView extends LinearLayout {

    ItemSingleImageTextViewBinding binding;
    ComicThumbImageView imageView_image;
    int targetHeight;
    int targetWidth;
    TextView textView_title;

    public SingleImageTextView(Context context) {
        super(context);
        this.targetWidth = 80;
        this.targetHeight = 120;
    }

    public SingleImageTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.targetWidth = 80;
        this.targetHeight = 120;
    }

    public SingleImageTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.targetWidth = 80;
        this.targetHeight = 120;
    }

    public SingleImageTextView(Context context, ComicListObject comicListObject, View.OnClickListener onClickListener) {
        super(context);
        this.targetWidth = 80;
        this.targetHeight = 120;
        this.binding = ItemSingleImageTextViewBinding.inflate(LayoutInflater.from(context), this, true);
        this.imageView_image = this.binding.imageViewSingleImageTextViewImage;
        this.textView_title = this.binding.textViewSingleImageTextViewTitle;
        Picasso.with(context).load(g.b(comicListObject.getThumb())).resize(this.targetWidth, this.targetHeight).centerCrop().transform(PicassoTransformations.CARD_COVER).into(this.imageView_image);
        this.textView_title.setText(comicListObject.getTitle() + "");
        setOnClickListener(onClickListener);
    }
}
