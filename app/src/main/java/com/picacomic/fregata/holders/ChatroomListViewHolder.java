package com.picacomic.fregata.holders;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemChatroomListCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.objects.ChatroomListObject;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomListViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "ChatroomListViewHolder";
    Context context;

    ItemChatroomListCellBinding binding;
    public ImageView imageView_image;
    k sy;
    public TextView textView_description;
    public TextView textView_title;

    public ChatroomListViewHolder(Context context, View view, k kVar) {
        super(view);
        this.binding = ItemChatroomListCellBinding.bind(view);
        this.imageView_image = this.binding.imageViewChatroomListCellImage;
        this.textView_description = this.binding.textViewChatroomListCellDescription;
        this.textView_title = this.binding.textViewChatroomListCellTitle;
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
