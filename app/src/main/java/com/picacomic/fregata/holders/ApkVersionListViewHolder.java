package com.picacomic.fregata.holders;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemApkVersionListRecyclerViewCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.objects.LatestApplicationObject;
import com.picacomic.fregata.utils.g;

/* JADX INFO: loaded from: classes.dex */
public class ApkVersionListViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "ApkVersionListViewHolder";
    Context context;
    k je;

    ItemApkVersionListRecyclerViewCellBinding binding;
    public TextView textView_content;
    public TextView textView_timestamp;
    public TextView textView_version;

    public ApkVersionListViewHolder(Context context, View view, k kVar) {
        super(view);
        this.context = context;
        this.binding = ItemApkVersionListRecyclerViewCellBinding.bind(view);
        this.textView_content = this.binding.textViewApkVersionListRecyclerViewCellContent;
        this.textView_timestamp = this.binding.textViewApkVersionListRecyclerViewCellTimestamp;
        this.textView_version = this.binding.textViewApkVersionListRecyclerViewCellVersion;
        this.je = kVar;
        view.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.je.C(getAdapterPosition());
        Log.d(TAG, "onClick--> position = " + getAdapterPosition());
    }

    public void a(LatestApplicationObject latestApplicationObject) {
        this.textView_version.setText(latestApplicationObject.getVersion() + "");
        this.textView_content.setText(latestApplicationObject.getUpdateContent() + "");
        this.textView_timestamp.setText(g.B(this.context, latestApplicationObject.getCreatedAt()));
    }
}
