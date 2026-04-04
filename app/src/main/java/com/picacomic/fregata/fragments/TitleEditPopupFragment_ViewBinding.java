package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class TitleEditPopupFragment_ViewBinding implements Unbinder {
    private TitleEditPopupFragment sa;

    @UiThread
    public TitleEditPopupFragment_ViewBinding(TitleEditPopupFragment titleEditPopupFragment, View view) {
        this.sa = titleEditPopupFragment;
        titleEditPopupFragment.textView_userId = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_title_edit_popup_user_id, "field 'textView_userId'", TextView.class);
        titleEditPopupFragment.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_title_edit_popup_title, "field 'textView_title'", TextView.class);
        titleEditPopupFragment.editText_newTitle = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_title_edit_popup_new_title, "field 'editText_newTitle'", EditText.class);
        titleEditPopupFragment.button_cancel = (Button) Utils.findRequiredViewAsType(view, R.id.button_title_edit_popup_cancel, "field 'button_cancel'", Button.class);
        titleEditPopupFragment.button_confirm = (Button) Utils.findRequiredViewAsType(view, R.id.button_title_edit_popup_confirm, "field 'button_confirm'", Button.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        TitleEditPopupFragment titleEditPopupFragment = this.sa;
        if (titleEditPopupFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sa = null;
        titleEditPopupFragment.textView_userId = null;
        titleEditPopupFragment.textView_title = null;
        titleEditPopupFragment.editText_newTitle = null;
        titleEditPopupFragment.button_cancel = null;
        titleEditPopupFragment.button_confirm = null;
    }
}
