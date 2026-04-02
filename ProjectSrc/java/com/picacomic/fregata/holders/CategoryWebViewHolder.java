package com.picacomic.fregata.holders;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;
import com.picacomic.fregata.objects.DefaultCategoryObject;
import com.picacomic.fregata.utils.a;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.SquareWebview;

/* JADX INFO: loaded from: classes.dex */
public class CategoryWebViewHolder extends RecyclerView.ViewHolder {
    public static final String TAG = "CategoryWebViewHolder";
    Context context;

    @BindView(R.id.textView_category_recycler_view_cell_title)
    public TextView textView_title;

    @BindView(R.id.webview_category_recycler_view_cell)
    public SquareWebview webview;

    public CategoryWebViewHolder(Context context, View view) {
        super(view);
        this.context = context;
        ButterKnife.bind(this, view);
    }

    public void a(DefaultCategoryObject defaultCategoryObject) {
        this.textView_title.setText(defaultCategoryObject.getTitle());
        g.k(this.webview);
        this.webview.loadUrl(a.dU());
    }
}
