package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class CommentTopReplacementViewHolder_ViewBinding implements Unbinder {
    private CommentTopReplacementViewHolder sM;

    @UiThread
    public CommentTopReplacementViewHolder_ViewBinding(CommentTopReplacementViewHolder commentTopReplacementViewHolder, View view) {
        this.sM = commentTopReplacementViewHolder;
        commentTopReplacementViewHolder.textView_floor = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comment_recycler_view_cell_floor, "field 'textView_floor'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CommentTopReplacementViewHolder commentTopReplacementViewHolder = this.sM;
        if (commentTopReplacementViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sM = null;
        commentTopReplacementViewHolder.textView_floor = null;
    }
}
