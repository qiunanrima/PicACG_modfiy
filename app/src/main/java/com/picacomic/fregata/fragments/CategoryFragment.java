package com.picacomic.fregata.fragments;

import android.content.Context;
import android.os.Bundle;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.picacomic.fregata.databinding.FragmentCategoryBinding;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.adapters.CategoryRecyclerViewAdapter;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.objects.CategoryObject;
import com.picacomic.fregata.objects.DefaultCategoryObject;
import com.picacomic.fregata.objects.responses.CategoryResponse;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.objects.responses.KeywordsResponse;
import com.picacomic.fregata.objects.responses.TagListResponse;
import com.picacomic.fregata.utils.FullGridLayoutManager;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.AlertDialogCenter;
import java.util.ArrayList;
import java.util.List;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class CategoryFragment extends BaseFragment implements k {
    public static final String TAG = "CategoryFragment";

    FragmentCategoryBinding binding;
    CoordinatorLayout coordinatorLayout;
    ArrayList<String> kA;
    ArrayList<String> kB;
    ArrayList<CategoryObject> kC;
    ArrayList<DefaultCategoryObject> kD;
    boolean kE;
    Call<GeneralResponse<CategoryResponse>> kF;
    Call<GeneralResponse<TagListResponse>> kG;
    Call<GeneralResponse<KeywordsResponse>> kH;
    CategoryRecyclerViewAdapter kx;
    Button[] ky;
    Button[] kz;
    LinearLayout linearLayout_keywords;
    LinearLayout linearLayout_tags;
    RecyclerView recyclerView_category;
    NestedScrollView scrollView;
    SearchView searchView;
    Toolbar toolbar;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentCategoryBinding.inflate(layoutInflater, viewGroup, false);
        this.coordinatorLayout = this.binding.coordinatorLayout;
        this.linearLayout_keywords = this.binding.linearLayoutCategoryKeywordsList;
        this.linearLayout_tags = this.binding.linearLayoutCategoryTagList;
        this.recyclerView_category = this.binding.recyclerViewCategory;
        this.scrollView = this.binding.scrollView;
        this.searchView = this.binding.searchView;
        this.toolbar = this.binding.toolbar;
        if (e.C(getContext()) != null && !e.C(getContext()).equalsIgnoreCase("") && (this.kC == null || (this.kC != null && this.kC.size() == 0))) {
            this.kC = (ArrayList) new Gson().fromJson(e.C(getContext()), new TypeToken<List<CategoryObject>>() { // from class: com.picacomic.fregata.fragments.CategoryFragment.1
            }.getType());
        }
        if (getActivity() != null) {
            a(this.binding.getRoot());
        }
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.kC == null || this.kC.size() <= 0 || getContext() == null) {
            return;
        }
        e.j(getContext(), new Gson().toJson(this.kC));
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        f.D(TAG, "Token = " + e.z(getActivity()));
        this.kE = false;
        if (this.kD == null) {
            this.kD = new ArrayList<>();
            ci();
        }
        if (this.kC == null) {
            this.kC = new ArrayList<>();
            this.kE = true;
        }
    }

    public void ci() {
        if (this.kD != null) {
            for (int i = 0; i < 8; i++) {
                DefaultCategoryObject defaultCategoryObject = null;
                switch (i) {
                    case 0:
                        defaultCategoryObject = new DefaultCategoryObject("", getString(R.string.category_title_support), getString(R.string.category_title_support), R.drawable.cat_support);
                        break;
                    case 1:
                        defaultCategoryObject = new DefaultCategoryObject("", getString(R.string.category_title_leaderboard), getString(R.string.category_title_leaderboard), R.drawable.cat_leaderboard);
                        break;
                    case 2:
                        defaultCategoryObject = new DefaultCategoryObject("", getString(R.string.category_title_game), getString(R.string.category_title_game), R.drawable.cat_game);
                        break;
                    case 3:
                        defaultCategoryObject = new DefaultCategoryObject("", getString(R.string.category_title_ads), getString(R.string.category_title_ads), R.drawable.cat_love_pica);
                        break;
                    case 4:
                        defaultCategoryObject = new DefaultCategoryObject("", getString(R.string.category_title_love_pica), getString(R.string.category_title_love_pica), R.drawable.cat_love_pica);
                        break;
                    case 5:
                        defaultCategoryObject = new DefaultCategoryObject("", getString(R.string.category_title_pica_forum), getString(R.string.category_title_pica_forum), R.drawable.cat_forum);
                        break;
                    case 6:
                        defaultCategoryObject = new DefaultCategoryObject("", getString(R.string.category_title_latest), getString(R.string.category_title_latest), R.drawable.cat_latest);
                        break;
                    case 7:
                        defaultCategoryObject = new DefaultCategoryObject("", getString(R.string.category_title_random), getString(R.string.category_title_random), R.drawable.cat_random);
                        break;
                }
                this.kD.add(defaultCategoryObject);
            }
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.picacomic.fregata.fragments.CategoryFragment.2
            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                return false;
            }

            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                if (str == null || str.equalsIgnoreCase("")) {
                    return false;
                }
                CategoryFragment.this.getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicListFragment.a(null, str, null, null, null, null, null, null, null), ComicListFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
                return false;
            }
        });
        this.recyclerView_category.setLayoutManager(new FullGridLayoutManager(getActivity(), 3));
        this.kx = new CategoryRecyclerViewAdapter(getActivity(), this.kD, this.kC, this);
        this.recyclerView_category.setAdapter(this.kx);
        this.recyclerView_category.setNestedScrollingEnabled(false);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        this.toolbar.setTitle(R.string.title_category);
        if (getActivity() != null && (getActivity() instanceof MainActivity)) {
            ((MainActivity) getActivity()).t(0);
            if (e.ai(getActivity())) {
                AlertDialogCenter.showFaqAlertDialog(getContext(), "https://www.picacomic.com/faq", null);
                e.n((Context) getActivity(), false);
            }
        }
        if (this.kE) {
            cl();
        } else {
            bI();
        }
        if (this.kA != null && !this.kA.isEmpty()) {
            bI();
        }
        if (this.kB == null || (this.kB != null && this.kB.size() == 0)) {
            ck();
        }
        c(this.searchView);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
        this.kx.notifyDataSetChanged();
        if (this.kA == null || this.kA.size() <= 0) {
            return;
        }
        this.ky = new Button[this.kA.size()];
        for (int i = 0; i < this.kA.size(); i++) {
            this.ky[i] = new Button(getActivity(), null, R.style.TagButtonPink);
            this.ky[i].setTextColor(ResourcesCompat.getColor(getResources(), R.color.pinkDark, getActivity().getTheme()));
            this.ky[i].setBackground(ResourcesCompat.getDrawable(getResources(), R.drawable.button_tag_bg, getActivity().getTheme()));
            this.ky[i].setText(this.kA.get(i) + "");
            this.ky[i].setTag(this.kA.get(i));
            this.ky[i].setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.CategoryFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CategoryFragment.this.getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicListFragment.a(null, null, (String) view.getTag(), null, null, null, null, null, null), ComicListFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
                }
            });
        }
        g.a(this.linearLayout_tags, this.ky, getActivity(), (View) null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle bundle) {
        super.onViewStateRestored(bundle);
        cj();
    }

    public void cj() {
        if (this.kB == null || this.kB.size() <= 0) {
            return;
        }
        this.kz = new Button[this.kB.size()];
        for (int i = 0; i < this.kB.size(); i++) {
            this.kz[i] = new Button(getActivity(), null, R.style.KeywordButton);
            this.kz[i].setTextColor(ResourcesCompat.getColor(getResources(), R.color.orangeDark, getActivity().getTheme()));
            this.kz[i].setBackground(ResourcesCompat.getDrawable(getResources(), R.drawable.button_keyword_bg, getActivity().getTheme()));
            this.kz[i].setText(this.kB.get(i) + "");
            this.kz[i].setTag(this.kB.get(i));
            this.kz[i].setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.CategoryFragment.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CategoryFragment.this.getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicListFragment.a(null, (String) view.getTag(), null, null, null, null, null, null, null), ComicListFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
                }
            });
        }
        g.a(this.linearLayout_keywords, this.kz, getActivity(), (View) null);
    }

    private void c(View view) {
        if (view != null) {
            if (view instanceof TextView) {
                ((TextView) view).setTextColor(ViewCompat.MEASURED_STATE_MASK);
                return;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    c(viewGroup.getChildAt(i));
                }
            }
        }
    }

    public void ck() {
        bA();
        this.kH = new d(getContext()).dO().ar(e.z(getActivity()));
        this.kH.enqueue(new Callback<GeneralResponse<KeywordsResponse>>() { // from class: com.picacomic.fregata.fragments.CategoryFragment.5
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<KeywordsResponse>> call, Response<GeneralResponse<KeywordsResponse>> response) {
                if (response.code() == 200) {
                    if (response.body() != null && response.body().data != null && response.body().data.getKeywords() != null && response.body().data.getKeywords().size() > 0) {
                        f.D(CategoryFragment.TAG, "KEYWORD = " + response.body().data.getKeywords().toString());
                        if (CategoryFragment.this.kB == null) {
                            CategoryFragment.this.kB = new ArrayList<>();
                        }
                        for (int i = 0; i < response.body().data.getKeywords().size(); i++) {
                            CategoryFragment.this.kB.add(response.body().data.getKeywords().get(i) + "");
                        }
                        if (CategoryFragment.this.getActivity() != null) {
                            CategoryFragment.this.cj();
                        }
                    }
                } else {
                    try {
                        new c(CategoryFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                CategoryFragment.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<KeywordsResponse>> call, Throwable th) {
                th.printStackTrace();
                new c(CategoryFragment.this.getActivity()).dN();
                CategoryFragment.this.bC();
            }
        });
    }

    public void cl() {
        C(getResources().getString(R.string.loading_get_categories));
        this.kF = new d(getContext()).dO().al(e.z(getActivity()));
        this.kF.enqueue(new Callback<GeneralResponse<CategoryResponse>>() { // from class: com.picacomic.fregata.fragments.CategoryFragment.6
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<CategoryResponse>> call, Response<GeneralResponse<CategoryResponse>> response) {
                if (response.code() == 200) {
                    if (response.body() != null && response.body().data != null && response.body().data.categories != null) {
                        for (int i = 0; i < response.body().data.getCategories().size(); i++) {
                            CategoryFragment.this.kC.add(response.body().data.getCategories().get(i));
                        }
                        e.j(CategoryFragment.this.getActivity(), new Gson().toJson(CategoryFragment.this.kC));
                        f.D(CategoryFragment.TAG, CategoryFragment.this.kC.toString());
                        CategoryFragment.this.bI();
                    }
                } else {
                    try {
                        new c(CategoryFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                CategoryFragment.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<CategoryResponse>> call, Throwable th) {
                th.printStackTrace();
                new c(CategoryFragment.this.getActivity()).dN();
                CategoryFragment.this.bC();
            }
        });
    }

    @Override // com.picacomic.fregata.a_pkg.k
    public void C(int i) {
        int i2;
        if (this.kD != null) {
            int size = this.kD.size() + 0;
            switch (i) {
                case 0:
                    break;
                case 1:
                    getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, new LeaderboardContainerFragment(), LeaderboardContainerFragment.TAG).addToBackStack(LeaderboardContainerFragment.TAG).commit();
                    break;
                case 2:
                    getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, new GameFragment(), GameFragment.TAG).addToBackStack(GameFragment.TAG).commit();
                    break;
                case 3:
                    break;
                case 4:
                    if (getActivity() != null) {
                        getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, new PicaAppContainerFragment(), PicaAppContainerFragment.TAG).addToBackStack(PicaAppContainerFragment.TAG).commit();
                    }
                    break;
                case 5:
                    getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, CommentFragment.l(null, "5822a6e3ad7ede654696e482"), CommentFragment.TAG).addToBackStack(CommentFragment.TAG).commit();
                    break;
                case 6:
                    getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicListFragment.a(null, null, null, null, null, "dd", null, null, null), ComicListFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
                    break;
                case 7:
                    getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicListFragment.a("CATEGORY_RANDOM", null, null, null, null, null, null, null, null), ComicListFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
                    break;
                default:
                    if (this.kC != null && this.kC.size() > (i2 = i - size)) {
                        if (this.kC.get(i2).isWeb() && this.kC.get(i2).getLink() != null) {
                            getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, PicaAppFragment.n(this.kC.get(i2).getTitle(), this.kC.get(i2).getLink()), PicaAppFragment.TAG).addToBackStack(PicaAppFragment.TAG).commit();
                        } else {
                            getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicListFragment.a(this.kC.get(i2).getTitle(), null, null, null, null, "dd", null, null, null), ComicListFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
                        }
                        break;
                    }
                    break;
            }
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        if (this.kG != null) {
            this.kG.cancel();
        }
        if (this.kH != null) {
            this.kH.cancel();
        }
        if (this.kF != null) {
            this.kF.cancel();
        }
        super.onDetach();
    }
}
