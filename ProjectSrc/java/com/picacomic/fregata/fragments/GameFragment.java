package com.picacomic.fregata.fragments;

import android.graphics.Rect;
import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
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
import com.picacomic.fregata.adapters.GameListRecyclerViewAdapter;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.objects.GameListObject;
import com.picacomic.fregata.objects.responses.DataClass.GameListResponse.GameListResponse;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import java.util.ArrayList;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class GameFragment extends BaseFragment implements k {
    public static final String TAG = "GameFragment";
    int page;
    boolean pg;
    boolean ph;
    Call<GeneralResponse<GameListResponse>> pi;
    GameListRecyclerViewAdapter pj;
    ArrayList<GameListObject> pk;

    @BindView(R.id.recyclerView_game)
    RecyclerView recyclerView_games;

    @BindView(R.id.toolbar)
    Toolbar toolbar;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_game, viewGroup, false);
        a(viewInflate);
        return viewInflate;
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        if (this.pk == null) {
            this.page = 1;
            this.ph = true;
            this.pk = new ArrayList<>();
            this.pg = true;
        } else {
            this.pg = false;
        }
        this.pj = new GameListRecyclerViewAdapter(getActivity(), this.pk, this);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        int i = (int) ((getContext().getResources().getDisplayMetrics().density * 4.0f) + 0.5f);
        this.recyclerView_games.setLayoutManager(new GridLayoutManager(getActivity(), 2));
        this.recyclerView_games.setAdapter(this.pj);
        this.recyclerView_games.addItemDecoration(new ItemOffsetDecoration(i));
        this.recyclerView_games.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.picacomic.fregata.fragments.GameFragment.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
                super.onScrollStateChanged(recyclerView, i2);
                if (recyclerView.getLayoutManager() != null && (recyclerView.getLayoutManager() instanceof LinearLayoutManager) && ((LinearLayoutManager) recyclerView.getLayoutManager()).findLastVisibleItemPosition() == ((LinearLayoutManager) recyclerView.getLayoutManager()).getItemCount() - 1) {
                    GameFragment.this.di();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                super.onScrolled(recyclerView, i2, i3);
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        a(this.toolbar, R.string.title_game_list, true);
        if (getActivity() != null && (getActivity() instanceof MainActivity)) {
            ((MainActivity) getActivity()).t(0);
        }
        if (this.pg) {
            di();
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
        this.pj.notifyDataSetChanged();
    }

    public void di() {
        if (this.ph) {
            C(getResources().getString(R.string.loading_general));
            f.aA("Show Progress");
            this.pi = new d(getContext()).dO().e(e.z(getActivity()), this.page);
            this.pi.enqueue(new Callback<GeneralResponse<GameListResponse>>() { // from class: com.picacomic.fregata.fragments.GameFragment.2
                @Override // retrofit2.Callback
                public void onResponse(Call<GeneralResponse<GameListResponse>> call, Response<GeneralResponse<GameListResponse>> response) {
                    if (response.code() == 200) {
                        if (response.body() != null && response.body().data != null && response.body().data.getGames() != null) {
                            for (int i = 0; i < response.body().data.getGames().getDocs().size(); i++) {
                                GameFragment.this.pk.add(response.body().data.getGames().getDocs().get(i));
                            }
                            GameFragment.this.page++;
                            if (GameFragment.this.page > response.body().data.getGames().getPages()) {
                                GameFragment.this.ph = false;
                            }
                            if (GameFragment.this.getActivity() != null) {
                                GameFragment.this.bI();
                            }
                        }
                    } else {
                        try {
                            new c(GameFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    f.aA("dismiss progress");
                    GameFragment.this.bC();
                }

                @Override // retrofit2.Callback
                public void onFailure(Call<GeneralResponse<GameListResponse>> call, Throwable th) {
                    th.printStackTrace();
                    f.aA("dismiss progress");
                    GameFragment.this.bC();
                    new c(GameFragment.this.getActivity()).dN();
                }
            });
        }
    }

    @Override // com.picacomic.fregata.a_pkg.k
    public void C(int i) {
        getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, GameDetailFragment.ad(this.pk.get(i).getGameId()), GameDetailFragment.TAG).addToBackStack(GameDetailFragment.TAG).commit();
    }

    public class ItemOffsetDecoration extends RecyclerView.ItemDecoration {
        private int offset;

        public ItemOffsetDecoration(int i) {
            this.offset = i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            rect.left = this.offset;
            rect.right = this.offset;
            rect.bottom = this.offset;
            if (recyclerView.getChildAdapterPosition(view) == 0 || recyclerView.getChildAdapterPosition(view) == 1) {
                rect.top = this.offset;
            }
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        if (this.pi != null) {
            this.pi.cancel();
        }
        super.onDetach();
    }
}
