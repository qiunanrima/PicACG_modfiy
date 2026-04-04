package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemChatroomAudioRecyclerViewCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.a;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomAudioViewHolder extends RecyclerView.ViewHolder {
    public static final String TAG = "ChatroomAudioViewHolder";

    ItemChatroomAudioRecyclerViewCellBinding binding;
    public LinearLayout container;
    public ImageButton imageButton_audioAction;
    public CircleImageView imageView_avatar;
    public ImageView imageView_verified;
    a jn;
    public boolean sp;
    public TextView textView_level;
    public TextView textView_name;
    public TextView textView_timestamp;
    public TextView textView_title;

    public ChatroomAudioViewHolder(View view, a aVar) {
        super(view);
        this.sp = false;
        this.binding = ItemChatroomAudioRecyclerViewCellBinding.bind(view);
        this.container = view.findViewById(R.id.linearLayout_chatroom_container);
        this.imageButton_audioAction = view.findViewById(R.id.imageButton_chatroom_recycler_view_cell_audio_action);
        this.imageView_avatar = view.findViewById(R.id.imageView_chatroom_recycler_view_cell_avatar);
        this.imageView_verified = view.findViewById(R.id.imageView_chatroom_recycler_view_cell_verified);
        this.textView_level = view.findViewById(R.id.textView_chatroom_recycler_view_cell_level);
        this.textView_name = view.findViewById(R.id.textView_chatroom_recycler_view_cell_name);
        this.textView_timestamp = view.findViewById(R.id.textView_chatroom_recycler_view_cell_timestamp);
        this.textView_title = view.findViewById(R.id.textView_chatroom_recycler_view_cell_title);
        this.jn = aVar;
        this.textView_name.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.holders.ChatroomAudioViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ChatroomAudioViewHolder.this.jn.G(ChatroomAudioViewHolder.this.getAdapterPosition());
            }
        });
        this.textView_title.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.holders.ChatroomAudioViewHolder.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ChatroomAudioViewHolder.this.jn.G(ChatroomAudioViewHolder.this.getAdapterPosition());
            }
        });
        this.imageView_avatar.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.holders.ChatroomAudioViewHolder.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ChatroomAudioViewHolder.this.jn.F(ChatroomAudioViewHolder.this.getAdapterPosition());
            }
        });
        this.imageButton_audioAction.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.holders.ChatroomAudioViewHolder.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ChatroomAudioViewHolder.this.jn.D(ChatroomAudioViewHolder.this.getAdapterPosition());
            }
        });
    }
}
