package com.picacomic.fregata.adapters;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.holders.AnnouncementViewHolder;
import com.picacomic.fregata.objects.AnnouncementObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementListRecyclerViewAdapter extends RecyclerView.Adapter<AnnouncementViewHolder> {
    public static final String TAG = "AnnouncementListRecyclerViewAdapter";
    private final Context context;
    private ArrayList<AnnouncementObject> ja;
    private k jb;
    private final LayoutInflater mLayoutInflater;

    public AnnouncementListRecyclerViewAdapter(Context context, ArrayList<AnnouncementObject> arrayList, k kVar) {
        this.context = context;
        this.mLayoutInflater = LayoutInflater.from(context);
        this.jb = kVar;
        this.ja = arrayList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public AnnouncementViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new AnnouncementViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_announcement_cell, viewGroup, false), this.jb);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(AnnouncementViewHolder announcementViewHolder, int i) {
        if (this.ja == null || this.ja.size() <= i) {
            return;
        }
        announcementViewHolder.a(this.ja.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.ja == null) {
            return 0;
        }
        return this.ja.size();
    }
}
