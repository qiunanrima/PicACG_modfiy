package com.picacomic.fregata.fragments;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.g;

/* JADX INFO: loaded from: classes.dex */
public class TutorialPopupFragment extends DialogFragment {
    public static final String TAG = "TutorialPopupFragment";
    public String pA;

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.pA = getArguments().getString("IMAGE_URL", null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_image_popup, viewGroup, false);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.imageView_image_popup_large_image);
        try {
            imageView.setImageResource(R.drawable.tutorial_cat);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
        }
        ((ImageButton) viewInflate.findViewById(R.id.imageButton_image_popup_close_popup)).setVisibility(8);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.TutorialPopupFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TutorialPopupFragment.this.dismiss();
            }
        });
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.getWindow().requestFeature(1);
        dialogOnCreateDialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.copyFrom(dialogOnCreateDialog.getWindow().getAttributes());
        layoutParams.width = g.as(getContext());
        layoutParams.height = g.at(getContext());
        dialogOnCreateDialog.getWindow().setAttributes(layoutParams);
        dialogOnCreateDialog.setCancelable(false);
        dialogOnCreateDialog.setCanceledOnTouchOutside(false);
        dialogOnCreateDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.picacomic.fregata.fragments.TutorialPopupFragment.2
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
        }
        super.onDetach();
    }
}
