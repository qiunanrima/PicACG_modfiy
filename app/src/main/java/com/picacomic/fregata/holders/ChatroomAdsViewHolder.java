package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.a;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomAdsViewHolder extends RecyclerView.ViewHolder {
    public static final String TAG = "ChatroomAdsViewHolder";

    @BindView(R.id.imageView_chatroom_recycler_view_cell_avatar)
    public CircleImageView imageView_avatar;

    @BindView(R.id.textView_chatroom_recycler_view_cell_level)
    public TextView textView_level;

    @BindView(R.id.textView_chatroom_recycler_view_cell_name)
    public TextView textView_name;

    @BindView(R.id.textView_chatroom_recycler_view_cell_timestamp)
    public TextView textView_timestamp;

    @BindView(R.id.textView_chatroom_recycler_view_cell_title)
    public TextView textView_title;

    public ChatroomAdsViewHolder(View view, a aVar) {
        super(view);
        ButterKnife.bind(this, view);
    }
}
