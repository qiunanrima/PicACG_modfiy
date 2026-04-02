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
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementContainerView extends LinearLayout {
    Context context;

    @BindView(R.id.imageView_announcement_icon)
    ImageView imageView_icon;

    @BindView(R.id.linearLayout_announcement_content)
    LinearLayout linearLayout_content;
    LinearLayout.LayoutParams sf;
    View.OnClickListener sg;
    int sh;

    @BindView(R.id.textView_announcement_view_count)
    TextView textView_count;

    @BindView(R.id.textView_announcement_title)
    TextView textView_title;

    public AnnouncementContainerView(Context context) {
        super(context);
        this.sh = 0;
        inflate(context, R.layout.layout_announcement_cell, this);
        ButterKnife.bind(this);
    }

    public AnnouncementContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.sh = 0;
        inflate(context, R.layout.layout_announcement_cell, this);
        ButterKnife.bind(this);
    }

    public AnnouncementContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.sh = 0;
        inflate(context, R.layout.layout_announcement_cell, this);
        ButterKnife.bind(this);
    }

    public AnnouncementContainerView(Context context, ArrayList<AnnouncementObject> arrayList, int i, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        super(context);
        this.sh = 0;
        inflate(context, R.layout.layout_announcement_cell, this);
        ButterKnife.bind(this);
        this.context = context;
        this.sg = onClickListener;
        this.sh = i;
        this.sf = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        if (onClickListener2 != null) {
            this.textView_count.setOnClickListener(onClickListener2);
        }
        if (arrayList != null) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                AnnouncementCellView announcementCellView = new AnnouncementCellView(context, arrayList.get(i2), onClickListener);
                announcementCellView.setLayoutParams(this.sf);
                announcementCellView.setTag(Integer.valueOf(i2 + i));
                this.linearLayout_content.addView(announcementCellView);
            }
        }
    }

    public void b(ArrayList<AnnouncementObject> arrayList) {
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size() && this.linearLayout_content.getChildCount() < 3; i++) {
                int i2 = this.sh + i;
                AnnouncementCellView announcementCellView = new AnnouncementCellView(this.context, arrayList.get(i), this.sg);
                announcementCellView.setLayoutParams(this.sf);
                announcementCellView.setTag(Integer.valueOf(i2));
                this.linearLayout_content.addView(announcementCellView);
            }
        }
    }

    public void dL() {
        if (this.linearLayout_content != null) {
            this.linearLayout_content.removeAllViews();
        }
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
