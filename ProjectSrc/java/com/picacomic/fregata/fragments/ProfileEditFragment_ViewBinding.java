package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: classes.dex */
public class ProfileEditFragment_ViewBinding implements Unbinder {
    private ProfileEditFragment qQ;

    @UiThread
    public ProfileEditFragment_ViewBinding(ProfileEditFragment profileEditFragment, View view) {
        this.qQ = profileEditFragment;
        profileEditFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        profileEditFragment.textView_name = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_name, "field 'textView_name'", TextView.class);
        profileEditFragment.textView_email = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_email, "field 'textView_email'", TextView.class);
        profileEditFragment.textView_birth = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_profile_birth, "field 'textView_birth'", TextView.class);
        profileEditFragment.editText_slogan = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_profile_slogan, "field 'editText_slogan'", EditText.class);
        profileEditFragment.button_update = (Button) Utils.findRequiredViewAsType(view, R.id.button_profile_update, "field 'button_update'", Button.class);
        profileEditFragment.imageView_avatar = (CircleImageView) Utils.findRequiredViewAsType(view, R.id.imageView_profile_avatar, "field 'imageView_avatar'", CircleImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ProfileEditFragment profileEditFragment = this.qQ;
        if (profileEditFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.qQ = null;
        profileEditFragment.toolbar = null;
        profileEditFragment.textView_name = null;
        profileEditFragment.textView_email = null;
        profileEditFragment.textView_birth = null;
        profileEditFragment.editText_slogan = null;
        profileEditFragment.button_update = null;
        profileEditFragment.imageView_avatar = null;
    }
}
