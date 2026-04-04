package com.picacomic.fregata.fragments;

import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.appcompat.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.picacomic.fregata.databinding.FragmentChatroomListBinding;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.adapters.ChatroomListRecyclerViewAdapter;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.objects.ChatroomListObject;
import com.picacomic.fregata.objects.responses.ChatroomListResponse;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import java.util.ArrayList;
import java.util.List;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomListFragment extends BaseFragment implements k {
    public static final String TAG = "ChatroomListFragment";
    ArrayList<ChatroomListObject> arrayList;
    Gson gson;
    LinearLayoutManager jQ;
    boolean jR;
    Call<GeneralResponse<ChatroomListResponse>> kS;
    ChatroomListRecyclerViewAdapter mP;

    FragmentChatroomListBinding binding;
    RecyclerView recyclerView_list;
    Toolbar toolbar;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentChatroomListBinding.inflate(layoutInflater, viewGroup, false);
        this.recyclerView_list = this.binding.recyclerViewChatroomList;
        this.toolbar = this.binding.toolbar;
        a(this.binding.getRoot());
        return this.binding.getRoot();
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
            String strG = e.G(getContext());
            if (strG == null || strG.equalsIgnoreCase("")) {
                return;
            }
            this.arrayList = (ArrayList) this.gson.fromJson(e.G(getContext()), new TypeToken<List<ChatroomListObject>>() { // from class: com.picacomic.fregata.fragments.ChatroomListFragment.1
            }.getType());
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.jQ = new LinearLayoutManager(getContext(), 1, false);
        this.mP = new ChatroomListRecyclerViewAdapter(getContext(), this.arrayList, this);
        this.recyclerView_list.setLayoutManager(this.jQ);
        this.recyclerView_list.setAdapter(this.mP);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        this.toolbar.setVisibility(8);
        cm();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
        if (this.arrayList != null) {
            this.mP.notifyDataSetChanged();
        }
    }

    public void cm() {
        if (this.jR) {
            return;
        }
        this.jR = true;
        C(getResources().getString(R.string.loading_general));
        this.kS = new d(getContext()).dO().at(e.z(getActivity()));
        this.kS.enqueue(new Callback<GeneralResponse<ChatroomListResponse>>() { // from class: com.picacomic.fregata.fragments.ChatroomListFragment.2
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<ChatroomListResponse>> call, Response<GeneralResponse<ChatroomListResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.toString());
                    if (response != null && response.body() != null && response.body().data != null && response.body().data.getChatList() != null) {
                        ChatroomListFragment.this.arrayList.clear();
                        ChatroomListFragment.this.arrayList.addAll(response.body().data.getChatList());
                        if (ChatroomListFragment.this.gson == null) {
                            ChatroomListFragment.this.gson = new Gson();
                        }
                        e.n(ChatroomListFragment.this.getContext(), ChatroomListFragment.this.gson.toJson(ChatroomListFragment.this.arrayList));
                        ChatroomListFragment.this.arrayList.add(new ChatroomListObject(null, "自定小程式", "自定小程式", "custompicaapp"));
                        if (response.body().data != null && response.body().data.getChatList() != null) {
                            ChatroomListFragment.this.bI();
                        }
                    }
                } else {
                    try {
                        new c(ChatroomListFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ChatroomListFragment.this.bC();
                ChatroomListFragment.this.bI();
                ChatroomListFragment.this.jR = false;
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<ChatroomListResponse>> call, Throwable th) {
                th.printStackTrace();
                ChatroomListFragment.this.bC();
                new c(ChatroomListFragment.this.getActivity()).dN();
                ChatroomListFragment.this.bI();
                ChatroomListFragment.this.jR = false;
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        if (this.kS != null) {
            this.kS.cancel();
        }
        super.onDetach();
    }

    @Override // com.picacomic.fregata.a_pkg.k
    public void C(int i) {
        if (this.arrayList == null || this.arrayList.size() <= i) {
            return;
        }
        if (this.arrayList != null && this.arrayList.get(i).getUrl().equalsIgnoreCase("allchatroom")) {
            getParentFragment().getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, new ChatroomContainerFragment(), ChatroomContainerFragment.TAG).addToBackStack(ChatroomContainerFragment.TAG).commit();
        } else if (this.arrayList != null && this.arrayList.get(i).getUrl().equalsIgnoreCase("custompicaapp")) {
            getParentFragment().getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, new CustomPicaAppContainerFragment(), CustomPicaAppContainerFragment.TAG).addToBackStack(CustomPicaAppContainerFragment.TAG).commit();
        } else {
            getParentFragment().getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ChatroomFragment.M(this.arrayList.get(i).getUrl()), ChatroomFragment.TAG).addToBackStack(ChatroomFragment.TAG).commit();
        }
    }
}
