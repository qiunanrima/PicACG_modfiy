package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemSupportUsPaypalRecyclerViewCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.fragments.SupportUsPayPalFragment;

/* JADX INFO: loaded from: classes.dex */
public class SupportUsPayPalViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = SupportUsPayPalFragment.class.getSimpleName();

    ItemSupportUsPaypalRecyclerViewCellBinding binding;
    public ImageView imageView_image;
    public k je;
    public TextView textView_description;
    public TextView textView_price;
    public TextView textView_priceUnit;
    public TextView textView_title;

    public SupportUsPayPalViewHolder(View view, k kVar) {
        super(view);
        this.binding = ItemSupportUsPaypalRecyclerViewCellBinding.bind(view);
        this.imageView_image = this.binding.imageViewSupportUsPaypalRecyclerViewCell;
        this.textView_description = this.binding.textViewSupportUsPaypalRecyclerViewCellDescription;
        this.textView_price = this.binding.textViewSupportUsPaypalRecyclerViewCellPrice;
        this.textView_priceUnit = this.binding.textViewSupportUsPaypalRecyclerViewCellPriceUnit;
        this.textView_title = this.binding.textViewSupportUsPaypalRecyclerViewCellTitle;
        this.je = kVar;
        view.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.je.C(getAdapterPosition());
        Log.d(TAG, "onClick--> position = " + getAdapterPosition());
    }
}
