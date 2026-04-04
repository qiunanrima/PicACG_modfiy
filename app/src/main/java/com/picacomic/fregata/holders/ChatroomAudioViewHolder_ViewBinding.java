package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomAudioViewHolder_ViewBinding implements Unbinder {
    private ChatroomAudioViewHolder sr;

    @UiThread
    public ChatroomAudioViewHolder_ViewBinding(ChatroomAudioViewHolder chatroomAudioViewHolder, View view) {
        this.sr = chatroomAudioViewHolder;
        chatroomAudioViewHolder.container = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_chatroom_container, "field 'container'", LinearLayout.class);
        chatroomAudioViewHolder.imageView_avatar = (CircleImageView) Utils.findRequiredViewAsType(view, R.id.imageView_chatroom_recycler_view_cell_avatar, "field 'imageView_avatar'", CircleImageView.class);
        chatroomAudioViewHolder.textView_name = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_name, "field 'textView_name'", TextView.class);
        chatroomAudioViewHolder.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_title, "field 'textView_title'", TextView.class);
        chatroomAudioViewHolder.imageButton_audioAction = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_chatroom_recycler_view_cell_audio_action, "field 'imageButton_audioAction'", ImageButton.class);
        chatroomAudioViewHolder.textView_timestamp = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_timestamp, "field 'textView_timestamp'", TextView.class);
        chatroomAudioViewHolder.imageView_verified = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_chatroom_recycler_view_cell_verified, "field 'imageView_verified'", ImageView.class);
        chatroomAudioViewHolder.textView_level = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chatroom_recycler_view_cell_level, "field 'textView_level'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChatroomAudioViewHolder chatroomAudioViewHolder = this.sr;
        if (chatroomAudioViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sr = null;
        chatroomAudioViewHolder.container = null;
        chatroomAudioViewHolder.imageView_avatar = null;
        chatroomAudioViewHolder.textView_name = null;
        chatroomAudioViewHolder.textView_title = null;
        chatroomAudioViewHolder.imageButton_audioAction = null;
        chatroomAudioViewHolder.textView_timestamp = null;
        chatroomAudioViewHolder.imageView_verified = null;
        chatroomAudioViewHolder.textView_level = null;
    }
}
