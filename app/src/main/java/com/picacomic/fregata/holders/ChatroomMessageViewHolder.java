package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemChatroomMessageRecyclerViewCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.a;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomMessageViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "ChatroomMessageViewHolder";

    ItemChatroomMessageRecyclerViewCellBinding binding;
    public LinearLayout container;
    public CircleImageView imageView_avatar;
    public ImageView imageView_verified;
    a jn;
    public LinearLayout linearLayout_replyContainer;
    public TextView textView_at;
    public TextView textView_level;
    public TextView textView_message;
    public TextView textView_name;
    public TextView textView_replyMessage;
    public TextView textView_replyName;
    public TextView textView_timestamp;
    public TextView textView_title;

    public ChatroomMessageViewHolder(View view, a aVar) {
        super(view);
        this.binding = ItemChatroomMessageRecyclerViewCellBinding.bind(view);
        this.container = view.findViewById(R.id.linearLayout_chatroom_container);
        this.imageView_avatar = view.findViewById(R.id.imageView_chatroom_recycler_view_cell_avatar);
        this.imageView_verified = view.findViewById(R.id.imageView_chatroom_recycler_view_cell_verified);
        this.linearLayout_replyContainer = view.findViewById(R.id.linearLayout_chatroom_recycler_view_cell_reply_container);
        this.textView_at = view.findViewById(R.id.textView_chatroom_recycler_view_cell_at);
        this.textView_level = view.findViewById(R.id.textView_chatroom_recycler_view_cell_level);
        this.textView_message = view.findViewById(R.id.textView_chatroom_recycler_view_cell_message);
        this.textView_name = view.findViewById(R.id.textView_chatroom_recycler_view_cell_name);
        this.textView_replyMessage = view.findViewById(R.id.textView_chatroom_recycler_view_cell_reply_message);
        this.textView_replyName = view.findViewById(R.id.textView_chatroom_recycler_view_cell_reply_name);
        this.textView_timestamp = view.findViewById(R.id.textView_chatroom_recycler_view_cell_timestamp);
        this.textView_title = view.findViewById(R.id.textView_chatroom_recycler_view_cell_title);
        this.jn = aVar;
        this.textView_message.setOnClickListener(this);
        this.textView_title.setOnClickListener(this);
        this.textView_name.setOnClickListener(this);
        this.imageView_avatar.setOnClickListener(this);
        view.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.textView_chatroom_recycler_view_cell_name || view.getId() == R.id.textView_chatroom_recycler_view_cell_title) {
            this.jn.G(getAdapterPosition());
        } else if (view.getId() == R.id.imageView_chatroom_recycler_view_cell_avatar) {
            this.jn.F(getAdapterPosition());
        } else {
            this.jn.H(getAdapterPosition());
        }
    }
}
