package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class GameScreenShotViewHolder_ViewBinding implements Unbinder {
    private GameScreenShotViewHolder sQ;

    @UiThread
    public GameScreenShotViewHolder_ViewBinding(GameScreenShotViewHolder gameScreenShotViewHolder, View view) {
        this.sQ = gameScreenShotViewHolder;
        gameScreenShotViewHolder.imageView_screenShot = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_game_detail_screenshot, "field 'imageView_screenShot'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GameScreenShotViewHolder gameScreenShotViewHolder = this.sQ;
        if (gameScreenShotViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sQ = null;
        gameScreenShotViewHolder.imageView_screenShot = null;
    }
}
