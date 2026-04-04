package com.picacomic.fregata.adapters;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.holders.SupportUsPayPalViewHolder;
import com.picacomic.fregata.objects.SupportUsPayPalObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class SupportUsPayPalRecyclerViewAdapter extends RecyclerView.Adapter<SupportUsPayPalViewHolder> {
    public static final String TAG = "SupportUsPayPalRecyclerViewAdapter";
    private final Context context;
    private ArrayList<SupportUsPayPalObject> ja;
    private k jb;
    private final LayoutInflater mLayoutInflater;

    public SupportUsPayPalRecyclerViewAdapter(Context context, ArrayList<SupportUsPayPalObject> arrayList, k kVar) {
        this.context = context;
        this.mLayoutInflater = LayoutInflater.from(context);
        this.ja = arrayList;
        this.jb = kVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public SupportUsPayPalViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new SupportUsPayPalViewHolder(this.mLayoutInflater.inflate(R.layout.item_support_us_paypal_recycler_view_cell, viewGroup, false), this.jb);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(SupportUsPayPalViewHolder supportUsPayPalViewHolder, int i) {
        SupportUsPayPalObject supportUsPayPalObject;
        if (this.ja == null || this.ja.size() <= i || (supportUsPayPalObject = this.ja.get(i)) == null) {
            return;
        }
        if (supportUsPayPalObject.imageId != -1) {
            supportUsPayPalViewHolder.imageView_image.setImageResource(supportUsPayPalObject.imageId);
        }
        if (supportUsPayPalObject.title != null) {
            supportUsPayPalViewHolder.textView_title.setText(supportUsPayPalObject.title + "");
        }
        if (supportUsPayPalObject.priceUnit != null) {
            supportUsPayPalViewHolder.textView_priceUnit.setText(supportUsPayPalObject.priceUnit + "");
        }
        if (supportUsPayPalObject.price != null) {
            supportUsPayPalViewHolder.textView_price.setText(supportUsPayPalObject.price + "");
        }
        if (supportUsPayPalObject.description != null) {
            supportUsPayPalViewHolder.textView_description.setText(supportUsPayPalObject.description + "");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.ja == null) {
            return 0;
        }
        return this.ja.size();
    }
}
