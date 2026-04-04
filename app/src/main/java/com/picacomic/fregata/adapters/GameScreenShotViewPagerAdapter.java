package com.picacomic.fregata.adapters;

import android.content.Context;
import androidx.viewpager.widget.PagerAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.picacomic.fregata.objects.ThumbnailObject;
import com.picacomic.fregata.utils.g;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class GameScreenShotViewPagerAdapter extends PagerAdapter {
    public static final String TAG = "GameScreenShotViewPagerAdapter";
    Context context;
    ArrayList<ThumbnailObject> ja;
    LayoutInflater jc;
    RelativeLayout.LayoutParams jd = new RelativeLayout.LayoutParams(-1, -1);

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public GameScreenShotViewPagerAdapter(Context context, ArrayList<ThumbnailObject> arrayList) {
        this.context = context;
        this.jc = LayoutInflater.from(context);
        this.ja = arrayList;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        if (this.ja == null) {
            return 0;
        }
        return this.ja.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        ImageView imageView = new ImageView(this.context);
        imageView.setLayoutParams(this.jd);
        ImageView imageView2 = imageView;
        imageView2.setScaleType(ImageView.ScaleType.FIT_CENTER);
        Picasso.with(this.context).load(g.b(this.ja.get(i))).into(imageView2);
        viewGroup.addView(imageView);
        return imageView;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }
}
