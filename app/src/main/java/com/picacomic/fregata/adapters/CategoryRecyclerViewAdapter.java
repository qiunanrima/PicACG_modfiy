package com.picacomic.fregata.adapters;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.holders.CategoryViewHolder;
import com.picacomic.fregata.holders.CategoryWebViewHolder;
import com.picacomic.fregata.objects.CategoryObject;
import com.picacomic.fregata.objects.DefaultCategoryObject;
import com.picacomic.fregata.utils.RoundedCornersTransformation;
import com.squareup.picasso.Transformation;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CategoryRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public static final String TAG = "CategoryRecyclerViewAdapter";
    private final Context context;
    private k jb;
    ArrayList<DefaultCategoryObject> jg;
    ArrayList<CategoryObject> jh;
    private final LayoutInflater mLayoutInflater;
    final int radius = 40;
    final int ji = 0;
    final Transformation jj = new RoundedCornersTransformation(40, 0);

    public CategoryRecyclerViewAdapter(Context context, ArrayList<DefaultCategoryObject> arrayList, ArrayList<CategoryObject> arrayList2, k kVar) {
        this.context = context;
        this.mLayoutInflater = LayoutInflater.from(context);
        this.jh = arrayList2;
        this.jg = arrayList;
        this.jb = kVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 2) {
            return new CategoryWebViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_category_webview_recycler_view_cell, viewGroup, false));
        }
        return new CategoryViewHolder(this.context, this.mLayoutInflater.inflate(R.layout.item_category_recycler_view_cell, viewGroup, false), this.jb);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        int i2;
        if (viewHolder instanceof CategoryWebViewHolder) {
            if (this.jg == null || this.jg.size() <= i) {
                return;
            }
            ((CategoryWebViewHolder) viewHolder).a(this.jg.get(i));
            return;
        }
        if (getItemViewType(i) == 0) {
            if (this.jg == null || this.jg.size() <= i) {
                return;
            }
            ((CategoryViewHolder) viewHolder).a(this.jg.get(i));
            return;
        }
        int size = this.jg != null ? 0 + this.jg.size() : 0;
        if (this.jh == null || this.jh.size() <= (i2 = i - size)) {
            return;
        }
        ((CategoryViewHolder) viewHolder).a(this.jh.get(i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.jg == null) {
            return 1;
        }
        if (i == 3 && this.jg.size() > 3) {
            return 2;
        }
        return i < this.jg.size() ? 0 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int size = this.jh != null ? 0 + this.jh.size() : 0;
        return this.jg != null ? size + this.jg.size() : size;
    }
}
