package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemCommentTopReplacementRecyclerViewCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.e;

/* JADX INFO: loaded from: classes.dex */
public class CommentTopReplacementViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "CommentTopReplacementViewHolder";
    e sI;

    ItemCommentTopReplacementRecyclerViewCellBinding binding;
    public TextView textView_floor;

    public CommentTopReplacementViewHolder(View view, e eVar) {
        super(view);
        this.binding = ItemCommentTopReplacementRecyclerViewCellBinding.bind(view);
        this.textView_floor = this.binding.textViewCommentRecyclerViewCellFloor;
        this.sI = eVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Log.d(TAG, "onClick--> position = " + getAdapterPosition());
    }
}
