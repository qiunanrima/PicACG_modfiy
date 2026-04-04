package com.picacomic.fregata.fragments;

import android.os.Bundle;
import androidx.recyclerview.widget.ItemTouchHelper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.picacomic.fregata.databinding.FragmentProfileComicBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.c.c;
import com.picacomic.fregata.holders.ComicCollectionView;
import com.picacomic.fregata.objects.ComicListObject;
import com.picacomic.fregata.objects.databaseTable.DbComicDetailObject;
import com.picacomic.fregata.objects.databaseTable.DbComicViewRecordObject;
import com.picacomic.fregata.objects.responses.DataClass.ComicListResponse.ComicListResponse;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import java.util.ArrayList;
import java.util.List;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class ProfileComicFragment extends BaseFragment implements View.OnClickListener {
    public static final String TAG = "ProfileComicFragment";

    FragmentProfileComicBinding binding;
    LinearLayout linearLayout_bookmarked;
    LinearLayout linearLayout_downloaded;
    LinearLayout linearLayout_recentView;
    Call<GeneralResponse<ComicListResponse>> qF;
    ArrayList<ComicListObject> qG;
    int qH;
    ArrayList<ComicListObject> qI;
    long qJ;
    ArrayList<ComicListObject> qK;
    long qL;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentProfileComicBinding.inflate(layoutInflater, viewGroup, false);
        this.linearLayout_bookmarked = this.binding.linearLayoutProfileComicBookmarked;
        this.linearLayout_downloaded = this.binding.linearLayoutProfileComicDownloaded;
        this.linearLayout_recentView = this.binding.linearLayoutProfileComicRecentView;
        return this.binding.getRoot();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        if (this.qG != null) {
            bI();
        } else {
            dz();
        }
        if (this.qI != null) {
            dw();
        } else {
            dv();
        }
        if (this.qK != null) {
            dy();
        } else {
            dx();
        }
    }

    public void dv() {
        List listFindWithQuery = DbComicViewRecordObject.findWithQuery(DbComicViewRecordObject.class, "SELECT * FROM db_comic_view_record_object WHERE last_view_timestamp > 0 ORDER BY last_view_timestamp DESC LIMIT 4", new String[0]);
        if (listFindWithQuery != null) {
            this.qI = new ArrayList<>();
            for (int i = 0; i < listFindWithQuery.size(); i++) {
                List listFind = DbComicDetailObject.find(DbComicDetailObject.class, "comic_id = ?", ((DbComicViewRecordObject) listFindWithQuery.get(i)).getComicId());
                if (listFind != null && listFind.size() > 0) {
                    this.qI.add(new ComicListObject((DbComicDetailObject) listFind.get(0)));
                    f.D(TAG, "recent View " + i + " = " + ((DbComicViewRecordObject) listFindWithQuery.get(i)).toString());
                }
            }
            this.qJ = DbComicViewRecordObject.count(DbComicViewRecordObject.class);
            dw();
        }
    }

    public void dw() {
        if (this.qI != null) {
            try {
                ComicCollectionView comicCollectionView = new ComicCollectionView(getActivity(), this.qI, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, this, new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ProfileComicFragment.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (ProfileComicFragment.this.getParentFragment() != null) {
                            ProfileComicFragment.this.getParentFragment().getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicListFragment.a("CATEGORY_RECENT_VIEW", null, null, null, null, null, null, null, null), ComicListFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
                        }
                    }
                });
                comicCollectionView.getTextView_count().setText(this.qJ + "");
                comicCollectionView.getTextView_title().setText(R.string.recent_view);
                this.linearLayout_recentView.addView(comicCollectionView);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void dx() {
        List listFindWithQuery = DbComicDetailObject.findWithQuery(DbComicDetailObject.class, "SELECT * FROM db_comic_detail_object WHERE download_status > 0 ORDER BY downloaded_at DESC LIMIT 4 ", new String[0]);
        if (listFindWithQuery != null) {
            this.qK = new ArrayList<>();
            for (int i = 0; i < listFindWithQuery.size(); i++) {
                this.qK.add(new ComicListObject((DbComicDetailObject) listFindWithQuery.get(i)));
            }
            this.qL = DbComicDetailObject.count(DbComicDetailObject.class, "download_status > 0", null);
            dy();
        }
    }

    public void dy() {
        if (this.qK != null) {
            try {
                ComicCollectionView comicCollectionView = new ComicCollectionView(getActivity(), this.qK, 300, this, new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ProfileComicFragment.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (ProfileComicFragment.this.getParentFragment() != null) {
                            ProfileComicFragment.this.getParentFragment().getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicListFragment.a("CATEGORY_DOWNLOADED", null, null, null, null, null, null, null, null), ComicListFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
                        }
                    }
                });
                comicCollectionView.getTextView_count().setText(this.qL + "");
                comicCollectionView.getTextView_title().setText(R.string.downloaded);
                this.linearLayout_downloaded.addView(comicCollectionView);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
        if (this.qG != null) {
            try {
                ComicCollectionView comicCollectionView = new ComicCollectionView(getActivity(), this.qG, 100, this, new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ProfileComicFragment.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (ProfileComicFragment.this.getParentFragment() != null) {
                            ProfileComicFragment.this.getParentFragment().getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicListFragment.a("CATEGORY_USER_FAVOURITE", null, null, null, null, null, null, null, null), ComicListFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
                        }
                    }
                });
                comicCollectionView.getTextView_count().setText(this.qH + "");
                comicCollectionView.getTextView_title().setText(R.string.bookmarked);
                this.linearLayout_bookmarked.addView(comicCollectionView);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void dz() {
        C(getResources().getString(R.string.loading_general));
        f.aA("Show Progress");
        this.qF = new d(getContext()).dO().a(e.z(getActivity()), c.uQ[0], 1);
        this.qF.enqueue(new Callback<GeneralResponse<ComicListResponse>>() { // from class: com.picacomic.fregata.fragments.ProfileComicFragment.4
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<ComicListResponse>> call, Response<GeneralResponse<ComicListResponse>> response) {
                if (response.code() == 200) {
                    if (response.body() != null && response.body().data != null && response.body().data.getComics() != null && ProfileComicFragment.this.qG == null) {
                        ProfileComicFragment.this.qG = new ArrayList<>();
                        ProfileComicFragment.this.qG.addAll(0, response.body().data.getComics().getDocs());
                        ProfileComicFragment.this.qH = response.body().data.getComics().getTotal();
                        ProfileComicFragment.this.bI();
                    }
                } else {
                    try {
                        new com.picacomic.fregata.b.c(ProfileComicFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                f.aA("dismiss progress");
                ProfileComicFragment.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<ComicListResponse>> call, Throwable th) {
                th.printStackTrace();
                f.aA("dismiss progress");
                ProfileComicFragment.this.bC();
                new com.picacomic.fregata.b.c(ProfileComicFragment.this.getActivity()).dN();
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        if (this.qF != null) {
            this.qF.cancel();
        }
        super.onDetach();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        f.D(TAG, "CLICK TAG = " + view.getTag());
        if (((Integer) view.getTag()).intValue() / 300 == 1) {
            if (getParentFragment() != null) {
                getParentFragment().getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicDetailFragment.a(new ComicListObject(this.qK.get(((Integer) view.getTag()).intValue() % 300).getComicId() + "")), ComicDetailFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
                return;
            }
            return;
        }
        if (((Integer) view.getTag()).intValue() / ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION == 1) {
            if (getParentFragment() != null) {
                getParentFragment().getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicDetailFragment.a(new ComicListObject(this.qI.get(((Integer) view.getTag()).intValue() % ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION).getComicId() + "")), ComicDetailFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
                return;
            }
            return;
        }
        if (((Integer) view.getTag()).intValue() / 100 != 1 || getParentFragment() == null) {
            return;
        }
        getParentFragment().getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicDetailFragment.a(new ComicListObject(this.qG.get(((Integer) view.getTag()).intValue() % 100).getComicId() + "")), ComicDetailFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
    }
}
