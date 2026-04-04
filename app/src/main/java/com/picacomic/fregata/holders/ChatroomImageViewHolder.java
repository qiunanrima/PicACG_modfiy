package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemChatroomImageRecyclerViewCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.a;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomImageViewHolder extends RecyclerView.ViewHolder {
    public static final String TAG = ChatroomMessageViewHolder.class.getSimpleName();

    ItemChatroomImageRecyclerViewCellBinding binding;
    public LinearLayout container;
    public CircleImageView imageView_avatar;
    public ImageView imageView_image;
    public ImageView imageView_verified;
    a jn;
    public TextView textView_level;
    public TextView textView_name;
    public TextView textView_timestamp;
    public TextView textView_title;

    public ChatroomImageViewHolder(View view, a aVar) {
        super(view);
        this.binding = ItemChatroomImageRecyclerViewCellBinding.bind(view);
        this.container = view.findViewById(R.id.linearLayout_chatroom_container);
        this.imageView_avatar = view.findViewById(R.id.imageView_chatroom_recycler_view_cell_avatar);
        this.imageView_image = view.findViewById(R.id.imageView_chatroom_recycler_view_cell_image);
        this.imageView_verified = view.findViewById(R.id.imageView_chatroom_recycler_view_cell_verified);
        this.textView_level = view.findViewById(R.id.textView_chatroom_recycler_view_cell_level);
        this.textView_name = view.findViewById(R.id.textView_chatroom_recycler_view_cell_name);
        this.textView_timestamp = view.findViewById(R.id.textView_chatroom_recycler_view_cell_timestamp);
        this.textView_title = view.findViewById(R.id.textView_chatroom_recycler_view_cell_title);
        this.jn = aVar;
        this.textView_name.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.holders.ChatroomImageViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ChatroomImageViewHolder.this.jn.G(ChatroomImageViewHolder.this.getAdapterPosition());
            }
        });
        this.textView_title.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.holders.ChatroomImageViewHolder.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ChatroomImageViewHolder.this.jn.G(ChatroomImageViewHolder.this.getAdapterPosition());
            }
        });
        this.imageView_avatar.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.holders.ChatroomImageViewHolder.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ChatroomImageViewHolder.this.jn.F(ChatroomImageViewHolder.this.getAdapterPosition());
            }
        });
        this.imageView_image.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.holders.ChatroomImageViewHolder.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ChatroomImageViewHolder.this.jn.E(ChatroomImageViewHolder.this.getAdapterPosition());
            }
        });
    }
}
