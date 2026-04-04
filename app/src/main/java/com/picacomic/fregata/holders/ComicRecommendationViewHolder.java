package com.picacomic.fregata.holders;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemComicRecommendationViewBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.b;
import com.picacomic.fregata.objects.ComicListObject;
import com.picacomic.fregata.utils.g;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class ComicRecommendationViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "ComicRecommendationViewHolder";
    Context context;

    ItemComicRecommendationViewBinding binding;
    public ImageView imageView;
    b jq;
    ComicListObject nn;

    public TextView textView;

    public ComicRecommendationViewHolder(Context context, View view, b bVar) {
        super(view);
        this.binding = ItemComicRecommendationViewBinding.bind(view);
        this.imageView = this.binding.imageViewRecommendation;
        this.textView = this.binding.textViewRecommendation;
        this.context = context;
        view.setOnClickListener(this);
        this.jq = bVar;
    }

    public void b(ComicListObject comicListObject) {
        this.nn = comicListObject;
        if (this.nn != null) {
            Picasso.with(this.context).load(g.b(this.nn.getThumb())).placeholder(R.drawable.placeholder_avatar_2).into(this.imageView);
            g.a(this.context, this.textView, this.nn.getTitle(), this.nn.getPagesCount(), this.nn.isFinished());
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.jq != null) {
            this.jq.C(getAdapterPosition());
        }
    }
}
