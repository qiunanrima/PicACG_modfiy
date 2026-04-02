package com.picacomic.fregata.holders;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;
import com.picacomic.fregata.objects.AnnouncementObject;
import com.picacomic.fregata.utils.g;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementCellView extends LinearLayout {

    @BindView(R.id.imageView_announcement_cell_image)
    ImageView imageView_image;

    @BindView(R.id.textView_announcement_cell_description)
    TextView textView_description;

    @BindView(R.id.textView_announcement_cell_title)
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
        inflate(context, R.layout.item_announcement_cell, this);
        ButterKnife.bind(this);
        Picasso.with(context).load(g.b(announcementObject.getThumb())).into(this.imageView_image);
        this.textView_title.setText(announcementObject.getTitle() + "");
        this.textView_description.setText(announcementObject.getContent() + "");
        setOnClickListener(onClickListener);
    }
}
