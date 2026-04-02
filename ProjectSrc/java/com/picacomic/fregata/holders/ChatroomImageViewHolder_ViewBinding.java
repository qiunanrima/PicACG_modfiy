package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomImageViewHolder_ViewBinding implements Unbinder {
    private ChatroomImageViewHolder sx;

    @UiThread
    public ChatroomImageViewHolder_ViewBinding(ChatroomImageViewHolder chatroomImageViewHolder, View view) {
        this.sx = chatroomImageViewHolder;
        chatroomImageViewHolder.container = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_chatroom_container, "field 'container'", LinearLayout.class);
        chatroomImageViewHolder.imageView_avatar = (CircleImageView) Utils.findRequiredViewAsType(view, R.id.imageView_chatroom_recycler_view_cell_avatar, "field 'imageView_avatar'", CircleImageView.class);
        chatroomImageViewHolder.textView_name = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_name, "field 'textView_name'", TextView.class);
        chatroomImageViewHolder.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_title, "field 'textView_title'", TextView.class);
        chatroomImageViewHolder.imageView_image = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_chatroom_recycler_view_cell_image, "field 'imageView_image'", ImageView.class);
        chatroomImageViewHolder.textView_timestamp = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_timestamp, "field 'textView_timestamp'", TextView.class);
        chatroomImageViewHolder.imageView_verified = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_chatroom_recycler_view_cell_verified, "field 'imageView_verified'", ImageView.class);
        chatroomImageViewHolder.textView_level = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_level, "field 'textView_level'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChatroomImageViewHolder chatroomImageViewHolder = this.sx;
        if (chatroomImageViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sx = null;
        chatroomImageViewHolder.container = null;
        chatroomImageViewHolder.imageView_avatar = null;
        chatroomImageViewHolder.textView_name = null;
        chatroomImageViewHolder.textView_title = null;
        chatroomImageViewHolder.imageView_image = null;
        chatroomImageViewHolder.textView_timestamp = null;
        chatroomImageViewHolder.imageView_verified = null;
        chatroomImageViewHolder.textView_level = null;
    }
}
