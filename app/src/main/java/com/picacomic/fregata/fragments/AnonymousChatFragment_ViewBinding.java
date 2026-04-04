package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class AnonymousChatFragment_ViewBinding implements Unbinder {
    private AnonymousChatFragment kl;

    @UiThread
    public AnonymousChatFragment_ViewBinding(AnonymousChatFragment anonymousChatFragment, View view) {
        this.kl = anonymousChatFragment;
        anonymousChatFragment.linearLayout_name = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_anonymous_name, "field 'linearLayout_name'", LinearLayout.class);
        anonymousChatFragment.linearLayout_typeSpace = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_anonymous_type_space, "field 'linearLayout_typeSpace'", LinearLayout.class);
        anonymousChatFragment.linearLayout_message = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_anonymous_chat_message, "field 'linearLayout_message'", LinearLayout.class);
        anonymousChatFragment.recyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_anonymous_chat_messages, "field 'recyclerView'", RecyclerView.class);
        anonymousChatFragment.editText_name = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_anonymous_chat_name, "field 'editText_name'", EditText.class);
        anonymousChatFragment.editText_typeSpace = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_anonymous_chat_type_space, "field 'editText_typeSpace'", EditText.class);
        anonymousChatFragment.textView_message = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_anonymous_chat_message, "field 'textView_message'", TextView.class);
        anonymousChatFragment.textView_matcherName = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_anonymous_chat_matcher_name, "field 'textView_matcherName'", TextView.class);
        anonymousChatFragment.imageButton_leave = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_anonymous_chat_leave, "field 'imageButton_leave'", ImageButton.class);
        anonymousChatFragment.button_match = (Button) Utils.findRequiredViewAsType(view, R.id.button_anonymous_chat_match, "field 'button_match'", Button.class);
        anonymousChatFragment.button_send = (Button) Utils.findRequiredViewAsType(view, R.id.button_anonymous_chat_send, "field 'button_send'", Button.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AnonymousChatFragment anonymousChatFragment = this.kl;
        if (anonymousChatFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.kl = null;
        anonymousChatFragment.linearLayout_name = null;
        anonymousChatFragment.linearLayout_typeSpace = null;
        anonymousChatFragment.linearLayout_message = null;
        anonymousChatFragment.recyclerView = null;
        anonymousChatFragment.editText_name = null;
        anonymousChatFragment.editText_typeSpace = null;
        anonymousChatFragment.textView_message = null;
        anonymousChatFragment.textView_matcherName = null;
        anonymousChatFragment.imageButton_leave = null;
        anonymousChatFragment.button_match = null;
        anonymousChatFragment.button_send = null;
    }
}
