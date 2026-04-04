package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemChatroomGameMessageRecyclerViewCellBinding;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomGameMessageViewHolder extends RecyclerView.ViewHolder {
    public static final String TAG = "ChatroomGameMessageViewHolder";

    ItemChatroomGameMessageRecyclerViewCellBinding binding;
    public TextView textView_message;

    public ChatroomGameMessageViewHolder(View view) {
        super(view);
        this.binding = ItemChatroomGameMessageRecyclerViewCellBinding.bind(view);
        this.textView_message = this.binding.textViewChatroomGameMessageRecyclerViewCellMessage;
    }
}
