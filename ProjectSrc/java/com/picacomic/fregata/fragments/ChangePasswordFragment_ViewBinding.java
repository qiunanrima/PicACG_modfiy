package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ChangePasswordFragment_ViewBinding implements Unbinder {
    private ChangePasswordFragment kP;

    @UiThread
    public ChangePasswordFragment_ViewBinding(ChangePasswordFragment changePasswordFragment, View view) {
        this.kP = changePasswordFragment;
        changePasswordFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        changePasswordFragment.editText_password = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_change_password_new, "field 'editText_password'", EditText.class);
        changePasswordFragment.editText_passwordConfirm = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_change_password_new_confirm, "field 'editText_passwordConfirm'", EditText.class);
        changePasswordFragment.checkBox_showPassword = (CheckBox) Utils.findRequiredViewAsType(view, R.id.checkBox_change_password_show_password, "field 'checkBox_showPassword'", CheckBox.class);
        changePasswordFragment.button_changePassword = (Button) Utils.findRequiredViewAsType(view, R.id.button_change_password, "field 'button_changePassword'", Button.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChangePasswordFragment changePasswordFragment = this.kP;
        if (changePasswordFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.kP = null;
        changePasswordFragment.toolbar = null;
        changePasswordFragment.editText_password = null;
        changePasswordFragment.editText_passwordConfirm = null;
        changePasswordFragment.checkBox_showPassword = null;
        changePasswordFragment.button_changePassword = null;
    }
}
