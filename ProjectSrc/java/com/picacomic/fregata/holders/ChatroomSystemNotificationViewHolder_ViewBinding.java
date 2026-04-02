package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomSystemNotificationViewHolder_ViewBinding implements Unbinder {
    private ChatroomSystemNotificationViewHolder sB;

    @UiThread
    public ChatroomSystemNotificationViewHolder_ViewBinding(ChatroomSystemNotificationViewHolder chatroomSystemNotificationViewHolder, View view) {
        this.sB = chatroomSystemNotificationViewHolder;
        chatroomSystemNotificationViewHolder.textView_notification = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_system_notification, "field 'textView_notification'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChatroomSystemNotificationViewHolder chatroomSystemNotificationViewHolder = this.sB;
        if (chatroomSystemNotificationViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sB = null;
        chatroomSystemNotificationViewHolder.textView_notification = null;
    }
}
