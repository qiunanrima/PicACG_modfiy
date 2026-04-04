package com.picacomic.fregata.fragments;

import android.content.Context;
import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import com.picacomic.fregata.databinding.FragmentComicViewerListBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.c;
import com.picacomic.fregata.a_pkg.d;
import com.picacomic.fregata.activities.ComicViewerActivity;
import com.picacomic.fregata.adapters.a;
import com.picacomic.fregata.objects.ComicPageObject;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.views.ZoomableListView;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ComicViewerListFragment extends BaseFragment implements c {
    public static final String TAG = "ComicViewerListFragment";
    boolean hC;

    /* JADX INFO: renamed from: if, reason: not valid java name */
    ArrayList<ComicPageObject> f4if;
    LinearLayoutManager jQ;

    FragmentComicViewerListBinding binding;
    ZoomableListView listView_comic_viewer;
    d nV;
    a ob;
    int nX = 0;
    boolean nY = false;
    int currentPage = 0;
    int hP = 0;

    @Deprecated
    int hF = 1;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentComicViewerListBinding.inflate(layoutInflater, viewGroup, false);
        this.listView_comic_viewer = this.binding.listViewComicViewer;
        if (getActivity() instanceof ComicViewerActivity) {
            this.nV = cX();
            a(this.binding.getRoot());
        }
        return this.binding.getRoot();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        ((WindowManager) getActivity().getSystemService("window")).getDefaultDisplay();
        this.currentPage = 0;
        this.f4if = new ArrayList<>();
        this.ob = new a(getActivity(), this.f4if);
        this.jQ = new LinearLayoutManager(getActivity());
        this.listView_comic_viewer.setAdapter((ListAdapter) this.ob);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.listView_comic_viewer.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.picacomic.fregata.fragments.ComicViewerListFragment.1
            int oc;
            int od;

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                if (i == 0) {
                    da();
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                this.oc = i;
                this.od = i2;
            }

            public void da() {
                ComicViewerListFragment.this.currentPage = this.oc;
                if (!ComicViewerListFragment.this.nY && ComicViewerListFragment.this.currentPage != 0) {
                    ComicViewerListFragment.this.nY = true;
                }
                if (this.oc != 0 && this.od > 1) {
                    ComicViewerListFragment.this.currentPage = (this.oc + this.od) - 1;
                }
                if (ComicViewerListFragment.this.nV != null) {
                    ComicViewerListFragment.this.nV.r(ComicViewerListFragment.this.currentPage);
                }
                f.D(ComicViewerListFragment.TAG, "Current Page = " + ComicViewerListFragment.this.currentPage);
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        if (isAdded() && (getActivity() instanceof ComicViewerActivity)) {
            cX().bL();
            cX().bH();
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
        this.ob.notifyDataSetChanged();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof ComicViewerActivity) {
            ((ComicViewerActivity) context).a((c) this);
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        if (getActivity() instanceof ComicViewerActivity) {
            ((ComicViewerActivity) getActivity()).a((c) null);
        }
        super.onDetach();
    }

    public ComicViewerActivity cX() {
        if (isAdded() && (getActivity() instanceof ComicViewerActivity)) {
            return (ComicViewerActivity) getActivity();
        }
        return null;
    }

    @Override // com.picacomic.fregata.a_pkg.c
    public void a(ArrayList<ComicPageObject> arrayList, int i, boolean z, boolean z2) {
        cZ();
        this.nY = false;
        boolean z3 = false;
        if (z2) {
            this.nX = 0;
            this.listView_comic_viewer.smoothScrollToPosition(0);
            this.f4if.clear();
            this.f4if.addAll(0, arrayList);
        } else if (this.hP != i && !z) {
            this.f4if.addAll(0, arrayList);
            z3 = true;
        } else {
            this.f4if.addAll(this.f4if.size(), arrayList);
        }
        this.hP = i;
        int i2 = (i / ComicViewerActivity.hq) * ComicViewerActivity.hq;
        this.ob.y(i2);
        this.ob.notifyDataSetChanged();
        Context context = getContext();
        if (context != null) {
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                Picasso.with(context).load(com.picacomic.fregata.utils.g.b(arrayList.get(i3).getMedia())).fetch();
            }
        }
        if (z) {
            this.listView_comic_viewer.setSelection(i - i2);
        }
        if (z3) {
            this.listView_comic_viewer.setSelection(ComicViewerActivity.hq);
        }
    }

    @Override // com.picacomic.fregata.a_pkg.c
    public void b(int i, boolean z) {
        cZ();
        this.listView_comic_viewer.setSelection(i);
        this.currentPage = i;
    }

    @Override // com.picacomic.fregata.a_pkg.c
    public void M(int i) {
        cZ();
        if (i == 2) {
            this.ob.q(false);
        } else if (i == 1) {
            this.ob.q(true);
        }
        ((WindowManager) getActivity().getSystemService("window")).getDefaultDisplay();
        this.ob.notifyDataSetChanged();
    }

    @Override // com.picacomic.fregata.a_pkg.c
    public void B(boolean z) {
        cZ();
        if (z) {
            this.jQ.setOrientation(1);
        } else {
            this.jQ.setOrientation(0);
        }
        this.hC = z;
        this.ob.r(z);
        this.ob.notifyDataSetChanged();
    }

    public void cZ() {
        if (this.listView_comic_viewer == null) {
        }
    }
}
