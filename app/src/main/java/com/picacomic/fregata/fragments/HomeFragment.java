package com.picacomic.fregata.fragments;

import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.picacomic.fregata.databinding.FragmentHomeBinding;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.compose.views.PicaHomeComposeView;
import com.picacomic.fregata.holders.AnnouncementContainerView;
import com.picacomic.fregata.holders.ComicCollectionView;
import com.picacomic.fregata.objects.AnnouncementObject;
import com.picacomic.fregata.objects.CollectionObject;
import com.picacomic.fregata.objects.ComicListObject;
import com.picacomic.fregata.objects.responses.DataClass.AnnouncementsResponse.AnnouncementsResponse;
import com.picacomic.fregata.objects.responses.DataClass.CollectionsResponse;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import java.util.ArrayList;
import java.util.List;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class HomeFragment extends BaseFragment implements View.OnClickListener, k {
    public static final String TAG = "HomeFragment";
    FragmentHomeBinding binding;
    PicaHomeComposeView composeView_home;
    Call<GeneralResponse<AnnouncementsResponse>> jP;
    int page;
    Call<GeneralResponse<CollectionsResponse>> po;
    ArrayList<AnnouncementObject> pt;
    ArrayList<CollectionObject> pu;

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentHomeBinding.inflate(layoutInflater, viewGroup, false);
        this.composeView_home = this.binding.composeViewHome;
        if (e.E(getContext()) != null && !e.E(getContext()).equalsIgnoreCase("") && (this.pt == null || this.pt.size() == 0)) {
            this.pt = (ArrayList) new Gson().fromJson(e.E(getContext()), new TypeToken<List<AnnouncementObject>>() {
            }.getType());
        }
        a(this.binding.getRoot());
        return this.binding.getRoot();
    }

    @Override
    public void onPause() {
        super.onPause();
        if (this.pt == null || this.pt.size() <= 0 || getContext() == null) {
            return;
        }
        e.l(getContext(), new Gson().toJson(this.pt));
    }

    @Override
    public void init() {
        super.init();
        this.page = 1;
    }

    @Override
    public void ca() {
        /*super.ca();
        this.composeView_home.setOnNotificationAction(new Runnable() {
            @Override
            public void run() {
                HomeFragment.this.doOpenNotification();
            }
        });*/
    }

    @Override
    public void bH() {
        super.bH();
        if (getActivity() == null || !(getActivity() instanceof MainActivity)) {
            return;
        }
        ((MainActivity) getActivity()).t(0);
        bI();
        dk();
        dl();
        renderAnnouncements();
        renderCollections();
    }

    @Override
    public void bI() {
        super.bI();
        try {
            this.composeView_home.setHasNotificationDot(e.ak(getContext()));
        } catch (Exception unused) {
        }
        renderAnnouncements();
        renderCollections();
    }

    @Override
    public void onDetach() {
        if (this.jP != null) {
            this.jP.cancel();
        }
        if (this.po != null) {
            this.po.cancel();
        }
        this.binding = null;
        super.onDetach();
    }

    private void doOpenNotification() {
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        if (getContext() != null && e.x(getContext())) {
            fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit);
        }
        fragmentTransactionBeginTransaction.replace(R.id.container, new NotificationFragment(), NotificationFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
    }

    private void renderAnnouncements() {
        LinearLayout announcementsContainer;
        if (getActivity() == null || this.composeView_home == null || (announcementsContainer = this.composeView_home.getAnnouncementsContainer()) == null) {
            return;
        }
        announcementsContainer.removeAllViews();
        if (this.pt == null || this.pt.size() == 0) {
            return;
        }
        AnnouncementContainerView announcementContainerView = new AnnouncementContainerView(getActivity(), this.pt, 0, new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                HomeFragment.this.doOpenNotification();
            }
        }, new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                HomeFragment.this.doOpenNotification();
            }
        });
        announcementContainerView.getTextView_title().setText(R.string.title_notification);
        announcementsContainer.addView(announcementContainerView);
    }

    private void renderCollections() {
        if (this.composeView_home == null) {
            return;
        }
        for (int i = 0; i < 5; i++) {
            this.composeView_home.getCollectionContainer(i).removeAllViews();
        }
        if (this.pu == null) {
            return;
        }
        for (int i2 = 0; i2 < this.pu.size() && i2 < 5; i2++) {
            try {
                ComicCollectionView comicCollectionView = new ComicCollectionView(getActivity(), this.pu.get(i2).getComics(), (i2 * 10) + 10000, this, null);
                comicCollectionView.getTextView_title().setText(this.pu.get(i2).getTitle() + "");
                this.composeView_home.getCollectionContainer(i2).addView(comicCollectionView);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void dk() {
        Context context = getContext();
        if (context == null || getActivity() == null) {
            return;
        }
        this.jP = new d(context).dO().f(e.z(getActivity()), this.page);
        this.jP.enqueue(new Callback<GeneralResponse<AnnouncementsResponse>>() {
            @Override
            public void onResponse(Call<GeneralResponse<AnnouncementsResponse>> call, Response<GeneralResponse<AnnouncementsResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.toString());
                    if (response.body().data != null && response.body().data.getAnnouncements() != null && response.body().data.getAnnouncements().getDocs() != null) {
                        HomeFragment.this.pt = response.body().data.getAnnouncements().getDocs();
                        HomeFragment.this.renderAnnouncements();
                    }
                } else {
                    try {
                        new c(HomeFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                HomeFragment.this.bC();
                HomeFragment.this.bI();
            }

            @Override
            public void onFailure(Call<GeneralResponse<AnnouncementsResponse>> call, Throwable th) {
                th.printStackTrace();
                HomeFragment.this.bC();
                new c(HomeFragment.this.getActivity()).dN();
                HomeFragment.this.bI();
            }
        });
    }

    public void dl() {
        Context context = getContext();
        if (context == null || getActivity() == null) {
            return;
        }
        this.po = new d(context).dO().aq(e.z(getActivity()));
        this.po.enqueue(new Callback<GeneralResponse<CollectionsResponse>>() {
            @Override
            public void onResponse(Call<GeneralResponse<CollectionsResponse>> call, Response<GeneralResponse<CollectionsResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.toString());
                    if (response.body().data != null && response.body().data.getCollections() != null) {
                        HomeFragment.this.pu = response.body().data.getCollections();
                    }
                    HomeFragment.this.renderCollections();
                } else {
                    try {
                        new c(HomeFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                HomeFragment.this.bC();
                HomeFragment.this.bI();
            }

            @Override
            public void onFailure(Call<GeneralResponse<CollectionsResponse>> call, Throwable th) {
                th.printStackTrace();
                HomeFragment.this.bC();
                new c(HomeFragment.this.getActivity()).dN();
                HomeFragment.this.bI();
            }
        });
    }

    @Override
    public void onClick(View view) {
        if (((Integer) view.getTag()).intValue() / 10000 == 1) {
            int iIntValue = ((Integer) view.getTag()).intValue() - 10000;
            getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicDetailFragment.a(new ComicListObject(this.pu.get(iIntValue / 10).getComics().get(iIntValue % 10).getComicId() + "")), ComicDetailFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
        }
    }

    @Override
    public void C(int i) {
    }
}
