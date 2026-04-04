package com.picacomic.fregata.adapters;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.holders.ApkVersionListViewHolder;
import com.picacomic.fregata.objects.LatestApplicationObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ApkVersionListRecyclerViewAdapter extends RecyclerView.Adapter<ApkVersionListViewHolder> {
    public static final String TAG = "ApkVersionListRecyclerViewAdapter";
    private final Context context;
    private ArrayList<LatestApplicationObject> ja;
    private k jb;
    private final LayoutInflater mLayoutInflater;

    public ApkVersionListRecyclerViewAdapter(Context context, ArrayList<LatestApplicationObject> arrayList, k kVar) {
        this.context = context;
        this.mLayoutInflater = LayoutInflater.from(context);
        this.jb = kVar;
        this.ja = arrayList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ApkVersionListViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ApkVersionListViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_apk_version_list_recycler_view_cell, viewGroup, false), this.jb);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(ApkVersionListViewHolder apkVersionListViewHolder, int i) {
        if (this.ja == null || this.ja.size() <= i) {
            return;
        }
        apkVersionListViewHolder.a(this.ja.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.ja == null) {
            return 0;
        }
        return this.ja.size();
    }
}
