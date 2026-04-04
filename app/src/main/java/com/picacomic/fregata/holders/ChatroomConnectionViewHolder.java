package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemChatroomConnectionNewRecyclerViewCellBinding;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomConnectionViewHolder extends RecyclerView.ViewHolder {

    ItemChatroomConnectionNewRecyclerViewCellBinding binding;
    public TextView textView_connection;

    public ChatroomConnectionViewHolder(View view) {
        super(view);
        this.binding = ItemChatroomConnectionNewRecyclerViewCellBinding.bind(view);
        this.textView_connection = this.binding.textViewChatroomRecyclerViewCellConnection;
    }
}
