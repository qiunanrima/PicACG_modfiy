package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomGameMessageViewHolder extends RecyclerView.ViewHolder {
    public static final String TAG = "ChatroomGameMessageViewHolder";

    @BindView(R.id.textView_chatroom_game_message_recycler_view_cell_message)
    public TextView textView_message;

    public ChatroomGameMessageViewHolder(View view) {
        super(view);
        ButterKnife.bind(this, view);
    }
}
