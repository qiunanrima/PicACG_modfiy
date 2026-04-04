package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomSystemNotificationViewHolder extends RecyclerView.ViewHolder {

    @BindView(R.id.textView_chatroom_recycler_view_cell_system_notification)
    public TextView textView_notification;

    public ChatroomSystemNotificationViewHolder(View view) {
        super(view);
        ButterKnife.bind(this, view);
    }
}
