package com.picacomic.fregata.holders;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.objects.AnnouncementObject;
import com.picacomic.fregata.utils.g;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "AnnouncementViewHolder";
    Context context;

    @BindView(R.id.imageView_announcement_cell_image)
    public ImageView imageView_image;
    k je;

    @BindView(R.id.textView_announcement_cell_description)
    public TextView textView_description;

    @BindView(R.id.textView_announcement_cell_title)
    public TextView textView_title;

    public AnnouncementViewHolder(Context context, View view, k kVar) {
        super(view);
        ButterKnife.bind(this, view);
        this.je = kVar;
        this.context = context;
        view.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.je.C(getAdapterPosition());
        Log.d(TAG, "onClick--> position = " + getAdapterPosition());
    }

    public void a(AnnouncementObject announcementObject) {
        if (announcementObject != null) {
            this.textView_title.setText(announcementObject.getTitle() + "");
            this.textView_description.setText(announcementObject.getContent() + "");
            Picasso.with(this.context).load(g.b(announcementObject.getThumb())).into(this.imageView_image);
        }
    }
}
