package com.picacomic.fregata.holders;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class NewsCellView extends LinearLayout {

    @BindView(R.id.imageView_news_cell_image)
    ImageView imageView_image;

    @BindView(R.id.textView_news_cell_description)
    TextView textView_description;

    @BindView(R.id.textView_news_cell_title)
    TextView textView_title;

    public NewsCellView(Context context) {
        super(context);
    }

    public NewsCellView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NewsCellView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
