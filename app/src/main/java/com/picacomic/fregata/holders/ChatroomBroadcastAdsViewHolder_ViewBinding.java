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
public class ChatroomBroadcastAdsViewHolder_ViewBinding implements Unbinder {
    private ChatroomBroadcastAdsViewHolder st;

    @UiThread
    public ChatroomBroadcastAdsViewHolder_ViewBinding(ChatroomBroadcastAdsViewHolder chatroomBroadcastAdsViewHolder, View view) {
        this.st = chatroomBroadcastAdsViewHolder;
        chatroomBroadcastAdsViewHolder.container = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_chatroom_container, "field 'container'", LinearLayout.class);
        chatroomBroadcastAdsViewHolder.imageView_avatar = (CircleImageView) Utils.findRequiredViewAsType(view, R.id.imageView_chatroom_recycler_view_cell_avatar, "field 'imageView_avatar'", CircleImageView.class);
        chatroomBroadcastAdsViewHolder.textView_name = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_name, "field 'textView_name'", TextView.class);
        chatroomBroadcastAdsViewHolder.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_title, "field 'textView_title'", TextView.class);
        chatroomBroadcastAdsViewHolder.imageView_image = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_chatroom_recycler_view_cell_image, "field 'imageView_image'", ImageView.class);
        chatroomBroadcastAdsViewHolder.textView_message = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_message, "field 'textView_message'", TextView.class);
        chatroomBroadcastAdsViewHolder.textView_timestamp = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_timestamp, "field 'textView_timestamp'", TextView.class);
        chatroomBroadcastAdsViewHolder.imageView_verified = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_chatroom_recycler_view_cell_verified, "field 'imageView_verified'", ImageView.class);
        chatroomBroadcastAdsViewHolder.textView_level = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_level, "field 'textView_level'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChatroomBroadcastAdsViewHolder chatroomBroadcastAdsViewHolder = this.st;
        if (chatroomBroadcastAdsViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.st = null;
        chatroomBroadcastAdsViewHolder.container = null;
        chatroomBroadcastAdsViewHolder.imageView_avatar = null;
        chatroomBroadcastAdsViewHolder.textView_name = null;
        chatroomBroadcastAdsViewHolder.textView_title = null;
        chatroomBroadcastAdsViewHolder.imageView_image = null;
        chatroomBroadcastAdsViewHolder.textView_message = null;
        chatroomBroadcastAdsViewHolder.textView_timestamp = null;
        chatroomBroadcastAdsViewHolder.imageView_verified = null;
        chatroomBroadcastAdsViewHolder.textView_level = null;
    }
}
