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
public class GameListViewHolder_ViewBinding implements Unbinder {
    private GameListViewHolder sP;

    @UiThread
    public GameListViewHolder_ViewBinding(GameListViewHolder gameListViewHolder, View view) {
        this.sP = gameListViewHolder;
        gameListViewHolder.imageView_banner = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_game_recycler_view_cell_banner, "field 'imageView_banner'", ImageView.class);
        gameListViewHolder.imageView_adult = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_game_recycler_view_cell_adult, "field 'imageView_adult'", ImageView.class);
        gameListViewHolder.imageView_recommend = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_game_recycler_view_cell_pica_recommend, "field 'imageView_recommend'", ImageView.class);
        gameListViewHolder.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_game_recycler_view_cell_title, "field 'textView_title'", TextView.class);
        gameListViewHolder.textView_publisher = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_game_recycler_view_cell_publisher, "field 'textView_publisher'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GameListViewHolder gameListViewHolder = this.sP;
        if (gameListViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sP = null;
        gameListViewHolder.imageView_banner = null;
        gameListViewHolder.imageView_adult = null;
        gameListViewHolder.imageView_recommend = null;
        gameListViewHolder.textView_title = null;
        gameListViewHolder.textView_publisher = null;
    }
}
