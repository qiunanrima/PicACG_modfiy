package com.picacomic.fregata.adapters;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.holders.EpisodeViewHolder;
import com.picacomic.fregata.objects.ComicEpisodeObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class EpisodeRecyclerViewAdapter extends RecyclerView.Adapter<EpisodeViewHolder> {
    public static final String TAG = "EpisodeRecyclerViewAdapter";
    private final Context context;
    private ArrayList<ComicEpisodeObject> ja;
    private k jb;
    private final LayoutInflater mLayoutInflater;

    public EpisodeRecyclerViewAdapter(Context context, ArrayList<ComicEpisodeObject> arrayList, k kVar) {
        this.context = context;
        this.mLayoutInflater = LayoutInflater.from(context);
        this.ja = arrayList;
        this.jb = kVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public EpisodeViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 4) {
            return new EpisodeViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_episode_recycler_view_cell_last_view, viewGroup, false), this.jb);
        }
        switch (i) {
            case 0:
                return new EpisodeViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_episode_recycler_view_cell, viewGroup, false), this.jb);
            case 1:
                return new EpisodeViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_episode_recycler_view_cell_downloading, viewGroup, false), this.jb);
            case 2:
                return new EpisodeViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_episode_recycler_view_cell_downloaded, viewGroup, false), this.jb);
            default:
                return new EpisodeViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_episode_recycler_view_cell, viewGroup, false), this.jb);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(EpisodeViewHolder episodeViewHolder, int i) {
        if (this.ja == null || this.ja.size() <= i) {
            return;
        }
        episodeViewHolder.a(this.ja.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.ja == null) {
            return 0;
        }
        return this.ja.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.ja == null || this.ja.size() <= 0) {
            return 0;
        }
        if (this.ja.get(i).isSelected()) {
            return 4;
        }
        return this.ja.get(i).getStatus();
    }
}
