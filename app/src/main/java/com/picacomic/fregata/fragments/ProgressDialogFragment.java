package com.picacomic.fregata.fragments;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.e;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class ProgressDialogFragment extends DialogFragment {
    public static final String TAG = "ProgressDialogFragment";
    public String rd;
    AnimationDrawable re;

    public static ProgressDialogFragment dH() {
        ProgressDialogFragment progressDialogFragment = new ProgressDialogFragment();
        progressDialogFragment.setArguments(new Bundle());
        return progressDialogFragment;
    }

    public static ProgressDialogFragment ai(String str) {
        ProgressDialogFragment progressDialogFragment = new ProgressDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString("PROGRESS_MESSAGE", str);
        progressDialogFragment.setArguments(bundle);
        return progressDialogFragment;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.rd = getArguments().getString("PROGRESS_MESSAGE", "");
        } else {
            this.rd = "";
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_progress_dialog, (ViewGroup) null, false);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.imageView_loading_animation);
        ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
        TextView textView = (TextView) viewInflate.findViewById(R.id.textView_progress);
        if (getContext() != null && progressBar != null && imageView != null && textView != null) {
            if (e.x(getContext())) {
                progressBar.setVisibility(0);
                imageView.setVisibility(8);
            } else {
                progressBar.setVisibility(8);
                imageView.setVisibility(0);
                try {
                    Picasso.with(getContext()).load("TestingLink").placeholder(R.drawable.loading_animation_big).into(imageView);
                } catch (OutOfMemoryError e) {
                    e.printStackTrace();
                }
            }
            textView.setText(this.rd);
        }
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.getWindow().requestFeature(1);
        dialogOnCreateDialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialogOnCreateDialog.setCancelable(false);
        dialogOnCreateDialog.setCanceledOnTouchOutside(true);
        dialogOnCreateDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.picacomic.fregata.fragments.ProgressDialogFragment.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 4 || i == 84;
            }
        });
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        System.gc();
        if (isAdded()) {
            dismiss();
            this.re.stop();
            this.re = null;
        }
        super.onDetach();
    }
}
