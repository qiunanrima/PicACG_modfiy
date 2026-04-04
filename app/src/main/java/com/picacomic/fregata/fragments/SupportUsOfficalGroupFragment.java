package com.picacomic.fregata.fragments;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.picacomic.fregata.databinding.FragmentSupportUsOfficalGroupBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.views.AlertDialogCenter;

/* JADX INFO: loaded from: classes.dex */
public class SupportUsOfficalGroupFragment extends BaseFragment {
    public static final String TAG = "SupportUsOfficalGroupFragment";

    FragmentSupportUsOfficalGroupBinding binding;
    TextView textView_warning;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentSupportUsOfficalGroupBinding.inflate(layoutInflater, viewGroup, false);
        this.textView_warning = this.binding.textViewSupportUsOfficalGroupWarning;
        this.textView_warning.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.SupportUsOfficalGroupFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SupportUsOfficalGroupFragment.this.getContext() != null) {
                    AlertDialogCenter.showFaqAlertDialog(SupportUsOfficalGroupFragment.this.getContext(), "https://www.picacomic.com/faq", null);
                }
            }
        });
        return this.binding.getRoot();
    }
}
