package com.picacomic.fregata.fragments;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.picacomic.fregata.databinding.FragmentSupportUsQqalipayBinding;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class SupportUsQQAlipayFragment extends BaseFragment implements View.OnClickListener {
    public static final String TAG = "SupportUsQQAlipayFragment";

    FragmentSupportUsQqalipayBinding binding;
    TextView textView_alipay;
    TextView textView_alipayTitle;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentSupportUsQqalipayBinding.inflate(layoutInflater, viewGroup, false);
        this.textView_alipay = this.binding.textViewSupportUsAlipay;
        this.textView_alipayTitle = this.binding.textViewSupportUsAlipayTitle;
        a(this.binding.getRoot());
        return this.binding.getRoot();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.textView_alipayTitle.setOnClickListener(this);
        this.textView_alipay.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.textView_support_us_alipay || view.getId() == R.id.textView_support_us_alipay_title) {
            FragmentActivity activity = getActivity();
            getActivity();
            ((ClipboardManager) activity.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", getString(R.string.support_us_alipay_account)));
            Toast.makeText(getContext(), R.string.alert_copied, 0).show();
        }
    }
}
