package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class CommentViewHolder_ViewBinding implements Unbinder {
    private CommentViewHolder sN;

    @UiThread
    public CommentViewHolder_ViewBinding(CommentViewHolder commentViewHolder, View view) {
        this.sN = commentViewHolder;
        commentViewHolder.textView_content = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_content, "field 'textView_content'", TextView.class);
        commentViewHolder.textView_likeCount = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_like_count, "field 'textView_likeCount'", TextView.class);
        commentViewHolder.textView_replyCount = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_reply_count, "field 'textView_replyCount'", TextView.class);
        commentViewHolder.textView_createdDate = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_created_date, "field 'textView_createdDate'", TextView.class);
        commentViewHolder.textView_username = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_username, "field 'textView_username'", TextView.class);
        commentViewHolder.textView_floor = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_floor, "field 'textView_floor'", TextView.class);
        commentViewHolder.textView_level = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_level, "field 'textView_level'", TextView.class);
        commentViewHolder.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_title, "field 'textView_title'", TextView.class);
        commentViewHolder.imageView_likeIcon = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comment_recycler_view_cell_like_icon, "field 'imageView_likeIcon'", ImageView.class);
        commentViewHolder.imageView_userThumb = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comment_recycler_view_cell_user_thumb, "field 'imageView_userThumb'", ImageView.class);
        commentViewHolder.imageView_userVerified = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comment_recycler_view_cell_user_thumb_verified, "field 'imageView_userVerified'", ImageView.class);
        commentViewHolder.linearLayout_reply = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_comment_recycler_view_cell_reply, "field 'linearLayout_reply'", LinearLayout.class);
        commentViewHolder.button_viewMore = (Button) Utils.findRequiredViewAsType(view, R.id.button_comment_recycler_view_cell_view_more, "field 'button_viewMore'", Button.class);
        commentViewHolder.textView_noReply = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_no_reply, "field 'textView_noReply'", TextView.class);
        commentViewHolder.linearLayout_tools = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_comment_recycler_view_cell_tools, "field 'linearLayout_tools'", LinearLayout.class);
        commentViewHolder.button_tools = (Button) Utils.findRequiredViewAsType(view, R.id.button_comment_recycler_view_cell_tools, "field 'button_tools'", Button.class);
        commentViewHolder.button_dirty = (Button) Utils.findRequiredViewAsType(view, R.id.button_comment_recycler_view_cell_dirty, "field 'button_dirty'", Button.class);
        commentViewHolder.button_top = (Button) Utils.findRequiredViewAsType(view, R.id.button_comment_recycler_view_cell_top, "field 'button_top'", Button.class);
        commentViewHolder.button_hide = (Button) Utils.findRequiredViewAsType(view, R.id.button_comment_recycler_view_cell_hide, "field 'button_hide'", Button.class);
        commentViewHolder.imageView_option = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comment_recycler_view_cell_option, "field 'imageView_option'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CommentViewHolder commentViewHolder = this.sN;
        if (commentViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sN = null;
        commentViewHolder.textView_content = null;
        commentViewHolder.textView_likeCount = null;
        commentViewHolder.textView_replyCount = null;
        commentViewHolder.textView_createdDate = null;
        commentViewHolder.textView_username = null;
        commentViewHolder.textView_floor = null;
        commentViewHolder.textView_level = null;
        commentViewHolder.textView_title = null;
        commentViewHolder.imageView_likeIcon = null;
        commentViewHolder.imageView_userThumb = null;
        commentViewHolder.imageView_userVerified = null;
        commentViewHolder.linearLayout_reply = null;
        commentViewHolder.button_viewMore = null;
        commentViewHolder.textView_noReply = null;
        commentViewHolder.linearLayout_tools = null;
        commentViewHolder.button_tools = null;
        commentViewHolder.button_dirty = null;
        commentViewHolder.button_top = null;
        commentViewHolder.button_hide = null;
        commentViewHolder.imageView_option = null;
    }
}
