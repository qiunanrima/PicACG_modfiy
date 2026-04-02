package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.LinearLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ProfileComicFragment_ViewBinding implements Unbinder {
    private ProfileComicFragment qN;

    @UiThread
    public ProfileComicFragment_ViewBinding(ProfileComicFragment profileComicFragment, View view) {
        this.qN = profileComicFragment;
        profileComicFragment.linearLayout_downloaded = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_profile_comic_downloaded, "field 'linearLayout_downloaded'", LinearLayout.class);
        profileComicFragment.linearLayout_recentView = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_profile_comic_recent_view, "field 'linearLayout_recentView'", LinearLayout.class);
        profileComicFragment.linearLayout_bookmarked = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_profile_comic_bookmarked, "field 'linearLayout_bookmarked'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ProfileComicFragment profileComicFragment = this.qN;
        if (profileComicFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.qN = null;
        profileComicFragment.linearLayout_downloaded = null;
        profileComicFragment.linearLayout_recentView = null;
        profileComicFragment.linearLayout_bookmarked = null;
    }
}
