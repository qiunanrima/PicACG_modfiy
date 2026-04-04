package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemChatroomBotRecyclerViewCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.a;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomAdsViewHolder extends RecyclerView.ViewHolder {
    public static final String TAG = "ChatroomAdsViewHolder";

    ItemChatroomBotRecyclerViewCellBinding binding;
    public CircleImageView imageView_avatar;
    public TextView textView_level;
    public TextView textView_name;
    public TextView textView_timestamp;
    public TextView textView_title;

    public ChatroomAdsViewHolder(View view, a aVar) {
        super(view);
        this.binding = ItemChatroomBotRecyclerViewCellBinding.bind(view);
        this.imageView_avatar = view.findViewById(R.id.imageView_chatroom_recycler_view_cell_avatar);
        this.textView_level = view.findViewById(R.id.textView_chatroom_recycler_view_cell_level);
        this.textView_name = view.findViewById(R.id.textView_chatroom_recycler_view_cell_name);
        this.textView_timestamp = view.findViewById(R.id.textView_chatroom_recycler_view_cell_timestamp);
        this.textView_title = view.findViewById(R.id.textView_chatroom_recycler_view_cell_title);
    }
}
