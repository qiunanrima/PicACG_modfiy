package com.picacomic.fregata.adapters;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.h;
import com.picacomic.fregata.holders.NotificationViewHolder;
import com.picacomic.fregata.objects.NotificationObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class NotificationRecyclerViewAdapter extends RecyclerView.Adapter<NotificationViewHolder> {
    public static final String TAG = "NotificationRecyclerViewAdapter";
    Context context;
    h jN;
    ArrayList<NotificationObject> ja;
    LayoutInflater jc;

    public NotificationRecyclerViewAdapter(Context context, ArrayList<NotificationObject> arrayList, h hVar) {
        this.context = context;
        this.jc = LayoutInflater.from(this.context);
        this.ja = arrayList;
        this.jN = hVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public NotificationViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new NotificationViewHolder(this.context, this.jc.inflate(R.layout.item_notification_cell, viewGroup, false), this.jN);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(NotificationViewHolder notificationViewHolder, int i) {
        if (this.ja == null || this.ja.size() <= i) {
            return;
        }
        notificationViewHolder.a(this.ja.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.ja == null) {
            return 0;
        }
        return this.ja.size();
    }
}
