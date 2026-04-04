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
public class ChatroomMessageViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "ChatroomMessageViewHolder";

    @BindView(R.id.linearLayout_chatroom_container)
    public LinearLayout container;

    @BindView(R.id.imageView_chatroom_recycler_view_cell_avatar)
    public CircleImageView imageView_avatar;

    @BindView(R.id.imageView_chatroom_recycler_view_cell_verified)
    public ImageView imageView_verified;
    a jn;

    @BindView(R.id.linearLayout_chatroom_recycler_view_cell_reply_container)
    public LinearLayout linearLayout_replyContainer;

    @BindView(R.id.textView_chatroom_recycler_view_cell_at)
    public TextView textView_at;

    @BindView(R.id.textView_chatroom_recycler_view_cell_level)
    public TextView textView_level;

    @BindView(R.id.textView_chatroom_recycler_view_cell_message)
    public TextView textView_message;

    @BindView(R.id.textView_chatroom_recycler_view_cell_name)
    public TextView textView_name;

    @BindView(R.id.textView_chatroom_recycler_view_cell_reply_message)
    public TextView textView_replyMessage;

    @BindView(R.id.textView_chatroom_recycler_view_cell_reply_name)
    public TextView textView_replyName;

    @BindView(R.id.textView_chatroom_recycler_view_cell_timestamp)
    public TextView textView_timestamp;

    @BindView(R.id.textView_chatroom_recycler_view_cell_title)
    public TextView textView_title;

    public ChatroomMessageViewHolder(View view, a aVar) {
        super(view);
        ButterKnife.bind(this, view);
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
