package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class CommentFragment_ViewBinding implements Unbinder {
    private CommentFragment oC;

    @UiThread
    public CommentFragment_ViewBinding(CommentFragment commentFragment, View view) {
        this.oC = commentFragment;
        commentFragment.linearLayout_noComment = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_comment_no_comment, "field 'linearLayout_noComment'", LinearLayout.class);
        commentFragment.linearLayout_inputBar = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_comment_input_bar, "field 'linearLayout_inputBar'", LinearLayout.class);
        commentFragment.linearLayout_commentPage = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_comment_page, "field 'linearLayout_commentPage'", LinearLayout.class);
        commentFragment.recyclerView_comments = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_comments, "field 'recyclerView_comments'", RecyclerView.class);
        commentFragment.imageView_empty = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comment_empty, "field 'imageView_empty'", ImageView.class);
        commentFragment.textView_totalPage = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_total_page, "field 'textView_totalPage'", TextView.class);
        commentFragment.editText_currentPage = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_comment_current_page, "field 'editText_currentPage'", EditText.class);
        commentFragment.editText_inputField = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_comment_input_field, "field 'editText_inputField'", EditText.class);
        commentFragment.button_postComment = (Button) Utils.findRequiredViewAsType(view, R.id.button_comment_post, "field 'button_postComment'", Button.class);
        commentFragment.button_replyCancel = (Button) Utils.findRequiredViewAsType(view, R.id.button_comment_cancel_reply, "field 'button_replyCancel'", Button.class);
        commentFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CommentFragment commentFragment = this.oC;
        if (commentFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.oC = null;
        commentFragment.linearLayout_noComment = null;
        commentFragment.linearLayout_inputBar = null;
        commentFragment.linearLayout_commentPage = null;
        commentFragment.recyclerView_comments = null;
        commentFragment.imageView_empty = null;
        commentFragment.textView_totalPage = null;
        commentFragment.editText_currentPage = null;
        commentFragment.editText_inputField = null;
        commentFragment.button_postComment = null;
        commentFragment.button_replyCancel = null;
        commentFragment.toolbar = null;
    }
}
