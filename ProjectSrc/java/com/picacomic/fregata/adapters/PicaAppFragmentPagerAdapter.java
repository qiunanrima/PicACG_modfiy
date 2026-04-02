package com.picacomic.fregata.adapters;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.picacomic.fregata.fragments.ChatroomListFragment;
import com.picacomic.fregata.fragments.PicaAppListFragment;

/* JADX INFO: loaded from: classes.dex */
public class PicaAppFragmentPagerAdapter extends FragmentPagerAdapter {
    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return 2;
    }

    public PicaAppFragmentPagerAdapter(FragmentManager fragmentManager) {
        super(fragmentManager);
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        switch (i) {
            case 0:
                return new ChatroomListFragment();
            case 1:
                return new PicaAppListFragment();
            default:
                return null;
        }
    }
}
