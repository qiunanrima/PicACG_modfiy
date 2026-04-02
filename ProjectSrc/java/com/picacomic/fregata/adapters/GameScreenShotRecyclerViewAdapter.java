package com.picacomic.fregata.adapters;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.holders.GameScreenShotViewHolder;
import com.picacomic.fregata.objects.ThumbnailObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class GameScreenShotRecyclerViewAdapter extends RecyclerView.Adapter<GameScreenShotViewHolder> {
    private final Context context;
    ArrayList<ThumbnailObject> ja;
    private k jb;
    private final LayoutInflater mLayoutInflater;

    public GameScreenShotRecyclerViewAdapter(Context context, ArrayList<ThumbnailObject> arrayList, k kVar) {
        this.context = context;
        this.mLayoutInflater = LayoutInflater.from(context);
        this.ja = arrayList;
        this.jb = kVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public GameScreenShotViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new GameScreenShotViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_game_detail_screenshot_recycler_view_cell, viewGroup, false), this.jb);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(GameScreenShotViewHolder gameScreenShotViewHolder, int i) {
        if (this.ja == null || this.ja.size() <= i) {
            return;
        }
        gameScreenShotViewHolder.a(this.ja.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.ja == null) {
            return 0;
        }
        return this.ja.size();
    }
}
