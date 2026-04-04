package com.picacomic.fregata.adapters;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.picacomic.fregata.fragments.LeaderboardKnightFragment;
import com.picacomic.fregata.fragments.LeaderboardPopularFragment;

/* JADX INFO: loaded from: classes.dex */
public class LeaderboardFragmentPagerAdapter extends FragmentPagerAdapter {
    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return 2;
    }

    public LeaderboardFragmentPagerAdapter(FragmentManager fragmentManager) {
        super(fragmentManager);
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        switch (i) {
            case 0:
                return new LeaderboardPopularFragment();
            case 1:
                return new LeaderboardKnightFragment();
            default:
                return null;
        }
    }
}
