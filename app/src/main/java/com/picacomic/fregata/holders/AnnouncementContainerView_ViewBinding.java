package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementContainerView_ViewBinding implements Unbinder {
    private AnnouncementContainerView si;

    @UiThread
    public AnnouncementContainerView_ViewBinding(AnnouncementContainerView announcementContainerView, View view) {
        this.si = announcementContainerView;
        announcementContainerView.imageView_icon = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_announcement_icon, "field 'imageView_icon'", ImageView.class);
        announcementContainerView.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_announcement_title, "field 'textView_title'", TextView.class);
        announcementContainerView.textView_count = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_announcement_view_count, "field 'textView_count'", TextView.class);
        announcementContainerView.linearLayout_content = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_announcement_content, "field 'linearLayout_content'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AnnouncementContainerView announcementContainerView = this.si;
        if (announcementContainerView == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.si = null;
        announcementContainerView.imageView_icon = null;
        announcementContainerView.textView_title = null;
        announcementContainerView.textView_count = null;
        announcementContainerView.linearLayout_content = null;
    }
}
