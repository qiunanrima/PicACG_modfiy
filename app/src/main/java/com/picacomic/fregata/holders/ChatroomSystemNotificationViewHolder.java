package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemChatroomSystemNotificationRecyclerViewCellBinding;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomSystemNotificationViewHolder extends RecyclerView.ViewHolder {

    ItemChatroomSystemNotificationRecyclerViewCellBinding binding;
    public TextView textView_notification;

    public ChatroomSystemNotificationViewHolder(View view) {
        super(view);
        this.binding = ItemChatroomSystemNotificationRecyclerViewCellBinding.bind(view);
        this.textView_notification = this.binding.textViewChatroomRecyclerViewCellSystemNotification;
    }
}
