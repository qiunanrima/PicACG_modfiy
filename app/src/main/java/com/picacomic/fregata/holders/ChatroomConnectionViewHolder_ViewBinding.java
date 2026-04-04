package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomConnectionViewHolder_ViewBinding implements Unbinder {
    private ChatroomConnectionViewHolder su;

    @UiThread
    public ChatroomConnectionViewHolder_ViewBinding(ChatroomConnectionViewHolder chatroomConnectionViewHolder, View view) {
        this.su = chatroomConnectionViewHolder;
        chatroomConnectionViewHolder.textView_connection = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_connection, "field 'textView_connection'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChatroomConnectionViewHolder chatroomConnectionViewHolder = this.su;
        if (chatroomConnectionViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.su = null;
        chatroomConnectionViewHolder.textView_connection = null;
    }
}
