package com.picacomic.fregata.adapters;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.picacomic.fregata.R;
import com.picacomic.fregata.holders.ComicRecommendationViewHolder;
import com.picacomic.fregata.objects.ComicListObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ComicRecommendationRecyclerViewAdapter extends RecyclerView.Adapter<ComicRecommendationViewHolder> {
    public static final String TAG = "ComicRecommendationRecyclerViewAdapter";
    private final Context context;
    private ArrayList<ComicListObject> ja;
    private com.picacomic.fregata.a_pkg.b jq;
    private final LayoutInflater mLayoutInflater;
    int targetWidth = 80;
    int targetHeight = 120;

    public ComicRecommendationRecyclerViewAdapter(Context context, ArrayList<ComicListObject> arrayList, com.picacomic.fregata.a_pkg.b bVar) {
        this.context = context;
        this.mLayoutInflater = LayoutInflater.from(context);
        this.ja = arrayList;
        this.jq = bVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public ComicRecommendationViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ComicRecommendationViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_comic_recommendation_view, viewGroup, false), this.jq);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(ComicRecommendationViewHolder comicRecommendationViewHolder, int i) {
        if (this.ja == null || this.ja.size() <= i) {
            return;
        }
        comicRecommendationViewHolder.b(this.ja.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.ja != null) {
            return this.ja.size();
        }
        return 0;
    }
}
