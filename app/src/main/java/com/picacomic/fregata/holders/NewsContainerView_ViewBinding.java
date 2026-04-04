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
public class NewsContainerView_ViewBinding implements Unbinder {
    private NewsContainerView sU;

    @UiThread
    public NewsContainerView_ViewBinding(NewsContainerView newsContainerView, View view) {
        this.sU = newsContainerView;
        newsContainerView.imageView_icon = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_news_icon, "field 'imageView_icon'", ImageView.class);
        newsContainerView.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_news_title, "field 'textView_title'", TextView.class);
        newsContainerView.imageView_viewMore = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_news_view_more, "field 'imageView_viewMore'", ImageView.class);
        newsContainerView.textView_count = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_news_view_count, "field 'textView_count'", TextView.class);
        newsContainerView.linearLayout_content = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_news_content, "field 'linearLayout_content'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        NewsContainerView newsContainerView = this.sU;
        if (newsContainerView == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sU = null;
        newsContainerView.imageView_icon = null;
        newsContainerView.textView_title = null;
        newsContainerView.imageView_viewMore = null;
        newsContainerView.textView_count = null;
        newsContainerView.linearLayout_content = null;
    }
}
