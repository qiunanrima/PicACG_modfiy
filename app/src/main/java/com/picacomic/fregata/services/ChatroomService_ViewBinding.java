package com.picacomic.fregata.services;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomService_ViewBinding implements Unbinder {
    private ChatroomService tM;

    @UiThread
    public ChatroomService_ViewBinding(ChatroomService chatroomService, View view) {
        this.tM = chatroomService;
        chatroomService.recyclerView_chat = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_service_chatroom, "field 'recyclerView_chat'", RecyclerView.class);
        chatroomService.relativeLayout_input = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.relativeLayout_service_chatroom_input, "field 'relativeLayout_input'", RelativeLayout.class);
        chatroomService.button_messageMode = (Button) Utils.findRequiredViewAsType(view, R.id.button_service_chatroom_message_mode, "field 'button_messageMode'", Button.class);
        chatroomService.button_close = (Button) Utils.findRequiredViewAsType(view, R.id.button_service_chatroom_close, "field 'button_close'", Button.class);
        chatroomService.button_send = (Button) Utils.findRequiredViewAsType(view, R.id.button_service_chatroom_send, "field 'button_send'", Button.class);
        chatroomService.button_move = (Button) Utils.findRequiredViewAsType(view, R.id.button_service_chatroom_move, "field 'button_move'", Button.class);
        chatroomService.button_sizeController = (Button) Utils.findRequiredViewAsType(view, R.id.button_service_chatroom_size_controller, "field 'button_sizeController'", Button.class);
        chatroomService.editText_input = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_service_chatroom_input, "field 'editText_input'", EditText.class);
        chatroomService.textView_totalUserCount = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_service_chatroom_total_user_count, "field 'textView_totalUserCount'", TextView.class);
        chatroomService.textView_atList = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chat_at_list, "field 'textView_atList'", TextView.class);
        chatroomService.textView_reply = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chat_reply, "field 'textView_reply'", TextView.class);
        chatroomService.textView_toastMsg = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chat_toast_msg, "field 'textView_toastMsg'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChatroomService chatroomService = this.tM;
        if (chatroomService == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.tM = null;
        chatroomService.recyclerView_chat = null;
        chatroomService.relativeLayout_input = null;
        chatroomService.button_messageMode = null;
        chatroomService.button_close = null;
        chatroomService.button_send = null;
        chatroomService.button_move = null;
        chatroomService.button_sizeController = null;
        chatroomService.editText_input = null;
        chatroomService.textView_totalUserCount = null;
        chatroomService.textView_atList = null;
        chatroomService.textView_reply = null;
        chatroomService.textView_toastMsg = null;
    }
}
