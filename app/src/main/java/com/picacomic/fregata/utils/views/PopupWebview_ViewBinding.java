package com.picacomic.fregata.utils.views;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class PopupWebview_ViewBinding implements Unbinder {
    private PopupWebview target;

    @UiThread
    public PopupWebview_ViewBinding(PopupWebview popupWebview) {
        this(popupWebview, popupWebview);
    }

    @UiThread
    public PopupWebview_ViewBinding(PopupWebview popupWebview, View view) {
        this.target = popupWebview;
        popupWebview.relativeLayout_container = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.relativeLayout_popup_container, "field 'relativeLayout_container'", RelativeLayout.class);
        popupWebview.webView_banner = (WebView) Utils.findRequiredViewAsType(view, R.id.webview_popup, "field 'webView_banner'", WebView.class);
        popupWebview.linearLayout_web = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_web, "field 'linearLayout_web'", LinearLayout.class);
        popupWebview.imageButton_close = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_popup_close, "field 'imageButton_close'", ImageButton.class);
        popupWebview.textView_text = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_popup_text, "field 'textView_text'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        PopupWebview popupWebview = this.target;
        if (popupWebview == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        popupWebview.relativeLayout_container = null;
        popupWebview.webView_banner = null;
        popupWebview.linearLayout_web = null;
        popupWebview.imageButton_close = null;
        popupWebview.textView_text = null;
    }
}
