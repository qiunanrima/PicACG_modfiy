package com.picacomic.fregata.adapters;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.picacomic.fregata.fragments.ChatroomFragment;
import com.picacomic.fregata.objects.ChatroomListObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomFragmentPagerAdapter extends FragmentPagerAdapter {
    public static final String TAG = "ChatroomFragmentPagerAdapter";
    ArrayList<ChatroomListObject> ja;

    public ChatroomFragmentPagerAdapter(FragmentManager fragmentManager, ArrayList<ChatroomListObject> arrayList) {
        super(fragmentManager);
        this.ja = arrayList;
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        if (this.ja == null || this.ja.size() <= i) {
            return null;
        }
        return ChatroomFragment.M(this.ja.get(i).getUrl());
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        if (this.ja != null) {
            return this.ja.size();
        }
        return 0;
    }
}
