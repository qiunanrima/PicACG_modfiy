package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import com.google.android.material.tabs.TabLayout;
import androidx.viewpager.widget.ViewPager;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.views.ExpCircleView;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: classes.dex */
public class ProfileFragment_ViewBinding implements Unbinder {
    private ProfileFragment qY;

    @UiThread
    public ProfileFragment_ViewBinding(ProfileFragment profileFragment, View view) {
        this.qY = profileFragment;
        profileFragment.tabLayout = (TabLayout) Utils.findRequiredViewAsType(view, R.id.tabs, "field 'tabLayout'", TabLayout.class);
        profileFragment.expCircleView = (ExpCircleView) Utils.findRequiredViewAsType(view, R.id.expCircleView_profile, "field 'expCircleView'", ExpCircleView.class);
        profileFragment.imageView_avatarBlur = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_profile_avatar_blur, "field 'imageView_avatarBlur'", ImageView.class);
        profileFragment.imageView_verified = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_profile_verified, "field 'imageView_verified'", ImageView.class);
        profileFragment.imageView_character = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_profile_character, "field 'imageView_character'", ImageView.class);
        profileFragment.imageView_avatar = (CircleImageView) Utils.findRequiredViewAsType(view, R.id.imageView_profile_avatar, "field 'imageView_avatar'", CircleImageView.class);
        profileFragment.textView_level = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_level, "field 'textView_level'", TextView.class);
        profileFragment.textView_name = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_name, "field 'textView_name'", TextView.class);
        profileFragment.textView_honor = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_honor, "field 'textView_honor'", TextView.class);
        profileFragment.textView_slogan = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_slogan, "field 'textView_slogan'", TextView.class);
        profileFragment.textView_punchIn = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_punch_in, "field 'textView_punchIn'", TextView.class);
        profileFragment.button_edit = (Button) Utils.findRequiredViewAsType(view, R.id.button_profile_edit, "field 'button_edit'", Button.class);
        profileFragment.viewPager_tags = (ViewPager) Utils.findRequiredViewAsType(view, R.id.viewPager_profile, "field 'viewPager_tags'", ViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ProfileFragment profileFragment = this.qY;
        if (profileFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.qY = null;
        profileFragment.tabLayout = null;
        profileFragment.expCircleView = null;
        profileFragment.imageView_avatarBlur = null;
        profileFragment.imageView_verified = null;
        profileFragment.imageView_character = null;
        profileFragment.imageView_avatar = null;
        profileFragment.textView_level = null;
        profileFragment.textView_name = null;
        profileFragment.textView_honor = null;
        profileFragment.textView_slogan = null;
        profileFragment.textView_punchIn = null;
        profileFragment.button_edit = null;
        profileFragment.viewPager_tags = null;
    }
}
