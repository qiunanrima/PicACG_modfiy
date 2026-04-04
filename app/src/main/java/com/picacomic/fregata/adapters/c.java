package com.picacomic.fregata.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.picacomic.fregata.R;
import com.picacomic.fregata.objects.ComicEpisodeObject;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: compiled from: EpisodeDialogGridViewAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public class c extends BaseAdapter {
    WeakReference<Context> jJ;
    ArrayList<ComicEpisodeObject> jL;
    LayoutInflater jc;

    public c(Context context, ArrayList<ComicEpisodeObject> arrayList) {
        this.jJ = new WeakReference<>(context);
        this.jc = LayoutInflater.from(this.jJ.get());
        this.jL = arrayList;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.jL == null) {
            return 0;
        }
        return this.jL.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (this.jL == null) {
            return null;
        }
        if (this.jL == null || this.jL.size() != 0) {
            return this.jL.get(i);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        if (this.jL == null) {
            return 0L;
        }
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView;
        if (view == null) {
            View viewInflate = this.jc.inflate(R.layout.item_comic_viewer_episode_dialog_cell, viewGroup, false);
            textView = (TextView) viewInflate;
            viewInflate.setTag(textView);
        } else {
            textView = (TextView) view.getTag();
        }
        if (this.jL != null && this.jL.size() > i) {
            textView.setText(this.jL.get(i).getTitle() + "");
        }
        return textView;
    }
}
