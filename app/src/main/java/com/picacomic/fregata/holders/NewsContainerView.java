package com.picacomic.fregata.holders;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.view.LayoutInflater;
import com.picacomic.fregata.databinding.LayoutNewsCellBinding;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class NewsContainerView extends LinearLayout {

    LayoutNewsCellBinding binding;
    ImageView imageView_icon;
    ImageView imageView_viewMore;
    LinearLayout linearLayout_content;
    TextView textView_count;
    TextView textView_title;

    public NewsContainerView(Context context) {
        super(context);
        init();
    }

    public NewsContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public NewsContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private void init() {
        this.binding = LayoutNewsCellBinding.inflate(LayoutInflater.from(getContext()), this, true);
        this.imageView_icon = this.binding.imageViewNewsIcon;
        this.imageView_viewMore = this.binding.imageViewNewsViewMore;
        this.linearLayout_content = this.binding.linearLayoutNewsContent;
        this.textView_count = this.binding.textViewNewsViewCount;
        this.textView_title = this.binding.textViewNewsTitle;
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
