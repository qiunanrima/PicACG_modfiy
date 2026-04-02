package com.picacomic.fregata.fragments;

import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import androidx.fragment.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.e;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class ProgressLoadingFragment extends DialogFragment {
    public static final String TAG = "ProgressLoadingFragment";
    AnimationDrawable re;

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(3, 0);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        if (isAdded()) {
            dismiss();
            this.re.stop();
            this.re = null;
        }
        super.onDetach();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        getDialog().getWindow().setGravity(49);
        View viewInflate = layoutInflater.inflate(R.layout.fragment_progress_loading, viewGroup, false);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.imageView_loading_animation);
        ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
        if (getContext() != null && imageView != null && progressBar != null) {
            if (e.x(getContext())) {
                imageView.setVisibility(8);
                progressBar.setVisibility(0);
            } else {
                imageView.setVisibility(0);
                progressBar.setVisibility(8);
                try {
                    Picasso.with(getContext()).load("TestingLink").placeholder(R.drawable.loading_animation).into(imageView);
                } catch (OutOfMemoryError e) {
                    e.printStackTrace();
                }
            }
        }
        return viewInflate;
    }
}
