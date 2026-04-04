package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.fragments.SupportUsPayPalFragment;

/* JADX INFO: loaded from: classes.dex */
public class SupportUsPayPalViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = SupportUsPayPalFragment.class.getSimpleName();

    @BindView(R.id.imageView_support_us_paypal_recycler_view_cell)
    public ImageView imageView_image;
    public k je;

    @BindView(R.id.textView_support_us_paypal_recycler_view_cell_description)
    public TextView textView_description;

    @BindView(R.id.textView_support_us_paypal_recycler_view_cell_price)
    public TextView textView_price;

    @BindView(R.id.textView_support_us_paypal_recycler_view_cell_price_unit)
    public TextView textView_priceUnit;

    @BindView(R.id.textView_support_us_paypal_recycler_view_cell_title)
    public TextView textView_title;

    public SupportUsPayPalViewHolder(View view, k kVar) {
        super(view);
        ButterKnife.bind(this, view);
        this.je = kVar;
        view.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.je.C(getAdapterPosition());
        Log.d(TAG, "onClick--> position = " + getAdapterPosition());
    }
}
