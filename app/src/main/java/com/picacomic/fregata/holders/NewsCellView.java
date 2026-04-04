package com.picacomic.fregata.holders;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.view.LayoutInflater;
import com.picacomic.fregata.databinding.ItemNewsCellBinding;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class NewsCellView extends LinearLayout {

    ItemNewsCellBinding binding;
    ImageView imageView_image;
    TextView textView_description;
    TextView textView_title;

    public NewsCellView(Context context) {
        super(context);
        init();
    }

    public NewsCellView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public NewsCellView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private void init() {
        this.binding = ItemNewsCellBinding.inflate(LayoutInflater.from(getContext()), this, true);
        this.imageView_image = this.binding.imageViewNewsCellImage;
        this.textView_description = this.binding.textViewNewsCellDescription;
        this.textView_title = this.binding.textViewNewsCellTitle;
    }
}
