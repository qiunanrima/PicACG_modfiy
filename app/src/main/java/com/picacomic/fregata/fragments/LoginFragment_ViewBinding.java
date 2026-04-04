package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class LoginFragment_ViewBinding implements Unbinder {
    private LoginFragment qi;

    @UiThread
    public LoginFragment_ViewBinding(LoginFragment loginFragment, View view) {
        this.qi = loginFragment;
        loginFragment.linearLayout_loginForm = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_login_fragment, "field 'linearLayout_loginForm'", LinearLayout.class);
        loginFragment.imageView_logo = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_login_pica_logo, "field 'imageView_logo'", ImageView.class);
        loginFragment.button_register = (Button) Utils.findRequiredViewAsType(view, R.id.button_login_register, "field 'button_register'", Button.class);
        loginFragment.button_login = (Button) Utils.findRequiredViewAsType(view, R.id.button_login_login_button, "field 'button_login'", Button.class);
        loginFragment.editText_email = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_login_email, "field 'editText_email'", EditText.class);
        loginFragment.editText_password = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_login_password, "field 'editText_password'", EditText.class);
        loginFragment.button_forgotPassword = (Button) Utils.findRequiredViewAsType(view, R.id.button_login_forget_password, "field 'button_forgotPassword'", Button.class);
        loginFragment.button_resendActivation = (Button) Utils.findRequiredViewAsType(view, R.id.button_login_resend_activation, "field 'button_resendActivation'", Button.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LoginFragment loginFragment = this.qi;
        if (loginFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.qi = null;
        loginFragment.linearLayout_loginForm = null;
        loginFragment.imageView_logo = null;
        loginFragment.button_register = null;
        loginFragment.button_login = null;
        loginFragment.editText_email = null;
        loginFragment.editText_password = null;
        loginFragment.button_forgotPassword = null;
        loginFragment.button_resendActivation = null;
    }
}
