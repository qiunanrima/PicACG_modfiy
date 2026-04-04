package com.picacomic.fregata.holders;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class NewsContainerView extends LinearLayout {

    @BindView(R.id.imageView_news_icon)
    ImageView imageView_icon;

    @BindView(R.id.imageView_news_view_more)
    ImageView imageView_viewMore;

    @BindView(R.id.linearLayout_news_content)
    LinearLayout linearLayout_content;

    @BindView(R.id.textView_news_view_count)
    TextView textView_count;

    @BindView(R.id.textView_news_title)
    TextView textView_title;

    public NewsContainerView(Context context) {
        super(context);
        inflate(context, R.layout.layout_news_cell, this);
        ButterKnife.bind(this);
    }

    public NewsContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        inflate(context, R.layout.layout_news_cell, this);
        ButterKnife.bind(this);
    }

    public NewsContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        inflate(context, R.layout.layout_news_cell, this);
        ButterKnife.bind(this);
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
