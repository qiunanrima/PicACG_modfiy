package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ApkVersionListViewHolder_ViewBinding implements Unbinder {
    private ApkVersionListViewHolder sl;

    @UiThread
    public ApkVersionListViewHolder_ViewBinding(ApkVersionListViewHolder apkVersionListViewHolder, View view) {
        this.sl = apkVersionListViewHolder;
        apkVersionListViewHolder.textView_version = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_apk_version_list_recycler_view_cell_version, "field 'textView_version'", TextView.class);
        apkVersionListViewHolder.textView_content = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_apk_version_list_recycler_view_cell_content, "field 'textView_content'", TextView.class);
        apkVersionListViewHolder.textView_timestamp = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_apk_version_list_recycler_view_cell_timestamp, "field 'textView_timestamp'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ApkVersionListViewHolder apkVersionListViewHolder = this.sl;
        if (apkVersionListViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sl = null;
        apkVersionListViewHolder.textView_version = null;
        apkVersionListViewHolder.textView_content = null;
        apkVersionListViewHolder.textView_timestamp = null;
    }
}
