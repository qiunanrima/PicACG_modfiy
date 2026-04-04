package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ChangePinFragment_ViewBinding implements Unbinder {
    private ChangePinFragment kR;

    @UiThread
    public ChangePinFragment_ViewBinding(ChangePinFragment changePinFragment, View view) {
        this.kR = changePinFragment;
        changePinFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        changePinFragment.editText_pin = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_change_pin_new, "field 'editText_pin'", EditText.class);
        changePinFragment.editText_pinConfirm = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_change_pin_new_confirm, "field 'editText_pinConfirm'", EditText.class);
        changePinFragment.button_change = (Button) Utils.findRequiredViewAsType(view, R.id.button_change_pin, "field 'button_change'", Button.class);
        changePinFragment.button_cancel = (Button) Utils.findRequiredViewAsType(view, R.id.button_change_pin_cancel, "field 'button_cancel'", Button.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChangePinFragment changePinFragment = this.kR;
        if (changePinFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.kR = null;
        changePinFragment.toolbar = null;
        changePinFragment.editText_pin = null;
        changePinFragment.editText_pinConfirm = null;
        changePinFragment.button_change = null;
        changePinFragment.button_cancel = null;
    }
}
