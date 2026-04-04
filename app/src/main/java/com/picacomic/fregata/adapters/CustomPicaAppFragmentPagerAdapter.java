package com.picacomic.fregata.adapters;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.picacomic.fregata.fragments.AnonymousChatFragment;
import com.picacomic.fregata.fragments.ChatroomFragment;
import com.picacomic.fregata.fragments.PicaAppFragment;
import com.picacomic.fregata.objects.ChatroomListObject;
import com.picacomic.fregata.objects.PicaAppBaseObject;
import com.picacomic.fregata.objects.PicaAppObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CustomPicaAppFragmentPagerAdapter extends FragmentPagerAdapter {
    public static final String TAG = "CustomPicaAppFragmentPagerAdapter";
    ArrayList<PicaAppBaseObject> ja;

    public CustomPicaAppFragmentPagerAdapter(FragmentManager fragmentManager, ArrayList<PicaAppBaseObject> arrayList) {
        super(fragmentManager);
        this.ja = arrayList;
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        if (this.ja == null || this.ja.size() <= i) {
            return null;
        }
        if (this.ja.get(i) instanceof PicaAppObject) {
            if (((PicaAppObject) this.ja.get(i)).getTitle().equalsIgnoreCase("嗶咔萌約")) {
                return new AnonymousChatFragment();
            }
            return PicaAppFragment.n(((PicaAppObject) this.ja.get(i)).getTitle(), ((PicaAppObject) this.ja.get(i)).getUrl());
        }
        if (this.ja.get(i) instanceof ChatroomListObject) {
            return ChatroomFragment.M(((ChatroomListObject) this.ja.get(i)).getUrl());
        }
        return null;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        if (this.ja != null) {
            return this.ja.size();
        }
        return 0;
    }
}
