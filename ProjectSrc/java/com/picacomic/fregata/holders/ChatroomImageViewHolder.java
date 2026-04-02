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
public class ChatroomImageViewHolder extends RecyclerView.ViewHolder {
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

    @BindView(R.id.textView_chatroom_recycler_view_cell_name)
    public TextView textView_name;

    @BindView(R.id.textView_chatroom_recycler_view_cell_timestamp)
    public TextView textView_timestamp;

    @BindView(R.id.textView_chatroom_recycler_view_cell_title)
    public TextView textView_title;

    public ChatroomImageViewHolder(View view, a aVar) {
        super(view);
        ButterKnife.bind(this, view);
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
