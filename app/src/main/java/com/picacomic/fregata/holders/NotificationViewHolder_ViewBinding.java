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
public class NotificationViewHolder_ViewBinding implements Unbinder {
    private NotificationViewHolder sW;

    @UiThread
    public NotificationViewHolder_ViewBinding(NotificationViewHolder notificationViewHolder, View view) {
        this.sW = notificationViewHolder;
        notificationViewHolder.imageView_avatar = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_chatroom_recycler_view_cell_avatar, "field 'imageView_avatar'", ImageView.class);
        notificationViewHolder.imageView_character = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_chatroom_recycler_view_cell_verified, "field 'imageView_character'", ImageView.class);
        notificationViewHolder.textView_content = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_notification_content, "field 'textView_content'", TextView.class);
        notificationViewHolder.textView_timestamp = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_notification_timestamp, "field 'textView_timestamp'", TextView.class);
        notificationViewHolder.imageView_image = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_notification_image, "field 'imageView_image'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        NotificationViewHolder notificationViewHolder = this.sW;
        if (notificationViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sW = null;
        notificationViewHolder.imageView_avatar = null;
        notificationViewHolder.imageView_character = null;
        notificationViewHolder.textView_content = null;
        notificationViewHolder.textView_timestamp = null;
        notificationViewHolder.imageView_image = null;
    }
}
