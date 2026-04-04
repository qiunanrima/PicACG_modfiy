package com.picacomic.fregata.holders;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import com.picacomic.fregata.databinding.ItemEpisodeRecyclerViewCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.objects.ComicEpisodeObject;

/* JADX INFO: loaded from: classes.dex */
public class EpisodeViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "EpisodeViewHolder";

    ItemEpisodeRecyclerViewCellBinding binding;
    public Button button_epsiodeTitle;
    Context context;
    k je;

    public EpisodeViewHolder(Context context, View view, k kVar) {
        super(view);
        this.binding = ItemEpisodeRecyclerViewCellBinding.bind(view);
        this.button_epsiodeTitle = this.binding.buttonEpisodeRecyclerViewCellEpisodeTitle;
        this.context = context;
        this.je = kVar;
        this.button_epsiodeTitle.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.je.C(getAdapterPosition());
        Log.d(TAG, "onClick--> position = " + getAdapterPosition());
    }

    public void a(ComicEpisodeObject comicEpisodeObject) {
        this.button_epsiodeTitle.setText(comicEpisodeObject.getTitle());
    }
}
