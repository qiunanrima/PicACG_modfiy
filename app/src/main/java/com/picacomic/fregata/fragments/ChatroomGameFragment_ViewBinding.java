package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.ChatroomGame.ChatroomGameView;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomGameFragment_ViewBinding implements Unbinder {
    private ChatroomGameFragment mO;

    @UiThread
    public ChatroomGameFragment_ViewBinding(ChatroomGameFragment chatroomGameFragment, View view) {
        this.mO = chatroomGameFragment;
        chatroomGameFragment.recyclerView_gameMessage = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_chatroom_game, "field 'recyclerView_gameMessage'", RecyclerView.class);
        chatroomGameFragment.gameView = (ChatroomGameView) Utils.findRequiredViewAsType(view, R.id.chatroomGameView, "field 'gameView'", ChatroomGameView.class);
        chatroomGameFragment.button_t1 = (Button) Utils.findRequiredViewAsType(view, R.id.button_testing1, "field 'button_t1'", Button.class);
        chatroomGameFragment.button_t2 = (Button) Utils.findRequiredViewAsType(view, R.id.button_testing2, "field 'button_t2'", Button.class);
        chatroomGameFragment.button_t3 = (Button) Utils.findRequiredViewAsType(view, R.id.button_testing3, "field 'button_t3'", Button.class);
        chatroomGameFragment.button_t4 = (Button) Utils.findRequiredViewAsType(view, R.id.button_testing4, "field 'button_t4'", Button.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChatroomGameFragment chatroomGameFragment = this.mO;
        if (chatroomGameFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.mO = null;
        chatroomGameFragment.recyclerView_gameMessage = null;
        chatroomGameFragment.gameView = null;
        chatroomGameFragment.button_t1 = null;
        chatroomGameFragment.button_t2 = null;
        chatroomGameFragment.button_t3 = null;
        chatroomGameFragment.button_t4 = null;
    }
}
