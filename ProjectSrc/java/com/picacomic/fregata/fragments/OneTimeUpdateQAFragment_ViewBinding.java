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
public class OneTimeUpdateQAFragment_ViewBinding implements Unbinder {
    private OneTimeUpdateQAFragment qt;

    @UiThread
    public OneTimeUpdateQAFragment_ViewBinding(OneTimeUpdateQAFragment oneTimeUpdateQAFragment, View view) {
        this.qt = oneTimeUpdateQAFragment;
        oneTimeUpdateQAFragment.editText_question_1 = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_register_question_1, "field 'editText_question_1'", EditText.class);
        oneTimeUpdateQAFragment.editText_question_2 = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_register_question_2, "field 'editText_question_2'", EditText.class);
        oneTimeUpdateQAFragment.editText_question_3 = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_register_question_3, "field 'editText_question_3'", EditText.class);
        oneTimeUpdateQAFragment.editText_answer_1 = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_register_answer_1, "field 'editText_answer_1'", EditText.class);
        oneTimeUpdateQAFragment.editText_answer_2 = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_register_answer_2, "field 'editText_answer_2'", EditText.class);
        oneTimeUpdateQAFragment.editText_answer_3 = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_register_answer_3, "field 'editText_answer_3'", EditText.class);
        oneTimeUpdateQAFragment.button_update = (Button) Utils.findRequiredViewAsType(view, R.id.button_update, "field 'button_update'", Button.class);
        oneTimeUpdateQAFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        OneTimeUpdateQAFragment oneTimeUpdateQAFragment = this.qt;
        if (oneTimeUpdateQAFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.qt = null;
        oneTimeUpdateQAFragment.editText_question_1 = null;
        oneTimeUpdateQAFragment.editText_question_2 = null;
        oneTimeUpdateQAFragment.editText_question_3 = null;
        oneTimeUpdateQAFragment.editText_answer_1 = null;
        oneTimeUpdateQAFragment.editText_answer_2 = null;
        oneTimeUpdateQAFragment.editText_answer_3 = null;
        oneTimeUpdateQAFragment.button_update = null;
        oneTimeUpdateQAFragment.toolbar = null;
    }
}
