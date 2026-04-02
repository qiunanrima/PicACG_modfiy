package com.picacomic.fregata.holders;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.objects.GameListObject;
import com.picacomic.fregata.utils.g;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class GameListViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "GameListViewHolder";
    Context context;

    @BindView(R.id.imageView_game_recycler_view_cell_adult)
    public ImageView imageView_adult;

    @BindView(R.id.imageView_game_recycler_view_cell_banner)
    public ImageView imageView_banner;

    @BindView(R.id.imageView_game_recycler_view_cell_pica_recommend)
    public ImageView imageView_recommend;
    public k je;

    @BindView(R.id.textView_game_recycler_view_cell_publisher)
    public TextView textView_publisher;

    @BindView(R.id.textView_game_recycler_view_cell_title)
    public TextView textView_title;

    public GameListViewHolder(Context context, View view, k kVar) {
        super(view);
        ButterKnife.bind(this, view);
        this.context = context;
        this.je = kVar;
        view.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.je.C(getAdapterPosition());
        Log.d(TAG, "onClick--> position = " + getAdapterPosition());
    }

    public void a(GameListObject gameListObject) {
        Picasso.with(this.context).load(g.b(gameListObject.getIcon())).placeholder(R.drawable.placeholder_avatar_2).into(this.imageView_banner);
        this.textView_title.setText(gameListObject.getTitle() + "");
        this.textView_publisher.setText(gameListObject.getPublisher() + "");
        if (gameListObject.isAdult()) {
            this.imageView_adult.setVisibility(0);
        } else {
            this.imageView_adult.setVisibility(8);
        }
        if (gameListObject.isSuggest()) {
            this.imageView_recommend.setVisibility(0);
        } else {
            this.imageView_recommend.setVisibility(8);
        }
    }
}
