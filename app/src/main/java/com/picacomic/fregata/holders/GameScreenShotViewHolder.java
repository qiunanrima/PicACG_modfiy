package com.picacomic.fregata.holders;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.picacomic.fregata.databinding.ItemGameDetailScreenshotRecyclerViewCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.objects.ThumbnailObject;
import com.picacomic.fregata.utils.PicassoTransformations;
import com.picacomic.fregata.utils.g;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class GameScreenShotViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "GameScreenShotViewHolder";
    Context context;

    ItemGameDetailScreenshotRecyclerViewCellBinding binding;
    public ImageView imageView_screenShot;
    k je;

    public GameScreenShotViewHolder(Context context, View view, k kVar) {
        super(view);
        this.binding = ItemGameDetailScreenshotRecyclerViewCellBinding.bind(view);
        this.imageView_screenShot = this.binding.imageViewGameDetailScreenshot;
        this.context = context;
        this.je = kVar;
        view.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.je.C(getAdapterPosition());
        Log.d(TAG, "onClick--> position = " + getAdapterPosition());
    }

    public void a(ThumbnailObject thumbnailObject) {
        Picasso.with(this.context).load(g.b(thumbnailObject)).transform(PicassoTransformations.SCREENSHOT).placeholder(R.drawable.placeholder_avatar_2).into(this.imageView_screenShot);
    }
}
