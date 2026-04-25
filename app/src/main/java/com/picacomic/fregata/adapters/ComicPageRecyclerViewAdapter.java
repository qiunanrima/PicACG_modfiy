package com.picacomic.fregata.adapters;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.picacomic.fregata.R;
import com.picacomic.fregata.holders.AdvertisementListViewHolder;
import com.picacomic.fregata.holders.ComicPageViewHolder;
import com.picacomic.fregata.objects.ComicPageObject;
import com.picacomic.fregata.objects.databaseTable.DownloadComicPageObject;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import com.squareup.picasso.Picasso;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ComicPageRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public static final String TAG = "ComicPageRecyclerViewAdapter";
    private final Context context;
    private boolean hB;
    private boolean hC;
    private ArrayList<ComicPageObject> ja;
    int jr;
    Display ju;
    boolean jv;
    int jy;
    private final LayoutInflater mLayoutInflater;
    final int VIEW_TYPE_NORMAL = 0;
    final int jo = 1;
    final int jp = 2;
    private FrameLayout.LayoutParams jw = new FrameLayout.LayoutParams(-1, -2);
    private FrameLayout.LayoutParams jx = new FrameLayout.LayoutParams(-1, -1);
    final String defaultUrl = com.picacomic.fregata.utils.a.dS();
    int hP = 0;

    public ComicPageRecyclerViewAdapter(Context context, ArrayList<ComicPageObject> arrayList) {
        this.jy = 0;
        this.context = context;
        this.mLayoutInflater = LayoutInflater.from(context);
        this.ja = arrayList;
        this.ju = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        this.jr = (arrayList.size() / 20) + 1;
        this.jv = e.x(context);
        this.jy = com.picacomic.fregata.c.a.uO[e.R(context)];
        f.D(TAG, "Target Size = " + this.jy);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 2) {
            return new AdvertisementListViewHolder(this.mLayoutInflater.inflate(R.layout.item_advertisement_list_cell, viewGroup, false));
        }
        return new ComicPageViewHolder(this.mLayoutInflater.inflate(R.layout.item_comic_page_recycler_view_cell, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        String strB;
        if (viewHolder instanceof AdvertisementListViewHolder) {
            ((AdvertisementListViewHolder) viewHolder).webView_ads.loadUrl(this.defaultUrl);
            return;
        }
        if (viewHolder instanceof ComicPageViewHolder) {
            int i2 = i - (i / 21);
            if (this.ja == null || this.ja.size() <= i2) {
                return;
            }
            if (this.ja.get(i2).getMedia() == null) {
                ComicPageViewHolder comicPageViewHolder = (ComicPageViewHolder) viewHolder;
                comicPageViewHolder.textView_page.setText("" + this.ja.get(i2).getComicPageId());
                comicPageViewHolder.imageView_image.setImageBitmap(null);
                return;
            }
            DownloadComicPageObject downloadComicPageObjectAz = com.picacomic.fregata.utils.b.az(this.ja.get(i2).getComicPageId());
            if (downloadComicPageObjectAz != null) {
                File file = new File(downloadComicPageObjectAz.getStorageFolder(), downloadComicPageObjectAz.getEpisodeId() + "/" + downloadComicPageObjectAz.getMediaPath());
                if (file.exists() && file.canRead() && file.length() > 0) {
                    f.D(TAG, "Can read local image: " + file.getAbsolutePath());
                    strB = "file:" + file;
                } else {
                    strB = g.b(this.ja.get(i2).getMedia());
                    f.D(TAG, "Cannot read local image: " + file.getAbsolutePath());
                }
            } else {
                f.D(TAG, "Read Network image: ");
                strB = g.b(this.ja.get(i2).getMedia());
            }
            if (this.jv) {
                Picasso.with(this.context).load(strB).placeholder(R.drawable.placeholder_transparent_low).into(((ComicPageViewHolder) viewHolder).imageView_image);
            } else {
                Picasso.with(this.context).load(strB).placeholder(R.drawable.placeholder_transparent).into(((ComicPageViewHolder) viewHolder).imageView_image);
            }
            ComicPageViewHolder comicPageViewHolder2 = (ComicPageViewHolder) viewHolder;
            comicPageViewHolder2.textView_page.setText("" + (i2 + 1 + this.hP));
            if (this.hC) {
                comicPageViewHolder2.frameLayout_container.setLayoutParams(this.jw);
                comicPageViewHolder2.imageView_image.setLayoutParams(this.jw);
            } else {
                comicPageViewHolder2.frameLayout_container.setLayoutParams(this.jx);
                comicPageViewHolder2.imageView_image.setLayoutParams(this.jx);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return ((i == 0 || (i + 1) % 21 != 0) && i != (this.ja.size() + this.jr) + (-1)) ? 0 : 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        this.jr = (this.ja.size() / 20) + 1;
        if (this.ja == null) {
            return 0;
        }
        return this.ja.size() + this.jr;
    }

    public void q(boolean z) {
        this.hB = z;
    }

    public void r(boolean z) {
        this.hC = z;
    }

    public void y(int i) {
        this.hP = i;
    }
}
