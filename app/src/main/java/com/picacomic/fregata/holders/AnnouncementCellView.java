package com.picacomic.fregata.holders;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.view.LayoutInflater;
import com.picacomic.fregata.databinding.ItemAnnouncementCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.objects.AnnouncementObject;
import com.picacomic.fregata.utils.g;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementCellView extends LinearLayout {

    ItemAnnouncementCellBinding binding;
    ImageView imageView_image;
    TextView textView_description;
    TextView textView_title;

    public AnnouncementCellView(Context context) {
        super(context);
    }

    public AnnouncementCellView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AnnouncementCellView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public AnnouncementCellView(Context context, AnnouncementObject announcementObject, View.OnClickListener onClickListener) {
        super(context);
        this.binding = ItemAnnouncementCellBinding.inflate(LayoutInflater.from(context), this, true);
        this.imageView_image = this.binding.imageViewAnnouncementCellImage;
        this.textView_description = this.binding.textViewAnnouncementCellDescription;
        this.textView_title = this.binding.textViewAnnouncementCellTitle;
        Picasso.with(context).load(g.b(announcementObject.getThumb())).into(this.imageView_image);
        this.textView_title.setText(announcementObject.getTitle() + "");
        this.textView_description.setText(announcementObject.getContent() + "");
        setOnClickListener(onClickListener);
    }
}
