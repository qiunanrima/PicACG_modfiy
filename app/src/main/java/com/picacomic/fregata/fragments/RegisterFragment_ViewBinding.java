package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatButton;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class RegisterFragment_ViewBinding implements Unbinder {
    private RegisterFragment rv;

    @UiThread
    public RegisterFragment_ViewBinding(RegisterFragment registerFragment, View view) {
        this.rv = registerFragment;
        registerFragment.frameLayout_backgroundWhite = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.frameLayout_register_background_white, "field 'frameLayout_backgroundWhite'", FrameLayout.class);
        registerFragment.editText_username = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_register_username, "field 'editText_username'", EditText.class);
        registerFragment.editText_email = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_register_email, "field 'editText_email'", EditText.class);
        registerFragment.editText_password = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_register_password, "field 'editText_password'", EditText.class);
        registerFragment.editText_passwordConfirm = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_register_password_confirm, "field 'editText_passwordConfirm'", EditText.class);
        registerFragment.editText_question_1 = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_register_question_1, "field 'editText_question_1'", EditText.class);
        registerFragment.editText_question_2 = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_register_question_2, "field 'editText_question_2'", EditText.class);
        registerFragment.editText_question_3 = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_register_question_3, "field 'editText_question_3'", EditText.class);
        registerFragment.editText_answer_1 = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_register_answer_1, "field 'editText_answer_1'", EditText.class);
        registerFragment.editText_answer_2 = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_register_answer_2, "field 'editText_answer_2'", EditText.class);
        registerFragment.editText_answer_3 = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_register_answer_3, "field 'editText_answer_3'", EditText.class);
        registerFragment.textView_birthday = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_register_birthday, "field 'textView_birthday'", TextView.class);
        registerFragment.button_register = (Button) Utils.findRequiredViewAsType(view, R.id.button_register_register_button, "field 'button_register'", Button.class);
        registerFragment.buttons_gender = (AppCompatButton[]) Utils.arrayOf((AppCompatButton) Utils.findRequiredViewAsType(view, R.id.button_register_gender_m, "field 'buttons_gender'", AppCompatButton.class), (AppCompatButton) Utils.findRequiredViewAsType(view, R.id.button_register_gender_f, "field 'buttons_gender'", AppCompatButton.class), (AppCompatButton) Utils.findRequiredViewAsType(view, R.id.button_register_gender_bot, "field 'buttons_gender'", AppCompatButton.class));
        registerFragment.genders = view.getContext().getResources().getStringArray(R.array.register_genders);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RegisterFragment registerFragment = this.rv;
        if (registerFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.rv = null;
        registerFragment.frameLayout_backgroundWhite = null;
        registerFragment.editText_username = null;
        registerFragment.editText_email = null;
        registerFragment.editText_password = null;
        registerFragment.editText_passwordConfirm = null;
        registerFragment.editText_question_1 = null;
        registerFragment.editText_question_2 = null;
        registerFragment.editText_question_3 = null;
        registerFragment.editText_answer_1 = null;
        registerFragment.editText_answer_2 = null;
        registerFragment.editText_answer_3 = null;
        registerFragment.textView_birthday = null;
        registerFragment.button_register = null;
        registerFragment.buttons_gender = null;
    }
}
