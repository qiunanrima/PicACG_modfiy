package com.picacomic.fregata.holders;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemAnonymousChatCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.objects.AnonymousChatDataObject;

/* JADX INFO: loaded from: classes.dex */
public class AnonymousChatViewHolder extends RecyclerView.ViewHolder {
    public static final String TAG = "AnonymousChatViewHolder";

    ItemAnonymousChatCellBinding binding;
    TextView textView_message;

    public AnonymousChatViewHolder(View view) {
        super(view);
        this.binding = ItemAnonymousChatCellBinding.bind(view);
        this.textView_message = this.binding.textViewAnonymousChatCellMessage;
    }

    public void a(AnonymousChatDataObject anonymousChatDataObject) {
        if (anonymousChatDataObject == null || anonymousChatDataObject.getMessage() == null) {
            return;
        }
        this.textView_message.setText(anonymousChatDataObject.getMessage() + "");
    }
}
