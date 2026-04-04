package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemChatroomAdsRecyclerViewCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.a;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomBroadcastAdsViewHolder extends RecyclerView.ViewHolder {
    public static final String TAG = ChatroomMessageViewHolder.class.getSimpleName();

    ItemChatroomAdsRecyclerViewCellBinding binding;
    public LinearLayout container;
    public CircleImageView imageView_avatar;
    public ImageView imageView_image;
    public ImageView imageView_verified;
    a jn;
    public TextView textView_level;
    public TextView textView_message;
    public TextView textView_name;
    public TextView textView_timestamp;
    public TextView textView_title;

    public ChatroomBroadcastAdsViewHolder(View view, a aVar) {
        super(view);
        this.binding = ItemChatroomAdsRecyclerViewCellBinding.bind(view);
        this.container = view.findViewById(R.id.linearLayout_chatroom_container);
        this.imageView_avatar = view.findViewById(R.id.imageView_chatroom_recycler_view_cell_avatar);
        this.imageView_image = view.findViewById(R.id.imageView_chatroom_recycler_view_cell_image);
        this.imageView_verified = view.findViewById(R.id.imageView_chatroom_recycler_view_cell_verified);
        this.textView_level = view.findViewById(R.id.textView_chatroom_recycler_view_cell_level);
        this.textView_message = view.findViewById(R.id.textView_chatroom_recycler_view_cell_message);
        this.textView_name = view.findViewById(R.id.textView_chatroom_recycler_view_cell_name);
        this.textView_timestamp = view.findViewById(R.id.textView_chatroom_recycler_view_cell_timestamp);
        this.textView_title = view.findViewById(R.id.textView_chatroom_recycler_view_cell_title);
        this.jn = aVar;
        this.textView_name.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.holders.ChatroomBroadcastAdsViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ChatroomBroadcastAdsViewHolder.this.jn.G(ChatroomBroadcastAdsViewHolder.this.getAdapterPosition());
            }
        });
        this.textView_title.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.holders.ChatroomBroadcastAdsViewHolder.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ChatroomBroadcastAdsViewHolder.this.jn.G(ChatroomBroadcastAdsViewHolder.this.getAdapterPosition());
            }
        });
        this.imageView_avatar.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.holders.ChatroomBroadcastAdsViewHolder.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ChatroomBroadcastAdsViewHolder.this.jn.F(ChatroomBroadcastAdsViewHolder.this.getAdapterPosition());
            }
        });
        this.imageView_image.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.holders.ChatroomBroadcastAdsViewHolder.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ChatroomBroadcastAdsViewHolder.this.jn.E(ChatroomBroadcastAdsViewHolder.this.getAdapterPosition());
            }
        });
        this.textView_message.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.holders.ChatroomBroadcastAdsViewHolder.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ChatroomBroadcastAdsViewHolder.this.jn.H(ChatroomBroadcastAdsViewHolder.this.getAdapterPosition());
            }
        });
    }
}
