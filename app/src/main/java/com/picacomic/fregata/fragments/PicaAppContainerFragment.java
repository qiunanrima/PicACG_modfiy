package com.picacomic.fregata.fragments;

import android.os.Bundle;
import com.google.android.material.tabs.TabLayout;
import androidx.viewpager.widget.ViewPager;
import androidx.appcompat.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import butterknife.BindView;
import com.picacomic.fregata.R;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.adapters.PicaAppFragmentPagerAdapter;

/* JADX INFO: loaded from: classes.dex */
public class PicaAppContainerFragment extends BaseFragment {
    public static final String TAG = "PicaAppContainerFragment";
    PicaAppFragmentPagerAdapter qu;

    @BindView(R.id.tabs)
    TabLayout tabLayout;

    @BindView(R.id.toolbar)
    Toolbar toolbar;

    @BindView(R.id.viewPager_leaderboard)
    ViewPager viewPager_tags;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_leaderboard_container, viewGroup, false);
        a(viewInflate);
        return viewInflate;
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        if (this.qu == null) {
            this.qu = new PicaAppFragmentPagerAdapter(getChildFragmentManager());
        }
        if (this.viewPager_tags != null && this.viewPager_tags.getAdapter() == null) {
            this.viewPager_tags.setAdapter(this.qu);
        }
        this.tabLayout.setupWithViewPager(this.viewPager_tags);
        TabLayout.Tab tabAt = this.tabLayout.getTabAt(0);
        this.tabLayout.getTabAt(0).setText(R.string.title_chatroom);
        tabAt.setText(R.string.title_chatroom);
        TabLayout.Tab tabAt2 = this.tabLayout.getTabAt(1);
        this.tabLayout.getTabAt(1).setText(R.string.title_pica_app);
        tabAt2.setText(R.string.title_pica_app);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        a(this.toolbar, R.string.title_pica_app, true);
        if (getActivity() == null || !(getActivity() instanceof MainActivity)) {
            return;
        }
        ((MainActivity) getActivity()).t(8);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
    }
}
