package com.picacomic.fregata.fragments;

import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.appcompat.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import butterknife.BindView;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.adapters.AnnouncementListRecyclerViewAdapter;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.objects.AnnouncementObject;
import com.picacomic.fregata.objects.responses.DataClass.AnnouncementsResponse.AnnouncementsResponse;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.AlertDialogCenter;
import java.util.ArrayList;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementListFragment extends BaseFragment implements k {
    public static final String TAG = "AnnouncementListFragment";
    ArrayList<AnnouncementObject> arrayList;
    AnnouncementListRecyclerViewAdapter jO;
    Call<GeneralResponse<AnnouncementsResponse>> jP;
    LinearLayoutManager jQ;
    boolean jR;
    int page;

    @BindView(R.id.recyclerView_announcement_list)
    RecyclerView recyclerView_apkVersions;

    @BindView(R.id.toolbar)
    Toolbar toolbar;
    int totalPage;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_announcement_list, viewGroup, false);
        a(viewInflate);
        return viewInflate;
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        this.page = 0;
        this.totalPage = 1;
        this.jR = false;
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.arrayList = new ArrayList<>();
        this.jQ = new LinearLayoutManager(getContext(), 1, false);
        this.jO = new AnnouncementListRecyclerViewAdapter(getActivity(), this.arrayList, this);
        this.recyclerView_apkVersions.setLayoutManager(this.jQ);
        this.recyclerView_apkVersions.setAdapter(this.jO);
        this.recyclerView_apkVersions.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.picacomic.fregata.fragments.AnnouncementListFragment.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                super.onScrollStateChanged(recyclerView, i);
                if (recyclerView.getLayoutManager() != null && (recyclerView.getLayoutManager() instanceof LinearLayoutManager) && ((LinearLayoutManager) recyclerView.getLayoutManager()).findLastVisibleItemPosition() == ((LinearLayoutManager) recyclerView.getLayoutManager()).getItemCount() - 1) {
                    AnnouncementListFragment.this.cb();
                }
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
        a(this.toolbar, R.string.title_announcement, true);
        if (getActivity() != null && (getActivity() instanceof MainActivity)) {
            ((MainActivity) getActivity()).t(8);
        }
        cb();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
        if (this.arrayList != null) {
            this.jO.notifyDataSetChanged();
        }
    }

    public void cb() {
        if (!this.jR && this.page < this.totalPage) {
            this.jR = true;
            C(getResources().getString(R.string.loading_general));
            this.jP = new d(getContext()).dO().f(e.z(getActivity()), this.page + 1);
            this.jP.enqueue(new Callback<GeneralResponse<AnnouncementsResponse>>() { // from class: com.picacomic.fregata.fragments.AnnouncementListFragment.2
                @Override // retrofit2.Callback
                public void onResponse(Call<GeneralResponse<AnnouncementsResponse>> call, Response<GeneralResponse<AnnouncementsResponse>> response) {
                    if (response.code() == 200) {
                        f.aA(response.body().data.toString());
                        if (response.body().data != null && response.body().data.getAnnouncements() != null && response.body().data.getAnnouncements().getDocs() != null) {
                            AnnouncementListFragment.this.page = response.body().data.getAnnouncements().getPage();
                            AnnouncementListFragment.this.totalPage = response.body().data.getAnnouncements().getPages();
                            AnnouncementListFragment.this.arrayList.addAll(response.body().data.getAnnouncements().getDocs());
                        }
                    } else {
                        try {
                            new c(AnnouncementListFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    AnnouncementListFragment.this.bC();
                    AnnouncementListFragment.this.bI();
                    AnnouncementListFragment.this.jR = false;
                }

                @Override // retrofit2.Callback
                public void onFailure(Call<GeneralResponse<AnnouncementsResponse>> call, Throwable th) {
                    th.printStackTrace();
                    AnnouncementListFragment.this.bC();
                    new c(AnnouncementListFragment.this.getActivity()).dN();
                    AnnouncementListFragment.this.bI();
                    AnnouncementListFragment.this.jR = false;
                }
            });
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        if (this.jP != null) {
            this.jP.cancel();
        }
        super.onDetach();
    }

    @Override // com.picacomic.fregata.a_pkg.k
    public void C(int i) {
        if (this.arrayList == null || this.arrayList.size() <= i) {
            return;
        }
        AlertDialogCenter.showAnnouncementAlertDialog(getContext(), g.b(this.arrayList.get(i).getThumb()), this.arrayList.get(i).getTitle(), this.arrayList.get(i).getContent(), this.arrayList.get(i).getCreatedAt(), null);
    }
}
