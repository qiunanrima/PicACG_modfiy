package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class LeaderboardPopularViewHolder_ViewBinding implements Unbinder {
    private LeaderboardPopularViewHolder sS;

    @UiThread
    public LeaderboardPopularViewHolder_ViewBinding(LeaderboardPopularViewHolder leaderboardPopularViewHolder, View view) {
        this.sS = leaderboardPopularViewHolder;
        leaderboardPopularViewHolder.textView_order = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_leaderboard_popular_order_recycler_view_cell_order, "field 'textView_order'", TextView.class);
        leaderboardPopularViewHolder.textView_name = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_leaderboard_popular_order_recycler_view_cell_name, "field 'textView_name'", TextView.class);
        leaderboardPopularViewHolder.textView_author = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_leaderboard_popular_order_recycler_view_cell_author, "field 'textView_author'", TextView.class);
        leaderboardPopularViewHolder.textView_category = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_leaderboard_popular_order_recycler_view_cell_category, "field 'textView_category'", TextView.class);
        leaderboardPopularViewHolder.textView_viewCount = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_leaderboard_popular_order_recycler_view_cell_view_count, "field 'textView_viewCount'", TextView.class);
        leaderboardPopularViewHolder.textView_viewCountTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_leaderboard_popular_order_recycler_view_cell_view_count_title, "field 'textView_viewCountTitle'", TextView.class);
        leaderboardPopularViewHolder.imageView_order = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_leaderboard_popular_order_recycler_view_cell_order, "field 'imageView_order'", ImageView.class);
        leaderboardPopularViewHolder.imageView_image = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_leaderboard_popular_order_recycler_view_cell_image, "field 'imageView_image'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LeaderboardPopularViewHolder leaderboardPopularViewHolder = this.sS;
        if (leaderboardPopularViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sS = null;
        leaderboardPopularViewHolder.textView_order = null;
        leaderboardPopularViewHolder.textView_name = null;
        leaderboardPopularViewHolder.textView_author = null;
        leaderboardPopularViewHolder.textView_category = null;
        leaderboardPopularViewHolder.textView_viewCount = null;
        leaderboardPopularViewHolder.textView_viewCountTitle = null;
        leaderboardPopularViewHolder.imageView_order = null;
        leaderboardPopularViewHolder.imageView_image = null;
    }
}
