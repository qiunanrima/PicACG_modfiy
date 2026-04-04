package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import androidx.recyclerview.widget.RecyclerView;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomFragment_ViewBinding implements Unbinder {
    private ChatroomFragment mE;

    @UiThread
    public ChatroomFragment_ViewBinding(ChatroomFragment chatroomFragment, View view) {
        this.mE = chatroomFragment;
        chatroomFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        chatroomFragment.recyclerView_chat = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_chat, "field 'recyclerView_chat'", RecyclerView.class);
        chatroomFragment.frameLayout_container = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.frameLayout_game_container, "field 'frameLayout_container'", FrameLayout.class);
        chatroomFragment.frameLayout_chatOnlineCountContainer = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.frameLayout_chat_online_count_container, "field 'frameLayout_chatOnlineCountContainer'", FrameLayout.class);
        chatroomFragment.frameLayout_nightMode = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.frameLayout_night_mode, "field 'frameLayout_nightMode'", FrameLayout.class);
        chatroomFragment.frameLayout_chatOnlineCountBackground = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.frameLayout_chat_online_count_background, "field 'frameLayout_chatOnlineCountBackground'", FrameLayout.class);
        chatroomFragment.gridView_emojiList = (GridView) Utils.findRequiredViewAsType(view, R.id.gridView_chat_emoji_list, "field 'gridView_emojiList'", GridView.class);
        chatroomFragment.textView_atList = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chat_at_list, "field 'textView_atList'", TextView.class);
        chatroomFragment.textView_reply = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chat_reply, "field 'textView_reply'", TextView.class);
        chatroomFragment.textView_chatOnlineCountTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chat_online_count_title, "field 'textView_chatOnlineCountTitle'", TextView.class);
        chatroomFragment.textView_chatOnlineCount = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chat_online_count, "field 'textView_chatOnlineCount'", TextView.class);
        chatroomFragment.editText_textbox = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_chat_textbox, "field 'editText_textbox'", EditText.class);
        chatroomFragment.textView_toastMsg = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chat_toast_msg, "field 'textView_toastMsg'", TextView.class);
        chatroomFragment.button_sendMessage = (Button) Utils.findRequiredViewAsType(view, R.id.button_chat_send, "field 'button_sendMessage'", Button.class);
        chatroomFragment.button_saveImage = (Button) Utils.findRequiredViewAsType(view, R.id.button_chat_popup_save_image, "field 'button_saveImage'", Button.class);
        chatroomFragment.button_viewProfile = (Button) Utils.findRequiredViewAsType(view, R.id.button_chat_view_profile, "field 'button_viewProfile'", Button.class);
        chatroomFragment.imageButton_hideChannel = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_chat_hide_channel, "field 'imageButton_hideChannel'", ImageButton.class);
        chatroomFragment.linearLayout_chatChannel = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_chat_channel, "field 'linearLayout_chatChannel'", LinearLayout.class);
        chatroomFragment.linearLayout_controlPanel = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_chat_control_panel, "field 'linearLayout_controlPanel'", LinearLayout.class);
        chatroomFragment.linearLayout_controlPanelButtons = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_chat_control_panel_buttons, "field 'linearLayout_controlPanelButtons'", LinearLayout.class);
        chatroomFragment.button_controlChangeTitle = (Button) Utils.findRequiredViewAsType(view, R.id.button_chat_control_change_title, "field 'button_controlChangeTitle'", Button.class);
        chatroomFragment.button_controlTime = (Button) Utils.findRequiredViewAsType(view, R.id.button_chat_control_time, "field 'button_controlTime'", Button.class);
        chatroomFragment.button_controlImage = (Button) Utils.findRequiredViewAsType(view, R.id.button_chat_control_image, "field 'button_controlImage'", Button.class);
        chatroomFragment.button_controlHideAvatar = (Button) Utils.findRequiredViewAsType(view, R.id.button_chat_control_hide_avatar, "field 'button_controlHideAvatar'", Button.class);
        chatroomFragment.button_controlMute = (Button) Utils.findRequiredViewAsType(view, R.id.button_chat_control_mute, "field 'button_controlMute'", Button.class);
        chatroomFragment.button_controlAI = (Button) Utils.findRequiredViewAsType(view, R.id.button_chat_control_ai_mode, "field 'button_controlAI'", Button.class);
        chatroomFragment.button_controlHidePanelButtons = (Button) Utils.findRequiredViewAsType(view, R.id.button_chat_control_hide_panel_buttons, "field 'button_controlHidePanelButtons'", Button.class);
        chatroomFragment.button_channelPublic = (Button) Utils.findRequiredViewAsType(view, R.id.button_chat_channel_public, "field 'button_channelPublic'", Button.class);
        chatroomFragment.button_channelPrivate = (Button) Utils.findRequiredViewAsType(view, R.id.button_chat_channel_private, "field 'button_channelPrivate'", Button.class);
        chatroomFragment.frameLayout_channelIndicator = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.frameLayout_chat_channel_indicator, "field 'frameLayout_channelIndicator'", FrameLayout.class);
        chatroomFragment.imageButton_setting = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_chat_setting, "field 'imageButton_setting'", ImageButton.class);
        chatroomFragment.imageButton_sendImage = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_chat_send_image, "field 'imageButton_sendImage'", ImageButton.class);
        chatroomFragment.imageButton_sendAudio = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_chat_audio, "field 'imageButton_sendAudio'", ImageButton.class);
        chatroomFragment.imageButton_sendEmoji = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_chat_send_emoji, "field 'imageButton_sendEmoji'", ImageButton.class);
        chatroomFragment.relativeLayout_popup = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.relativeLayout_chat_popup, "field 'relativeLayout_popup'", RelativeLayout.class);
        chatroomFragment.imageView_largeImage = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_chat_large_image, "field 'imageView_largeImage'", ImageView.class);
        chatroomFragment.imageButton_closePopup = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_chat_close_popup, "field 'imageButton_closePopup'", ImageButton.class);
        chatroomFragment.textView_totalUserCount = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chat_total_user_count, "field 'textView_totalUserCount'", TextView.class);
        chatroomFragment.textView_toastAtMe = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chat_toast_at_me, "field 'textView_toastAtMe'", TextView.class);
        chatroomFragment.textView_audioPlayingTimer = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_chat_audio_playing_timer, "field 'textView_audioPlayingTimer'", TextView.class);
        chatroomFragment.fab_command = (FloatingActionButton) Utils.findRequiredViewAsType(view, R.id.fab_command, "field 'fab_command'", FloatingActionButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChatroomFragment chatroomFragment = this.mE;
        if (chatroomFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.mE = null;
        chatroomFragment.toolbar = null;
        chatroomFragment.recyclerView_chat = null;
        chatroomFragment.frameLayout_container = null;
        chatroomFragment.frameLayout_chatOnlineCountContainer = null;
        chatroomFragment.frameLayout_nightMode = null;
        chatroomFragment.frameLayout_chatOnlineCountBackground = null;
        chatroomFragment.gridView_emojiList = null;
        chatroomFragment.textView_atList = null;
        chatroomFragment.textView_reply = null;
        chatroomFragment.textView_chatOnlineCountTitle = null;
        chatroomFragment.textView_chatOnlineCount = null;
        chatroomFragment.editText_textbox = null;
        chatroomFragment.textView_toastMsg = null;
        chatroomFragment.button_sendMessage = null;
        chatroomFragment.button_saveImage = null;
        chatroomFragment.button_viewProfile = null;
        chatroomFragment.imageButton_hideChannel = null;
        chatroomFragment.linearLayout_chatChannel = null;
        chatroomFragment.linearLayout_controlPanel = null;
        chatroomFragment.linearLayout_controlPanelButtons = null;
        chatroomFragment.button_controlChangeTitle = null;
        chatroomFragment.button_controlTime = null;
        chatroomFragment.button_controlImage = null;
        chatroomFragment.button_controlHideAvatar = null;
        chatroomFragment.button_controlMute = null;
        chatroomFragment.button_controlAI = null;
        chatroomFragment.button_controlHidePanelButtons = null;
        chatroomFragment.button_channelPublic = null;
        chatroomFragment.button_channelPrivate = null;
        chatroomFragment.frameLayout_channelIndicator = null;
        chatroomFragment.imageButton_setting = null;
        chatroomFragment.imageButton_sendImage = null;
        chatroomFragment.imageButton_sendAudio = null;
        chatroomFragment.imageButton_sendEmoji = null;
        chatroomFragment.relativeLayout_popup = null;
        chatroomFragment.imageView_largeImage = null;
        chatroomFragment.imageButton_closePopup = null;
        chatroomFragment.textView_totalUserCount = null;
        chatroomFragment.textView_toastAtMe = null;
        chatroomFragment.textView_audioPlayingTimer = null;
        chatroomFragment.fab_command = null;
    }
}
