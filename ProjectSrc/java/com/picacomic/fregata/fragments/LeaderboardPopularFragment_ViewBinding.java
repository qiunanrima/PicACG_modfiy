package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class LeaderboardPopularFragment_ViewBinding implements Unbinder {
    private LeaderboardPopularFragment pO;

    @UiThread
    public LeaderboardPopularFragment_ViewBinding(LeaderboardPopularFragment leaderboardPopularFragment, View view) {
        this.pO = leaderboardPopularFragment;
        leaderboardPopularFragment.radioGroup_time = (RadioGroup) Utils.findRequiredViewAsType(view, R.id.radioGroup_leaderboard_popular_time, "field 'radioGroup_time'", RadioGroup.class);
        leaderboardPopularFragment.radioButton_24hr = (RadioButton) Utils.findRequiredViewAsType(view, R.id.radioButton_leaderboard_popular_24hr, "field 'radioButton_24hr'", RadioButton.class);
        leaderboardPopularFragment.radioButton_7days = (RadioButton) Utils.findRequiredViewAsType(view, R.id.radioButton_leaderboard_popular_7days, "field 'radioButton_7days'", RadioButton.class);
        leaderboardPopularFragment.radioButton_30days = (RadioButton) Utils.findRequiredViewAsType(view, R.id.radioButton_leaderboard_popular_30days, "field 'radioButton_30days'", RadioButton.class);
        leaderboardPopularFragment.recyclerView_popular = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_leaderboard_popular, "field 'recyclerView_popular'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LeaderboardPopularFragment leaderboardPopularFragment = this.pO;
        if (leaderboardPopularFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.pO = null;
        leaderboardPopularFragment.radioGroup_time = null;
        leaderboardPopularFragment.radioButton_24hr = null;
        leaderboardPopularFragment.radioButton_7days = null;
        leaderboardPopularFragment.radioButton_30days = null;
        leaderboardPopularFragment.recyclerView_popular = null;
    }
}
