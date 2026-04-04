package com.picacomic.fregata.holders;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.objects.ChatroomListObject;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomListViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "ChatroomListViewHolder";
    Context context;

    @BindView(R.id.imageView_chatroom_list_cell_image)
    public ImageView imageView_image;
    k sy;

    @BindView(R.id.textView_chatroom_list_cell_description)
    public TextView textView_description;

    @BindView(R.id.textView_chatroom_list_cell_title)
    public TextView textView_title;

    public ChatroomListViewHolder(Context context, View view, k kVar) {
        super(view);
        ButterKnife.bind(this, view);
        this.context = context;
        this.sy = kVar;
        view.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.sy.C(getAdapterPosition());
    }

    public void a(ChatroomListObject chatroomListObject) {
        Picasso.with(this.context).load(chatroomListObject.getAvatar()).placeholder(R.drawable.placeholder_avatar_2).into(this.imageView_image);
        this.textView_title.setText(chatroomListObject.getTitle() + "");
        this.textView_description.setText(chatroomListObject.getDescription() + "");
    }
}
