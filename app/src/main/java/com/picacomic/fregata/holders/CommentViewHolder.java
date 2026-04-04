package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemCommentRecyclerViewCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.e;

/* JADX INFO: loaded from: classes.dex */
public class CommentViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "CommentViewHolder";

    ItemCommentRecyclerViewCellBinding binding;
    public Button button_dirty;
    public Button button_hide;
    public Button button_tools;
    public Button button_top;
    public Button button_viewMore;

    public ImageView imageView_likeIcon;
    public ImageView imageView_option;
    public ImageView imageView_userThumb;
    public ImageView imageView_userVerified;
    public LinearLayout linearLayout_reply;
    public LinearLayout linearLayout_tools;
    e sI;

    public TextView textView_content;
    public TextView textView_createdDate;
    public TextView textView_floor;
    public TextView textView_level;
    public TextView textView_likeCount;
    public TextView textView_noReply;
    public TextView textView_replyCount;
    public TextView textView_title;
    public TextView textView_username;

    public CommentViewHolder(View view, e eVar) {
        super(view);
        this.binding = ItemCommentRecyclerViewCellBinding.bind(view);
        this.button_dirty = this.binding.buttonCommentRecyclerViewCellDirty;
        this.button_hide = this.binding.buttonCommentRecyclerViewCellHide;
        this.button_tools = this.binding.buttonCommentRecyclerViewCellTools;
        this.button_top = this.binding.buttonCommentRecyclerViewCellTop;
        this.button_viewMore = this.binding.buttonCommentRecyclerViewCellViewMore;
        this.imageView_likeIcon = this.binding.imageViewCommentRecyclerViewCellLikeIcon;
        this.imageView_option = this.binding.imageViewCommentRecyclerViewCellOption;
        this.imageView_userThumb = this.binding.imageViewCommentRecyclerViewCellUserThumb;
        this.imageView_userVerified = this.binding.imageViewCommentRecyclerViewCellUserThumbVerified;
        this.linearLayout_reply = this.binding.linearLayoutCommentRecyclerViewCellReply;
        this.linearLayout_tools = this.binding.linearLayoutCommentRecyclerViewCellTools;
        this.textView_content = this.binding.textViewCommentRecyclerViewCellContent;
        this.textView_createdDate = this.binding.textViewCommentRecyclerViewCellCreatedDate;
        this.textView_floor = this.binding.textViewCommentRecyclerViewCellFloor;
        this.textView_level = this.binding.textViewCommentRecyclerViewCellLevel;
        this.textView_likeCount = this.binding.textViewCommentRecyclerViewCellLikeCount;
        this.textView_noReply = this.binding.textViewCommentRecyclerViewCellNoReply;
        this.textView_replyCount = this.binding.textViewCommentRecyclerViewCellReplyCount;
        this.textView_title = this.binding.textViewCommentRecyclerViewCellTitle;
        this.textView_username = this.binding.textViewCommentRecyclerViewCellUsername;
        
        this.sI = eVar;
        view.setOnClickListener(this);
        this.imageView_userThumb.setOnClickListener(this);
        this.button_viewMore.setOnClickListener(this);
        this.imageView_likeIcon.setOnClickListener(this);
        this.textView_likeCount.setOnClickListener(this);
        this.textView_username.setOnClickListener(this);
        this.button_hide.setOnClickListener(this);
        this.button_dirty.setOnClickListener(this);
        this.button_tools.setOnClickListener(this);
        this.button_top.setOnClickListener(this);
        this.imageView_option.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.imageView_comment_recycler_view_cell_like_icon || view.getId() == R.id.textView_comment_recycler_view_cell_like_count) {
            this.sI.Q(getAdapterPosition());
        } else if (view.getId() == R.id.button_comment_recycler_view_cell_view_more) {
            this.sI.N(getAdapterPosition());
        } else if (view.getId() == R.id.imageView_comment_recycler_view_cell_user_thumb) {
            this.sI.P(getAdapterPosition());
        } else if (view.getId() == R.id.textView_comment_recycler_view_cell_view_content_page) {
            this.sI.O(getAdapterPosition());
        } else if (view.getId() == R.id.textView_comment_recycler_view_cell_username) {
            this.sI.R(getAdapterPosition());
        } else if (view.getId() == R.id.button_comment_recycler_view_cell_hide) {
            this.sI.S(getAdapterPosition());
        } else if (view.getId() == R.id.button_comment_recycler_view_cell_tools) {
            this.sI.A(getAdapterPosition());
        } else if (view.getId() == R.id.button_comment_recycler_view_cell_top) {
            this.sI.T(getAdapterPosition());
        } else if (view.getId() == R.id.button_comment_recycler_view_cell_dirty) {
            this.sI.U(getAdapterPosition());
        } else if (view.getId() == R.id.imageView_comment_recycler_view_cell_option) {
            this.sI.V(getAdapterPosition());
        } else {
            this.sI.C(getAdapterPosition());
        }
        Log.d(TAG, "onClick--> position = " + getAdapterPosition());
    }
}
