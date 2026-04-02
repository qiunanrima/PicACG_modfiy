package com.picacomic.fregata.fragments;

import android.content.Context;
import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import butterknife.BindView;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.c;
import com.picacomic.fregata.a_pkg.d;
import com.picacomic.fregata.activities.ComicViewerActivity;
import com.picacomic.fregata.adapters.ComicPageRecyclerViewAdapter;
import com.picacomic.fregata.objects.ComicPageObject;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.views.ZoomableRecyclerView;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ComicViewFragment extends BaseFragment implements c {
    public static final String TAG = "ComicViewFragment";
    boolean hC;

    /* JADX INFO: renamed from: if, reason: not valid java name */
    ArrayList<ComicPageObject> f3if;
    LinearLayoutManager jQ;
    d nV;
    ComicPageRecyclerViewAdapter nW;

    @BindView(R.id.recyclerView_comic_viewer)
    ZoomableRecyclerView recyclerView_comic_viewer;
    int nX = 0;
    boolean nY = false;
    int currentPage = 0;
    int hP = 0;

    @Deprecated
    int hF = 1;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_comic_view, viewGroup, false);
        if (getActivity() instanceof ComicViewerActivity) {
            this.nV = cX();
            a(viewInflate);
        }
        return viewInflate;
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        Display defaultDisplay = ((WindowManager) getActivity().getSystemService("window")).getDefaultDisplay();
        this.currentPage = 0;
        this.f3if = new ArrayList<>();
        this.nW = new ComicPageRecyclerViewAdapter(getActivity(), this.f3if);
        this.jQ = new LinearLayoutManager(getActivity());
        this.recyclerView_comic_viewer.setLayoutManager(this.jQ);
        this.recyclerView_comic_viewer.setAdapter(this.nW);
        this.recyclerView_comic_viewer.setScreenWidth(defaultDisplay.getWidth());
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.recyclerView_comic_viewer.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.picacomic.fregata.fragments.ComicViewFragment.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                super.onScrollStateChanged(recyclerView, i);
                if (recyclerView.getLayoutManager() == null || !(recyclerView.getLayoutManager() instanceof LinearLayoutManager)) {
                    return;
                }
                ComicViewFragment.this.currentPage = ((LinearLayoutManager) recyclerView.getLayoutManager()).findFirstVisibleItemPosition();
                if (!ComicViewFragment.this.nY && ComicViewFragment.this.currentPage != 0) {
                    ComicViewFragment.this.nY = true;
                }
                if (((LinearLayoutManager) recyclerView.getLayoutManager()).findLastCompletelyVisibleItemPosition() < 0) {
                    ComicViewFragment.this.currentPage = ((LinearLayoutManager) recyclerView.getLayoutManager()).findFirstVisibleItemPosition();
                } else {
                    ComicViewFragment.this.currentPage = ((LinearLayoutManager) recyclerView.getLayoutManager()).findLastCompletelyVisibleItemPosition();
                }
                ComicViewFragment.this.nV.r(ComicViewFragment.this.currentPage);
                f.D(ComicViewFragment.TAG, "Current Page = " + ComicViewFragment.this.currentPage);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
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
        this.nW.notifyDataSetChanged();
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
        cY();
        boolean z3 = false;
        if (z2) {
            this.nX = 0;
            this.nY = false;
            this.recyclerView_comic_viewer.scrollToPosition(0);
            this.f3if.clear();
            this.f3if.addAll(0, arrayList);
        } else if (this.hP != i && !z) {
            this.f3if.addAll(0, arrayList);
            z3 = true;
        } else {
            this.f3if.addAll(this.f3if.size(), arrayList);
        }
        this.hP = i;
        int i2 = (i / ComicViewerActivity.hq) * ComicViewerActivity.hq;
        this.nW.y(i2);
        this.nW.notifyDataSetChanged();
        Context context = getContext();
        if (context != null) {
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                Picasso.with(context).load(com.picacomic.fregata.utils.g.b(arrayList.get(i3).getMedia())).fetch();
            }
        }
        if (z) {
            this.recyclerView_comic_viewer.scrollToPosition(i - i2);
        }
        if (z3) {
            this.recyclerView_comic_viewer.scrollToPosition(ComicViewerActivity.hq);
        }
    }

    @Override // com.picacomic.fregata.a_pkg.c
    public void b(int i, boolean z) {
        cY();
        this.recyclerView_comic_viewer.scrollToPosition(i);
        this.currentPage = i;
    }

    @Override // com.picacomic.fregata.a_pkg.c
    public void M(int i) {
        cY();
        if (i == 2) {
            this.nW.q(false);
        } else if (i == 1) {
            this.nW.q(true);
        }
        this.recyclerView_comic_viewer.setScreenWidth(((WindowManager) getActivity().getSystemService("window")).getDefaultDisplay().getWidth());
        this.nW.notifyDataSetChanged();
        this.recyclerView_comic_viewer.invalidateItemDecorations();
    }

    @Override // com.picacomic.fregata.a_pkg.c
    public void B(boolean z) {
        cY();
        if (z) {
            this.jQ.setOrientation(1);
            this.recyclerView_comic_viewer.setVertical(true);
        } else {
            this.jQ.setOrientation(0);
            this.recyclerView_comic_viewer.setVertical(false);
        }
        this.hC = z;
        this.nW.r(z);
        this.nW.notifyDataSetChanged();
        this.recyclerView_comic_viewer.invalidateItemDecorations();
    }

    public void cY() {
        if (this.recyclerView_comic_viewer == null) {
        }
    }
}
