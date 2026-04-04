package com.picacomic.fregata.adapters;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.picacomic.fregata.R;
import com.picacomic.fregata.holders.ChatroomGameMessageViewHolder;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomGameMessageRecyclerViewAdapter extends RecyclerView.Adapter<ChatroomGameMessageViewHolder> {
    public static final String TAG = "ChatroomGameMessageRecyclerViewAdapter";
    private final Context context;
    private ArrayList<String> ja;
    private final LayoutInflater mLayoutInflater;

    public ChatroomGameMessageRecyclerViewAdapter(Context context, ArrayList<String> arrayList) {
        this.context = context;
        this.mLayoutInflater = LayoutInflater.from(context);
        this.ja = arrayList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public ChatroomGameMessageViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ChatroomGameMessageViewHolder(this.mLayoutInflater.inflate(R.layout.item_chatroom_game_message_recycler_view_cell, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(ChatroomGameMessageViewHolder chatroomGameMessageViewHolder, int i) {
        if (this.ja == null || this.ja.size() <= i) {
            return;
        }
        chatroomGameMessageViewHolder.textView_message.setText("Game Message " + i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.ja == null || this.ja.size() <= 0) {
            return 0;
        }
        return this.ja.size();
    }
}
