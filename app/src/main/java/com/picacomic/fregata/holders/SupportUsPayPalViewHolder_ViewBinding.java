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
public class SupportUsPayPalViewHolder_ViewBinding implements Unbinder {
    private SupportUsPayPalViewHolder sY;

    @UiThread
    public SupportUsPayPalViewHolder_ViewBinding(SupportUsPayPalViewHolder supportUsPayPalViewHolder, View view) {
        this.sY = supportUsPayPalViewHolder;
        supportUsPayPalViewHolder.imageView_image = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_support_us_paypal_recycler_view_cell, "field 'imageView_image'", ImageView.class);
        supportUsPayPalViewHolder.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_support_us_paypal_recycler_view_cell_title, "field 'textView_title'", TextView.class);
        supportUsPayPalViewHolder.textView_priceUnit = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_support_us_paypal_recycler_view_cell_price_unit, "field 'textView_priceUnit'", TextView.class);
        supportUsPayPalViewHolder.textView_price = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_support_us_paypal_recycler_view_cell_price, "field 'textView_price'", TextView.class);
        supportUsPayPalViewHolder.textView_description = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_support_us_paypal_recycler_view_cell_description, "field 'textView_description'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SupportUsPayPalViewHolder supportUsPayPalViewHolder = this.sY;
        if (supportUsPayPalViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sY = null;
        supportUsPayPalViewHolder.imageView_image = null;
        supportUsPayPalViewHolder.textView_title = null;
        supportUsPayPalViewHolder.textView_priceUnit = null;
        supportUsPayPalViewHolder.textView_price = null;
        supportUsPayPalViewHolder.textView_description = null;
    }
}
