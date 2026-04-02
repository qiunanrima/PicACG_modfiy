package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.Button;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class EpisodeViewHolder_ViewBinding implements Unbinder {
    private EpisodeViewHolder sO;

    @UiThread
    public EpisodeViewHolder_ViewBinding(EpisodeViewHolder episodeViewHolder, View view) {
        this.sO = episodeViewHolder;
        episodeViewHolder.button_epsiodeTitle = (Button) Utils.findRequiredViewAsType(view, R.id.button_episode_recycler_view_cell_episode_title, "field 'button_epsiodeTitle'", Button.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        EpisodeViewHolder episodeViewHolder = this.sO;
        if (episodeViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sO = null;
        episodeViewHolder.button_epsiodeTitle = null;
    }
}
