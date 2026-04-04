package com.picacomic.fregata.holders;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemCategoryRecyclerViewCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.objects.CategoryObject;
import com.picacomic.fregata.objects.DefaultCategoryObject;
import com.picacomic.fregata.utils.g;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class CategoryViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "CategoryViewHolder";
    Context context;

    ItemCategoryRecyclerViewCellBinding binding;
    public ImageView imageView_image;
    k je;

    public TextView textView_title;

    public CategoryViewHolder(Context context, View view, k kVar) {
        super(view);
        this.binding = ItemCategoryRecyclerViewCellBinding.bind(view);
        this.imageView_image = this.binding.imageViewCategoryRecyclerViewCellImage;
        this.textView_title = this.binding.textViewCategoryRecyclerViewCellTitle;
        this.context = context;
        this.je = kVar;
        view.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.je.C(getAdapterPosition());
        Log.d(TAG, "onClick--> position = " + getAdapterPosition());
    }

    public void a(DefaultCategoryObject defaultCategoryObject) {
        this.imageView_image.setImageResource(defaultCategoryObject.getThumbId());
        this.textView_title.setText(defaultCategoryObject.getTitle());
    }

    public void a(CategoryObject categoryObject) {
        Picasso.with(this.context).load(g.b(categoryObject.getThumb())).placeholder(R.drawable.placeholder_avatar_2).into(this.imageView_image);
        this.textView_title.setText(categoryObject.getTitle());
    }
}
