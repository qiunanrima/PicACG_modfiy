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
public class OneTimeIdUpdateFragment_ViewBinding implements Unbinder {
    private OneTimeIdUpdateFragment qq;

    @UiThread
    public OneTimeIdUpdateFragment_ViewBinding(OneTimeIdUpdateFragment oneTimeIdUpdateFragment, View view) {
        this.qq = oneTimeIdUpdateFragment;
        oneTimeIdUpdateFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        oneTimeIdUpdateFragment.editText_username = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_id_username, "field 'editText_username'", EditText.class);
        oneTimeIdUpdateFragment.editText_email = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_id_email, "field 'editText_email'", EditText.class);
        oneTimeIdUpdateFragment.button_update = (Button) Utils.findRequiredViewAsType(view, R.id.button_id_update, "field 'button_update'", Button.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        OneTimeIdUpdateFragment oneTimeIdUpdateFragment = this.qq;
        if (oneTimeIdUpdateFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.qq = null;
        oneTimeIdUpdateFragment.toolbar = null;
        oneTimeIdUpdateFragment.editText_username = null;
        oneTimeIdUpdateFragment.editText_email = null;
        oneTimeIdUpdateFragment.button_update = null;
    }
}
