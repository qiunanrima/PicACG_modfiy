package com.picacomic.fregata.holders;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.view.LayoutInflater;
import com.picacomic.fregata.databinding.LayoutComicCollectionViewCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.objects.ComicListObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ComicCollectionView extends LinearLayout {

    LayoutComicCollectionViewCellBinding binding;
    ImageView imageView_icon;
    LinearLayout linearLayout_content;
    TextView textView_count;
    TextView textView_title;

    public ComicCollectionView(Context context) {
        super(context);
        init();
    }

    public ComicCollectionView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public ComicCollectionView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public ComicCollectionView(Context context, ArrayList<ComicListObject> arrayList, int i, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        super(context);
        init();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        int size = arrayList.size() > 4 ? 4 : arrayList.size();
        if (onClickListener2 != null) {
            this.textView_count.setOnClickListener(onClickListener2);
        } else {
            this.textView_count.setVisibility(8);
        }
        for (int i2 = 0; i2 < size; i2++) {
            SingleImageTextView singleImageTextView = new SingleImageTextView(context, arrayList.get(i2), onClickListener);
            singleImageTextView.setLayoutParams(layoutParams);
            singleImageTextView.setTag(Integer.valueOf(i2 + i));
            this.linearLayout_content.addView(singleImageTextView);
        }
    }

    private void init() {
        this.binding = LayoutComicCollectionViewCellBinding.inflate(LayoutInflater.from(getContext()), this, true);
        this.imageView_icon = this.binding.imageViewComicCollectionViewIcon;
        this.linearLayout_content = this.binding.linearLayoutComicCollectionViewContent;
        this.textView_count = this.binding.textViewComicCollectionViewCount;
        this.textView_title = this.binding.textViewComicCollectionViewTitle;
    }

    public TextView getTextView_title() {
        return this.textView_title;
    }

    public void setTextView_title(TextView textView) {
        this.textView_title = textView;
    }

    public TextView getTextView_count() {
        return this.textView_count;
    }

    public void setTextView_count(TextView textView) {
        this.textView_count = textView;
    }
}
