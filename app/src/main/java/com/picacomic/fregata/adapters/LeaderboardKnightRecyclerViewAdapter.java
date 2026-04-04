package com.picacomic.fregata.adapters;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.holders.LeaderboardKnightViewHolder;
import com.picacomic.fregata.objects.LeaderboardKnightObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class LeaderboardKnightRecyclerViewAdapter extends RecyclerView.Adapter<LeaderboardKnightViewHolder> {
    private final Context context;
    private ArrayList<LeaderboardKnightObject> ja;
    private k jb;
    private final LayoutInflater mLayoutInflater;

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            return 2;
        }
        return i == 2 ? 3 : 0;
    }

    public LeaderboardKnightRecyclerViewAdapter(Context context, ArrayList<LeaderboardKnightObject> arrayList, k kVar) {
        this.mLayoutInflater = LayoutInflater.from(context);
        this.context = context;
        this.ja = arrayList;
        this.jb = kVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public LeaderboardKnightViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 1:
                return new LeaderboardKnightViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_leaderboard_knight_1st_recycler_view_cell, viewGroup, false), this.jb);
            case 2:
                return new LeaderboardKnightViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_leaderboard_knight_2nd_recycler_view_cell, viewGroup, false), this.jb);
            case 3:
                return new LeaderboardKnightViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_leaderboard_knight_3rd_recycler_view_cell, viewGroup, false), this.jb);
            default:
                return new LeaderboardKnightViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_leaderboard_knight_order_recycler_view_cell, viewGroup, false), this.jb);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(LeaderboardKnightViewHolder leaderboardKnightViewHolder, int i) {
        if (this.ja == null || this.ja.size() <= i) {
            return;
        }
        leaderboardKnightViewHolder.a(this.ja.get(i), i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.ja == null) {
            return 0;
        }
        return this.ja.size();
    }
}
