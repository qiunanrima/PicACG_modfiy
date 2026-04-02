package com.picacomic.fregata.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.g;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: EmojiGridViewAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public class b extends BaseAdapter {
    public static final String TAG = "b";
    WeakReference<Context> jJ;
    LayoutInflater jc;
    public final int jI = 128512;
    public final int[] jK = {128512, 128513, 128514, 128515, 128516, 128517, 128518, 128519, 128520, 128521, 128522, 128523, 128524, 128525, 128526, 128527, 128528, 128529, 128530, 128531, 128532, 128533, 128534, 128535, 128536, 128537, 128538, 128539, 128540, 128541, 128542, 128543, 128544, 128545, 128546, 128547, 128548, 128549, 128550, 128551, 128552, 128553, 128554, 128555, 128556, 128557, 128558, 128559, 128560, 128561, 128562, 128563, 128564, 128565, 128566, 9762, 9994, 9995, 9996, 127828, 127867, 127861, 127820};

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public b(Context context) {
        this.jJ = new WeakReference<>(context);
        this.jc = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.jK.length;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView;
        if (view == null) {
            View viewInflate = this.jc.inflate(R.layout.item_emoji_cell, viewGroup, false);
            textView = (TextView) viewInflate;
            viewInflate.setTag(textView);
        } else {
            textView = (TextView) view.getTag();
        }
        textView.setText(g.ae(this.jK[i]));
        return textView;
    }
}
