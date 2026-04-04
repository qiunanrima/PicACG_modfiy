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
import com.picacomic.fregata.objects.LeaderboardKnightObject;
import com.picacomic.fregata.utils.g;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class LeaderboardKnightViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "LeaderboardKnightViewHolder";
    Context context;

    @BindView(R.id.imageView_leaderboard_knight_order_recycler_view_cell_avatar)
    public ImageView imageView_avatar;

    @BindView(R.id.imageView_leaderboard_knight_order_recycler_view_cell_user_thumb_verified)
    public ImageView imageView_characterIcon;

    @BindView(R.id.imageView_leaderboard_knight_order_recycler_view_cell_order)
    public ImageView imageView_order;
    k je;

    @BindView(R.id.textView_leaderboard_knight_order_recycler_view_cell_comic)
    public TextView textView_comic;

    @BindView(R.id.textView_leaderboard_knight_order_recycler_view_cell_level)
    public TextView textView_level;

    @BindView(R.id.textView_leaderboard_knight_order_recycler_view_cell_name)
    public TextView textView_name;

    @BindView(R.id.textView_leaderboard_knight_order_recycler_view_cell_order)
    public TextView textView_order;

    @BindView(R.id.textView_leaderboard_knight_order_recycler_view_cell_title)
    public TextView textView_title;

    public LeaderboardKnightViewHolder(Context context, View view, k kVar) {
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

    public void a(LeaderboardKnightObject leaderboardKnightObject, int i) {
        this.textView_order.setText((i + 1) + "");
        this.textView_level.setText(leaderboardKnightObject.getLevel() + "");
        this.textView_name.setText(leaderboardKnightObject.getName() + "");
        this.textView_comic.setText(leaderboardKnightObject.getComicsUploaded() + "");
        if (leaderboardKnightObject.getCharacter() != null && !leaderboardKnightObject.getCharacter().equalsIgnoreCase("")) {
            Picasso.with(this.context).load(leaderboardKnightObject.getCharacter()).into(this.imageView_characterIcon);
            this.imageView_characterIcon.setVisibility(0);
        } else {
            this.imageView_characterIcon.setVisibility(8);
        }
        Picasso.with(this.context).load(g.b(leaderboardKnightObject.getAvatar())).placeholder(R.drawable.placeholder_avatar_2).into(this.imageView_avatar);
    }
}
