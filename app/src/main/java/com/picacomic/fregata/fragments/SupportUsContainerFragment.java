package com.picacomic.fregata.fragments;

import android.os.Bundle;
import com.google.android.material.tabs.TabLayout;
import androidx.viewpager.widget.ViewPager;
import androidx.appcompat.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.picacomic.fregata.databinding.FragmentSupportUsContainerBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.adapters.SupportUsFragmentPagerAdapter;
import com.picacomic.fregata.utils.views.AlertDialogCenter;

/* JADX INFO: loaded from: classes.dex */
public class SupportUsContainerFragment extends BaseFragment {
    public static final String TAG = "SupportUsContainerFragment";
    SupportUsFragmentPagerAdapter rO;

    FragmentSupportUsContainerBinding binding;
    TabLayout tabLayout;
    Toolbar toolbar;
    ViewPager viewPager_tags;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentSupportUsContainerBinding.inflate(layoutInflater, viewGroup, false);
        this.tabLayout = this.binding.tabs;
        this.toolbar = this.binding.toolbar;
        this.viewPager_tags = this.binding.viewPagerSupportUs;
        return this.binding.getRoot();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.rO = new SupportUsFragmentPagerAdapter(getChildFragmentManager());
        this.viewPager_tags.setAdapter(this.rO);
        this.tabLayout.setupWithViewPager(this.viewPager_tags);
        TabLayout.Tab tabAt = this.tabLayout.getTabAt(0);
        this.tabLayout.getTabAt(0).setText(R.string.support_us_tab_qq);
        tabAt.setText(R.string.support_us_tab_qq);
        TabLayout.Tab tabAt2 = this.tabLayout.getTabAt(1);
        this.tabLayout.getTabAt(1).setText(R.string.support_us_tab_group);
        tabAt2.setText(R.string.support_us_tab_group);
        TabLayout.Tab tabAt3 = this.tabLayout.getTabAt(2);
        this.tabLayout.getTabAt(2).setText(R.string.support_us_tab_ads);
        tabAt3.setText(R.string.support_us_tab_ads);
        this.tabLayout.setTabMode(0);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        a(this.toolbar, R.string.title_support_us, true);
        if (getActivity() != null && (getActivity() instanceof MainActivity)) {
            ((MainActivity) getActivity()).t(8);
        }
        AlertDialogCenter.showCustomAlertDialog(getActivity(), R.drawable.icon_success, R.string.alert_support_us_title, R.string.alert_support_us);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
    }
}
