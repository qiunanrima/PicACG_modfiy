package com.picacomic.fregata.holders;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemCategoryWebviewRecyclerViewCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.objects.DefaultCategoryObject;
import com.picacomic.fregata.utils.a;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.SquareWebview;

/* JADX INFO: loaded from: classes.dex */
public class CategoryWebViewHolder extends RecyclerView.ViewHolder {
    public static final String TAG = "CategoryWebViewHolder";
    Context context;

    ItemCategoryWebviewRecyclerViewCellBinding binding;
    public TextView textView_title;
    public SquareWebview webview;

    public CategoryWebViewHolder(Context context, View view) {
        super(view);
        this.context = context;
        this.binding = ItemCategoryWebviewRecyclerViewCellBinding.bind(view);
        this.textView_title = this.binding.textViewCategoryRecyclerViewCellTitle;
        this.webview = this.binding.webviewCategoryRecyclerViewCell;
    }

    public void a(DefaultCategoryObject defaultCategoryObject) {
        this.textView_title.setText(defaultCategoryObject.getTitle());
        g.k(this.webview);
        this.webview.loadUrl(a.dU());
    }
}
