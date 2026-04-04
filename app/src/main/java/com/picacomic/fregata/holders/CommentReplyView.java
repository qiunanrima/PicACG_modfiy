package com.picacomic.fregata.holders;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.view.LayoutInflater;
import com.picacomic.fregata.databinding.ItemCommentReplyRecyclerViewCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.e;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: classes.dex */
public class CommentReplyView extends LinearLayout implements View.OnClickListener {
    public static final String TAG = "CommentReplyView";

    ItemCommentReplyRecyclerViewCellBinding binding;
    public Button button_hide;
    public ImageView imageView_likeIcon;
    public ImageView imageView_option;
    public CircleImageView imageView_userThumb;
    public ImageView imageView_userVerified;
    public int jB;
    e sI;
    public int sK;
    public TextView textView_content;
    public TextView textView_createdDate;
    public TextView textView_floor;
    public TextView textView_level;
    public TextView textView_likeCount;
    public TextView textView_title;
    public TextView textView_username;

    public CommentReplyView(Context context, e eVar, int i, int i2) {
        super(context);
        this.binding = ItemCommentReplyRecyclerViewCellBinding.inflate(LayoutInflater.from(context), this, true);
        this.button_hide = this.binding.buttonCommentReplyRecyclerViewCellHide;
        this.imageView_likeIcon = this.binding.imageViewCommentReplyRecyclerViewCellLikeIcon;
        this.imageView_option = this.binding.imageViewCommentRecyclerViewCellOption;
        this.imageView_userThumb = this.binding.imageViewCommentReplyRecyclerViewCellUserThumb;
        this.imageView_userVerified = this.binding.imageViewCommentReplyRecyclerViewCellUserThumbVerified;
        this.textView_content = this.binding.textViewCommentReplyRecyclerViewCellContent;
        this.textView_createdDate = this.binding.textViewCommentReplyRecyclerViewCellCreatedDate;
        this.textView_floor = this.binding.textViewCommentReplyRecyclerViewCellFloor;
        this.textView_level = this.binding.textViewCommentReplyRecyclerViewCellLevel;
        this.textView_likeCount = this.binding.textViewCommentReplyRecyclerViewCellLikeCount;
        this.textView_title = this.binding.textViewCommentReplyRecyclerViewCellTitle;
        this.textView_username = this.binding.textViewCommentReplyRecyclerViewCellUsername;
        this.sI = eVar;
        this.sK = i;
        this.jB = i2;
        setOnClickListener(this);
        this.imageView_likeIcon.setOnClickListener(this);
        this.textView_likeCount.setOnClickListener(this);
        this.textView_username.setOnClickListener(this);
        this.button_hide.setOnClickListener(this);
        this.imageView_option.setOnClickListener(this);
    }

    public CommentReplyView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CommentReplyView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.imageView_comment_reply_recycler_view_cell_like_icon || view.getId() == R.id.textView_comment_reply_recycler_view_cell_like_count) {
            this.sI.g(this.sK, this.jB);
            return;
        }
        if (view.getId() == R.id.textView_comment_reply_recycler_view_cell_username) {
            this.sI.h(this.sK, this.jB);
            return;
        }
        if (view.getId() == R.id.button_comment_reply_recycler_view_cell_hide) {
            this.sI.i(this.sK, this.jB);
        } else if (view.getId() == R.id.imageView_comment_recycler_view_cell_option) {
            this.sI.j(this.sK, this.jB);
        } else {
            this.sI.f(this.sK, this.jB);
        }
    }
}
