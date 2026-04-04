package com.picacomic.fregata.holders;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;
import com.picacomic.fregata.objects.ComicListObject;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.ComicThumbImageView;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class SingleImageTextView extends LinearLayout {

    @BindView(R.id.imageView_single_image_text_view_image)
    ComicThumbImageView imageView_image;
    int targetHeight;
    int targetWidth;

    @BindView(R.id.textView_single_image_text_view_title)
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
        inflate(context, R.layout.item_single_image_text_view, this);
        ButterKnife.bind(this);
        Picasso.with(context).load(g.b(comicListObject.getThumb())).resize(this.targetWidth, this.targetHeight).centerCrop().into(this.imageView_image);
        this.textView_title.setText(comicListObject.getTitle() + "");
        setOnClickListener(onClickListener);
    }
}
