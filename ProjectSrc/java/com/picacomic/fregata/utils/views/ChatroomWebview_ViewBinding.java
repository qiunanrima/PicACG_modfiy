package com.picacomic.fregata.utils.views;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomWebview_ViewBinding implements Unbinder {
    private ChatroomWebview target;

    @UiThread
    public ChatroomWebview_ViewBinding(ChatroomWebview chatroomWebview) {
        this(chatroomWebview, chatroomWebview);
    }

    @UiThread
    public ChatroomWebview_ViewBinding(ChatroomWebview chatroomWebview, View view) {
        this.target = chatroomWebview;
        chatroomWebview.relativeLayout_container = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.relativeLayout_banner_container, "field 'relativeLayout_container'", RelativeLayout.class);
        chatroomWebview.webView_banner = (WebView) Utils.findRequiredViewAsType(view, R.id.webview_banner, "field 'webView_banner'", WebView.class);
        chatroomWebview.imageButton_close = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_banner_close, "field 'imageButton_close'", ImageButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChatroomWebview chatroomWebview = this.target;
        if (chatroomWebview == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        chatroomWebview.relativeLayout_container = null;
        chatroomWebview.webView_banner = null;
        chatroomWebview.imageButton_close = null;
    }
}
