package com.picacomic.fregata.adapters;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.picacomic.fregata.fragments.CommentFragment;
import com.picacomic.fregata.fragments.ProfileComicFragment;
import com.picacomic.fregata.objects.UserBasicObject;

/* JADX INFO: loaded from: classes.dex */
public class ProfileFragmentPagerAdapter extends FragmentPagerAdapter {
    UserBasicObject jH;

    public ProfileFragmentPagerAdapter(FragmentManager fragmentManager, UserBasicObject userBasicObject) {
        super(fragmentManager);
        this.jH = userBasicObject;
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        switch (i) {
            case 0:
                return new ProfileComicFragment();
            case 1:
                return CommentFragment.a("575e28eafec093bf19360331", this.jH);
            default:
                return null;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.jH == null ? 1 : 2;
    }
}
