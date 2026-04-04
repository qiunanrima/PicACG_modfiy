package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementCellView_ViewBinding implements Unbinder {
    private AnnouncementCellView se;

    @UiThread
    public AnnouncementCellView_ViewBinding(AnnouncementCellView announcementCellView, View view) {
        this.se = announcementCellView;
        announcementCellView.imageView_image = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_announcement_cell_image, "field 'imageView_image'", ImageView.class);
        announcementCellView.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_announcement_cell_title, "field 'textView_title'", TextView.class);
        announcementCellView.textView_description = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_announcement_cell_description, "field 'textView_description'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AnnouncementCellView announcementCellView = this.se;
        if (announcementCellView == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.se = null;
        announcementCellView.imageView_image = null;
        announcementCellView.textView_title = null;
        announcementCellView.textView_description = null;
    }
}
