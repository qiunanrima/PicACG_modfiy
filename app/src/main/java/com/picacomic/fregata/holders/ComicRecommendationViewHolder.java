package com.picacomic.fregata.holders;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.b;
import com.picacomic.fregata.objects.ComicListObject;
import com.picacomic.fregata.utils.g;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class ComicRecommendationViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "ComicRecommendationViewHolder";
    Context context;

    @BindView(R.id.imageView_recommendation)
    ImageView imageView;
    b jq;
    ComicListObject nn;

    @BindView(R.id.textView_recommendation)
    TextView textView;

    public ComicRecommendationViewHolder(Context context, View view, b bVar) {
        super(view);
        ButterKnife.bind(this, view);
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
