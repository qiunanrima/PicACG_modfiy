package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomAdsViewHolder_ViewBinding implements Unbinder {
    private ChatroomAdsViewHolder so;

    @UiThread
    public ChatroomAdsViewHolder_ViewBinding(ChatroomAdsViewHolder chatroomAdsViewHolder, View view) {
        this.so = chatroomAdsViewHolder;
        chatroomAdsViewHolder.imageView_avatar = (CircleImageView) Utils.findRequiredViewAsType(view, R.id.imageView_chatroom_recycler_view_cell_avatar, "field 'imageView_avatar'", CircleImageView.class);
        chatroomAdsViewHolder.textView_name = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_name, "field 'textView_name'", TextView.class);
        chatroomAdsViewHolder.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_title, "field 'textView_title'", TextView.class);
        chatroomAdsViewHolder.textView_timestamp = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_timestamp, "field 'textView_timestamp'", TextView.class);
        chatroomAdsViewHolder.textView_level = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_level, "field 'textView_level'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChatroomAdsViewHolder chatroomAdsViewHolder = this.so;
        if (chatroomAdsViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.so = null;
        chatroomAdsViewHolder.imageView_avatar = null;
        chatroomAdsViewHolder.textView_name = null;
        chatroomAdsViewHolder.textView_title = null;
        chatroomAdsViewHolder.textView_timestamp = null;
        chatroomAdsViewHolder.textView_level = null;
    }
}
