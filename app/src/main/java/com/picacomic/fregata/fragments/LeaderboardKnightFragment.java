package com.picacomic.fregata.fragments;

import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.picacomic.fregata.databinding.FragmentLeaderboardKnightBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.adapters.LeaderboardKnightRecyclerViewAdapter;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.objects.LeaderboardKnightObject;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.objects.responses.LeaderboardKnightResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import java.util.ArrayList;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class LeaderboardKnightFragment extends BaseFragment implements k {
    public static final String TAG = "LeaderboardKnightFragment";
    ArrayList<LeaderboardKnightObject> arrayList;
    LinearLayoutManager jQ;
    LeaderboardKnightRecyclerViewAdapter pE;
    Call<GeneralResponse<LeaderboardKnightResponse>> pF;

    FragmentLeaderboardKnightBinding binding;
    RecyclerView recyclerView_knight;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentLeaderboardKnightBinding.inflate(layoutInflater, viewGroup, false);
        this.recyclerView_knight = this.binding.recyclerViewLeaderboardKnight;
        return this.binding.getRoot();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        if (this.pF != null) {
            this.pF.cancel();
        }
        super.onDetach();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        if (this.arrayList == null) {
            this.arrayList = new ArrayList<>();
        }
        this.jQ = new LinearLayoutManager(getActivity(), 1, false);
        this.pE = new LeaderboardKnightRecyclerViewAdapter(getActivity(), this.arrayList, this);
        this.recyclerView_knight.setLayoutManager(this.jQ);
        this.recyclerView_knight.setAdapter(this.pE);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        if (this.arrayList == null || this.arrayList.size() != 0) {
            return;
        }
        m7do();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
        this.pE.notifyDataSetChanged();
    }

    /* JADX INFO: renamed from: do, reason: not valid java name */
    public void m7do() {
        C(getResources().getString(R.string.loading_general));
        this.pF = new d(getContext()).dO().ap(e.z(getActivity()));
        this.pF.enqueue(new Callback<GeneralResponse<LeaderboardKnightResponse>>() { // from class: com.picacomic.fregata.fragments.LeaderboardKnightFragment.1
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<LeaderboardKnightResponse>> call, Response<GeneralResponse<LeaderboardKnightResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.toString());
                    if (response.body().data != null && response.body().data.getUsers() != null) {
                        if (LeaderboardKnightFragment.this.arrayList != null) {
                            LeaderboardKnightFragment.this.arrayList.clear();
                        }
                        LeaderboardKnightFragment.this.arrayList.addAll(response.body().data.getUsers());
                    }
                } else {
                    try {
                        new c(LeaderboardKnightFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                LeaderboardKnightFragment.this.bC();
                LeaderboardKnightFragment.this.bI();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<LeaderboardKnightResponse>> call, Throwable th) {
                th.printStackTrace();
                LeaderboardKnightFragment.this.bC();
                new c(LeaderboardKnightFragment.this.getActivity()).dN();
                LeaderboardKnightFragment.this.bI();
            }
        });
    }

    @Override // com.picacomic.fregata.a_pkg.k
    public void C(int i) {
        getParentFragment().getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicListFragment.a(null, null, null, null, null, null, null, this.arrayList.get(i).getLeaderboardKnightId(), this.arrayList.get(i).getName()), ComicListFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
    }
}
