package com.picacomic.fregata.fragments;

import android.os.Bundle;
import androidx.annotation.Nullable;
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
import com.picacomic.fregata.adapters.ApkVersionListRecyclerViewAdapter;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.objects.LatestApplicationObject;
import com.picacomic.fregata.objects.responses.DataClass.ApplicationsResponse.ApplicationsResponse;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.views.AlertDialogCenter;
import java.util.ArrayList;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class ApkVersionListFragment extends BaseFragment implements k {
    public static final String TAG = "ApkVersionListFragment";
    ArrayList<LatestApplicationObject> arrayList;
    LinearLayoutManager jQ;
    ApkVersionListRecyclerViewAdapter km;
    Call<GeneralResponse<ApplicationsResponse>> kn;
    int page;

    @BindView(R.id.recyclerView_apk_version_list)
    RecyclerView recyclerView_apkVersions;

    @BindView(R.id.toolbar)
    Toolbar toolbar;
    int totalPage;

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_apk_version_list, viewGroup, false);
        a(viewInflate);
        return viewInflate;
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        this.page = 0;
        this.totalPage = 1;
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.arrayList = new ArrayList<>();
        this.jQ = new LinearLayoutManager(getContext(), 1, false);
        this.km = new ApkVersionListRecyclerViewAdapter(getActivity(), this.arrayList, this);
        this.recyclerView_apkVersions.setLayoutManager(this.jQ);
        this.recyclerView_apkVersions.setAdapter(this.km);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        a(this.toolbar, R.string.title_home, true);
        if (getActivity() != null && (getActivity() instanceof MainActivity)) {
            ((MainActivity) getActivity()).t(8);
        }
        ce();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
        if (this.arrayList != null) {
            this.km.notifyDataSetChanged();
        }
    }

    public void ce() {
        if (this.page >= this.totalPage) {
            return;
        }
        C(getResources().getString(R.string.loading_general));
        f.aA("Show Progress");
        this.kn = new d(getContext()).dO().b(e.z(getActivity()), this.page + 1);
        this.kn.enqueue(new Callback<GeneralResponse<ApplicationsResponse>>() { // from class: com.picacomic.fregata.fragments.ApkVersionListFragment.1
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<ApplicationsResponse>> call, Response<GeneralResponse<ApplicationsResponse>> response) {
                if (response.code() == 200) {
                    if (response.body() != null && response.body().data != null && response.body().data.getApplications() != null) {
                        ApkVersionListFragment.this.page = response.body().data.getApplications().getPage();
                        ApkVersionListFragment.this.totalPage = response.body().data.getApplications().getPages();
                        if (response.body().data.getApplications().getDocs() != null) {
                            ApkVersionListFragment.this.arrayList.addAll(response.body().data.getApplications().getDocs());
                        }
                        if (ApkVersionListFragment.this.getActivity() != null) {
                            ApkVersionListFragment.this.bI();
                        }
                    }
                } else {
                    try {
                        new c(ApkVersionListFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                f.aA("dismiss progress");
                ApkVersionListFragment.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<ApplicationsResponse>> call, Throwable th) {
                th.printStackTrace();
                f.aA("dismiss progress");
                ApkVersionListFragment.this.bC();
                new c(ApkVersionListFragment.this.getActivity()).dN();
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        if (this.kn != null) {
            this.kn.cancel();
        }
        super.onDetach();
    }

    @Override // com.picacomic.fregata.a_pkg.k
    public void C(int i) {
        if (this.arrayList == null || this.arrayList.size() <= i) {
            return;
        }
        AlertDialogCenter.showUpdateApkAlertDialog(getContext(), this.arrayList.get(i), false);
    }
}
