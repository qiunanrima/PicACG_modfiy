package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class AnonymousChatViewHolder_ViewBinding implements Unbinder {
    private AnonymousChatViewHolder sk;

    @UiThread
    public AnonymousChatViewHolder_ViewBinding(AnonymousChatViewHolder anonymousChatViewHolder, View view) {
        this.sk = anonymousChatViewHolder;
        anonymousChatViewHolder.textView_message = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_anonymous_chat_cell_message, "field 'textView_message'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AnonymousChatViewHolder anonymousChatViewHolder = this.sk;
        if (anonymousChatViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sk = null;
        anonymousChatViewHolder.textView_message = null;
    }
}
