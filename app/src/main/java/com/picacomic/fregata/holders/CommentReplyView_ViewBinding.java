package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: classes.dex */
public class CommentReplyView_ViewBinding implements Unbinder {
    private CommentReplyView sL;

    @UiThread
    public CommentReplyView_ViewBinding(CommentReplyView commentReplyView, View view) {
        this.sL = commentReplyView;
        commentReplyView.textView_content = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_reply_recycler_view_cell_content, "field 'textView_content'", TextView.class);
        commentReplyView.textView_likeCount = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_reply_recycler_view_cell_like_count, "field 'textView_likeCount'", TextView.class);
        commentReplyView.textView_createdDate = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_reply_recycler_view_cell_created_date, "field 'textView_createdDate'", TextView.class);
        commentReplyView.textView_username = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_reply_recycler_view_cell_username, "field 'textView_username'", TextView.class);
        commentReplyView.textView_floor = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_reply_recycler_view_cell_floor, "field 'textView_floor'", TextView.class);
        commentReplyView.textView_level = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_reply_recycler_view_cell_level, "field 'textView_level'", TextView.class);
        commentReplyView.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_reply_recycler_view_cell_title, "field 'textView_title'", TextView.class);
        commentReplyView.imageView_option = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comment_recycler_view_cell_option, "field 'imageView_option'", ImageView.class);
        commentReplyView.imageView_likeIcon = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comment_reply_recycler_view_cell_like_icon, "field 'imageView_likeIcon'", ImageView.class);
        commentReplyView.imageView_userThumb = (CircleImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comment_reply_recycler_view_cell_user_thumb, "field 'imageView_userThumb'", CircleImageView.class);
        commentReplyView.imageView_userVerified = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comment_reply_recycler_view_cell_user_thumb_verified, "field 'imageView_userVerified'", ImageView.class);
        commentReplyView.button_hide = (Button) Utils.findRequiredViewAsType(view, R.id.button_comment_reply_recycler_view_cell_hide, "field 'button_hide'", Button.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CommentReplyView commentReplyView = this.sL;
        if (commentReplyView == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sL = null;
        commentReplyView.textView_content = null;
        commentReplyView.textView_likeCount = null;
        commentReplyView.textView_createdDate = null;
        commentReplyView.textView_username = null;
        commentReplyView.textView_floor = null;
        commentReplyView.textView_level = null;
        commentReplyView.textView_title = null;
        commentReplyView.imageView_option = null;
        commentReplyView.imageView_likeIcon = null;
        commentReplyView.imageView_userThumb = null;
        commentReplyView.imageView_userVerified = null;
        commentReplyView.button_hide = null;
    }
}
