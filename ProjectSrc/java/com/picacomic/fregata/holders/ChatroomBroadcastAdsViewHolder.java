package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.a;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomBroadcastAdsViewHolder extends RecyclerView.ViewHolder {
    public static final String TAG = ChatroomMessageViewHolder.class.getSimpleName();

    @BindView(R.id.linearLayout_chatroom_container)
    public LinearLayout container;

    @BindView(R.id.imageView_chatroom_recycler_view_cell_avatar)
    public CircleImageView imageView_avatar;

    @BindView(R.id.imageView_chatroom_recycler_view_cell_image)
    public ImageView imageView_image;

    @BindView(R.id.imageView_chatroom_recycler_view_cell_verified)
    public ImageView imageView_verified;
    a jn;

    @BindView(R.id.textView_chatroom_recycler_view_cell_level)
    public TextView textView_level;

    @BindView(R.id.textView_chatroom_recycler_view_cell_message)
    public TextView textView_message;

    @BindView(R.id.textView_chatroom_recycler_view_cell_name)
    public TextView textView_name;

    @BindView(R.id.textView_chatroom_recycler_view_cell_timestamp)
    public TextView textView_timestamp;

    @BindView(R.id.textView_chatroom_recycler_view_cell_title)
    public TextView textView_title;

    public ChatroomBroadcastAdsViewHolder(View view, a aVar) {
        super(view);
        ButterKnife.bind(this, view);
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
