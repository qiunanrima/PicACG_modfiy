package com.picacomic.fregata.adapters;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.picacomic.fregata.fragments.SupportUsAdsGameFragment;
import com.picacomic.fregata.fragments.SupportUsOfficalGroupFragment;
import com.picacomic.fregata.fragments.SupportUsQQAlipayFragment;

/* JADX INFO: loaded from: classes.dex */
public class SupportUsFragmentPagerAdapter extends FragmentPagerAdapter {
    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return 3;
    }

    public SupportUsFragmentPagerAdapter(FragmentManager fragmentManager) {
        super(fragmentManager);
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        switch (i) {
            case 0:
                return new SupportUsQQAlipayFragment();
            case 1:
                return new SupportUsOfficalGroupFragment();
            case 2:
                return new SupportUsAdsGameFragment();
            default:
                return null;
        }
    }
}
