package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class GameFragment_ViewBinding implements Unbinder {
    private GameFragment pm;

    @UiThread
    public GameFragment_ViewBinding(GameFragment gameFragment, View view) {
        this.pm = gameFragment;
        gameFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        gameFragment.recyclerView_games = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_game, "field 'recyclerView_games'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GameFragment gameFragment = this.pm;
        if (gameFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.pm = null;
        gameFragment.toolbar = null;
        gameFragment.recyclerView_games = null;
    }
}
