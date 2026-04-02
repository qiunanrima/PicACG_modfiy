package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ProfilePopupFragment_ViewBinding implements Unbinder {
    private ProfilePopupFragment rc;

    @UiThread
    public ProfilePopupFragment_ViewBinding(ProfilePopupFragment profilePopupFragment, View view) {
        this.rc = profilePopupFragment;
        profilePopupFragment.imageView_avatar = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_profile_popup_avatar, "field 'imageView_avatar'", ImageView.class);
        profilePopupFragment.imageView_character = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_profile_popup_character, "field 'imageView_character'", ImageView.class);
        profilePopupFragment.textView_levelTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_popup_level_title, "field 'textView_levelTitle'", TextView.class);
        profilePopupFragment.textView_level = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_popup_level, "field 'textView_level'", TextView.class);
        profilePopupFragment.textView_name = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_popup_name, "field 'textView_name'", TextView.class);
        profilePopupFragment.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_popup_title, "field 'textView_title'", TextView.class);
        profilePopupFragment.textView_slogan = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_popup_slogan, "field 'textView_slogan'", TextView.class);
        profilePopupFragment.textView_adminFunction = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_popup_function, "field 'textView_adminFunction'", TextView.class);
        profilePopupFragment.textView_block = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_popup_block, "field 'textView_block'", TextView.class);
        profilePopupFragment.textView_woo = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_popup_woo, "field 'textView_woo'", TextView.class);
        profilePopupFragment.textView_removeComment = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_popup_remove_comment, "field 'textView_removeComment'", TextView.class);
        profilePopupFragment.linearLayout_adminFunction = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_profile_popup_admin_function, "field 'linearLayout_adminFunction'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ProfilePopupFragment profilePopupFragment = this.rc;
        if (profilePopupFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.rc = null;
        profilePopupFragment.imageView_avatar = null;
        profilePopupFragment.imageView_character = null;
        profilePopupFragment.textView_levelTitle = null;
        profilePopupFragment.textView_level = null;
        profilePopupFragment.textView_name = null;
        profilePopupFragment.textView_title = null;
        profilePopupFragment.textView_slogan = null;
        profilePopupFragment.textView_adminFunction = null;
        profilePopupFragment.textView_block = null;
        profilePopupFragment.textView_woo = null;
        profilePopupFragment.textView_removeComment = null;
        profilePopupFragment.linearLayout_adminFunction = null;
    }
}
