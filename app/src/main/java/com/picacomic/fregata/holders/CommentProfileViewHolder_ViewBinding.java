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
public class CommentProfileViewHolder_ViewBinding implements Unbinder {
    private CommentProfileViewHolder sJ;

    @UiThread
    public CommentProfileViewHolder_ViewBinding(CommentProfileViewHolder commentProfileViewHolder, View view) {
        this.sJ = commentProfileViewHolder;
        commentProfileViewHolder.textView_content = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_content, "field 'textView_content'", TextView.class);
        commentProfileViewHolder.textView_likeCount = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_like_count, "field 'textView_likeCount'", TextView.class);
        commentProfileViewHolder.textView_replyCount = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_reply_count, "field 'textView_replyCount'", TextView.class);
        commentProfileViewHolder.textView_createdDate = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_created_date, "field 'textView_createdDate'", TextView.class);
        commentProfileViewHolder.textView_username = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_username, "field 'textView_username'", TextView.class);
        commentProfileViewHolder.textView_floor = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_floor, "field 'textView_floor'", TextView.class);
        commentProfileViewHolder.textView_level = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_level, "field 'textView_level'", TextView.class);
        commentProfileViewHolder.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_title, "field 'textView_title'", TextView.class);
        commentProfileViewHolder.imageView_likeIcon = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comment_recycler_view_cell_like_icon, "field 'imageView_likeIcon'", ImageView.class);
        commentProfileViewHolder.imageView_userThumb = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comment_recycler_view_cell_user_thumb, "field 'imageView_userThumb'", ImageView.class);
        commentProfileViewHolder.imageView_userVerified = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comment_recycler_view_cell_user_thumb_verified, "field 'imageView_userVerified'", ImageView.class);
        commentProfileViewHolder.linearLayout_reply = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_comment_recycler_view_cell_reply, "field 'linearLayout_reply'", LinearLayout.class);
        commentProfileViewHolder.button_viewMore = (Button) Utils.findRequiredViewAsType(view, R.id.button_comment_recycler_view_cell_view_more, "field 'button_viewMore'", Button.class);
        commentProfileViewHolder.textView_noReply = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_no_reply, "field 'textView_noReply'", TextView.class);
        commentProfileViewHolder.textView_viewContentPage = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_view_content_page, "field 'textView_viewContentPage'", TextView.class);
        commentProfileViewHolder.button_hide = (Button) Utils.findRequiredViewAsType(view, R.id.button_comment_recycler_view_cell_hide, "field 'button_hide'", Button.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CommentProfileViewHolder commentProfileViewHolder = this.sJ;
        if (commentProfileViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sJ = null;
        commentProfileViewHolder.textView_content = null;
        commentProfileViewHolder.textView_likeCount = null;
        commentProfileViewHolder.textView_replyCount = null;
        commentProfileViewHolder.textView_createdDate = null;
        commentProfileViewHolder.textView_username = null;
        commentProfileViewHolder.textView_floor = null;
        commentProfileViewHolder.textView_level = null;
        commentProfileViewHolder.textView_title = null;
        commentProfileViewHolder.imageView_likeIcon = null;
        commentProfileViewHolder.imageView_userThumb = null;
        commentProfileViewHolder.imageView_userVerified = null;
        commentProfileViewHolder.linearLayout_reply = null;
        commentProfileViewHolder.button_viewMore = null;
        commentProfileViewHolder.textView_noReply = null;
        commentProfileViewHolder.textView_viewContentPage = null;
        commentProfileViewHolder.button_hide = null;
    }
}
