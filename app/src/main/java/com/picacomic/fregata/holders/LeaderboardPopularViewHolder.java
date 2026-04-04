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
import com.picacomic.fregata.objects.LeaderboardComicListObject;
import com.picacomic.fregata.utils.g;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class LeaderboardPopularViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "LeaderboardPopularViewHolder";
    Context context;

    @BindView(R.id.imageView_leaderboard_popular_order_recycler_view_cell_image)
    public ImageView imageView_image;

    @BindView(R.id.imageView_leaderboard_popular_order_recycler_view_cell_order)
    public ImageView imageView_order;
    k je;

    @BindView(R.id.textView_leaderboard_popular_order_recycler_view_cell_author)
    public TextView textView_author;

    @BindView(R.id.textView_leaderboard_popular_order_recycler_view_cell_category)
    public TextView textView_category;

    @BindView(R.id.textView_leaderboard_popular_order_recycler_view_cell_name)
    public TextView textView_name;

    @BindView(R.id.textView_leaderboard_popular_order_recycler_view_cell_order)
    public TextView textView_order;

    @BindView(R.id.textView_leaderboard_popular_order_recycler_view_cell_view_count)
    public TextView textView_viewCount;

    @BindView(R.id.textView_leaderboard_popular_order_recycler_view_cell_view_count_title)
    public TextView textView_viewCountTitle;

    public LeaderboardPopularViewHolder(Context context, View view, k kVar) {
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

    public void a(LeaderboardComicListObject leaderboardComicListObject, int i, String str) {
        this.textView_order.setText((i + 1) + "");
        Picasso.with(this.context).load(g.b(leaderboardComicListObject.getThumb())).into(this.imageView_image);
        this.textView_name.setText(leaderboardComicListObject.getTitle() + "");
        this.textView_author.setText(leaderboardComicListObject.getAuthor() + "");
        this.textView_category.setText(leaderboardComicListObject.getCategories().toString());
        if (str != null && str.equals("D7")) {
            this.textView_viewCountTitle.setText(R.string.leaderboard_view_count_title_7days);
        } else if (str != null && str.equals("D30")) {
            this.textView_viewCountTitle.setText(R.string.leaderboard_view_count_title_30days);
        } else {
            this.textView_viewCountTitle.setText(R.string.leaderboard_view_count_title_24hr);
        }
        this.textView_viewCount.setText(leaderboardComicListObject.getLeaderboardCount() + "");
    }
}
