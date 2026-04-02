package com.picacomic.fregata.adapters;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.holders.LeaderboardPopularViewHolder;
import com.picacomic.fregata.objects.LeaderboardComicListObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class LeaderboardPopularRecyclerViewAdapter extends RecyclerView.Adapter<LeaderboardPopularViewHolder> {
    public static final String TAG = "LeaderboardPopularRecyclerViewAdapter";
    private final Context context;
    String jM = "H24";
    private ArrayList<LeaderboardComicListObject> ja;
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

    public LeaderboardPopularRecyclerViewAdapter(Context context, ArrayList<LeaderboardComicListObject> arrayList, k kVar) {
        this.context = context;
        this.mLayoutInflater = LayoutInflater.from(context);
        this.ja = arrayList;
        this.jb = kVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public LeaderboardPopularViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 1:
                return new LeaderboardPopularViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_leaderboard_popular_1st_recycler_view_cell, viewGroup, false), this.jb);
            case 2:
                return new LeaderboardPopularViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_leaderboard_popular_2nd_recycler_view_cell, viewGroup, false), this.jb);
            case 3:
                return new LeaderboardPopularViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_leaderboard_popular_3rd_recycler_view_cell, viewGroup, false), this.jb);
            default:
                return new LeaderboardPopularViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_leaderboard_popular_order_recycler_view_cell, viewGroup, false), this.jb);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(LeaderboardPopularViewHolder leaderboardPopularViewHolder, int i) {
        if (this.ja == null || this.ja.size() <= i) {
            return;
        }
        leaderboardPopularViewHolder.a(this.ja.get(i), i, this.jM);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.ja == null) {
            return 0;
        }
        return this.ja.size();
    }

    public void H(String str) {
        this.jM = str;
    }
}
