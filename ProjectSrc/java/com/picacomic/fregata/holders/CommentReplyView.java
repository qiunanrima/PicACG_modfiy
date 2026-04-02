package com.picacomic.fregata.holders;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.e;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: classes.dex */
public class CommentReplyView extends LinearLayout implements View.OnClickListener {
    public static final String TAG = "CommentReplyView";

    @BindView(R.id.button_comment_reply_recycler_view_cell_hide)
    public Button button_hide;

    @BindView(R.id.imageView_comment_reply_recycler_view_cell_like_icon)
    public ImageView imageView_likeIcon;

    @BindView(R.id.imageView_comment_recycler_view_cell_option)
    public ImageView imageView_option;

    @BindView(R.id.imageView_comment_reply_recycler_view_cell_user_thumb)
    public CircleImageView imageView_userThumb;

    @BindView(R.id.imageView_comment_reply_recycler_view_cell_user_thumb_verified)
    public ImageView imageView_userVerified;
    public int jB;
    e sI;
    public int sK;

    @BindView(R.id.textView_comment_reply_recycler_view_cell_content)
    public TextView textView_content;

    @BindView(R.id.textView_comment_reply_recycler_view_cell_created_date)
    public TextView textView_createdDate;

    @BindView(R.id.textView_comment_reply_recycler_view_cell_floor)
    public TextView textView_floor;

    @BindView(R.id.textView_comment_reply_recycler_view_cell_level)
    public TextView textView_level;

    @BindView(R.id.textView_comment_reply_recycler_view_cell_like_count)
    public TextView textView_likeCount;

    @BindView(R.id.textView_comment_reply_recycler_view_cell_title)
    public TextView textView_title;

    @BindView(R.id.textView_comment_reply_recycler_view_cell_username)
    public TextView textView_username;

    public CommentReplyView(Context context, e eVar, int i, int i2) {
        super(context);
        inflate(context, R.layout.item_comment_reply_recycler_view_cell, this);
        this.sI = eVar;
        this.sK = i;
        this.jB = i2;
        ButterKnife.bind(this);
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
