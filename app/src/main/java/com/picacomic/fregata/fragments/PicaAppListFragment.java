package com.picacomic.fregata.fragments;

import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.appcompat.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import butterknife.BindView;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.adapters.PicaAppListRecyclerViewAdapter;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.objects.PicaAppObject;
import com.picacomic.fregata.objects.responses.DataClass.PicaAppsResponse;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import java.util.ArrayList;
import java.util.List;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class PicaAppListFragment extends BaseFragment implements k {
    public static final String TAG = "PicaAppListFragment";
    ArrayList<PicaAppObject> arrayList;
    Gson gson;
    LinearLayoutManager jQ;
    boolean jR;
    PicaAppListRecyclerViewAdapter qB;
    Call<GeneralResponse<PicaAppsResponse>> qC;

    @BindView(R.id.recyclerView_chatroom_list)
    RecyclerView recyclerView_list;

    @BindView(R.id.toolbar)
    Toolbar toolbar;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_chatroom_list, viewGroup, false);
        a(viewInflate);
        return viewInflate;
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        this.jR = false;
        if (this.arrayList == null) {
            this.arrayList = new ArrayList<>();
            if (this.gson == null) {
                this.gson = new Gson();
            }
            String strH = e.H(getContext());
            if (strH == null || strH.equalsIgnoreCase("")) {
                return;
            }
            this.arrayList = (ArrayList) this.gson.fromJson(e.H(getContext()), new TypeToken<List<PicaAppObject>>() { // from class: com.picacomic.fregata.fragments.PicaAppListFragment.1
            }.getType());
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.jQ = new LinearLayoutManager(getContext(), 1, false);
        this.qB = new PicaAppListRecyclerViewAdapter(getContext(), this.arrayList, this);
        this.recyclerView_list.setLayoutManager(this.jQ);
        this.recyclerView_list.setAdapter(this.qB);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        this.toolbar.setVisibility(8);
        du();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
        if (this.arrayList != null) {
            this.qB.notifyDataSetChanged();
        }
    }

    public void du() {
        if (this.jR) {
            return;
        }
        this.jR = true;
        C(getResources().getString(R.string.loading_general));
        this.qC = new d(getContext()).dO().au(e.z(getActivity()));
        this.qC.enqueue(new Callback<GeneralResponse<PicaAppsResponse>>() { // from class: com.picacomic.fregata.fragments.PicaAppListFragment.2
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<PicaAppsResponse>> call, Response<GeneralResponse<PicaAppsResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.toString());
                    if (response != null && response.body() != null && response.body().data != null && response.body().data.getApps() != null) {
                        PicaAppListFragment.this.arrayList.clear();
                        PicaAppListFragment.this.arrayList.addAll(response.body().data.getApps());
                        PicaAppListFragment.this.arrayList.add(new PicaAppObject("嗶咔萌約", null, null, "可能是最有用的同性交友應用"));
                        if (PicaAppListFragment.this.gson == null) {
                            PicaAppListFragment.this.gson = new Gson();
                        }
                        e.o(PicaAppListFragment.this.getContext(), PicaAppListFragment.this.gson.toJson(PicaAppListFragment.this.arrayList));
                        if (response.body().data != null && response.body().data.getApps() != null) {
                            PicaAppListFragment.this.bI();
                        }
                    }
                } else {
                    try {
                        new c(PicaAppListFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                PicaAppListFragment.this.bC();
                PicaAppListFragment.this.bI();
                PicaAppListFragment.this.jR = false;
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<PicaAppsResponse>> call, Throwable th) {
                th.printStackTrace();
                PicaAppListFragment.this.bC();
                new c(PicaAppListFragment.this.getActivity()).dN();
                PicaAppListFragment.this.bI();
                PicaAppListFragment.this.jR = false;
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        if (this.qC != null) {
            this.qC.cancel();
        }
        super.onDetach();
    }

    @Override // com.picacomic.fregata.a_pkg.k
    public void C(int i) {
        if (this.arrayList == null || this.arrayList.size() <= i) {
            return;
        }
        if (this.arrayList.get(i).getTitle().equalsIgnoreCase("嗶咔萌約")) {
            getParentFragment().getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, new AnonymousChatFragment(), AnonymousChatFragment.TAG).addToBackStack(AnonymousChatFragment.TAG).commit();
        } else {
            getParentFragment().getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, PicaAppFragment.n(this.arrayList.get(i).getTitle(), this.arrayList.get(i).getUrl()), PicaAppFragment.TAG).addToBackStack(PicaAppFragment.TAG).commit();
        }
    }
}
