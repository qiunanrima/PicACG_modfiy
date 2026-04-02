package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomListViewHolder_ViewBinding implements Unbinder {
    private ChatroomListViewHolder sz;

    @UiThread
    public ChatroomListViewHolder_ViewBinding(ChatroomListViewHolder chatroomListViewHolder, View view) {
        this.sz = chatroomListViewHolder;
        chatroomListViewHolder.imageView_image = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_chatroom_list_cell_image, "field 'imageView_image'", ImageView.class);
        chatroomListViewHolder.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_list_cell_title, "field 'textView_title'", TextView.class);
        chatroomListViewHolder.textView_description = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_list_cell_description, "field 'textView_description'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChatroomListViewHolder chatroomListViewHolder = this.sz;
        if (chatroomListViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sz = null;
        chatroomListViewHolder.imageView_image = null;
        chatroomListViewHolder.textView_title = null;
        chatroomListViewHolder.textView_description = null;
    }
}
