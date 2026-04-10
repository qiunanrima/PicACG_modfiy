package com.picacomic.fregata.fragments;

import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.picacomic.fregata.databinding.FragmentNotificationBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.h;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.adapters.NotificationRecyclerViewAdapter;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.compose.views.PicaHeaderRecyclerComposeView;
import com.picacomic.fregata.objects.ComicListObject;
import com.picacomic.fregata.objects.NotificationObject;
import com.picacomic.fregata.objects.responses.DataClass.NotificationsResponse.NotificationsResponse;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import java.util.ArrayList;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class NotificationFragment extends BaseFragment implements h {
    public static final String TAG = "NotificationFragment";
    ArrayList<NotificationObject> ja;
    boolean or;
    int page;
    NotificationRecyclerViewAdapter qj;
    Call<GeneralResponse<NotificationsResponse>> qk;

    FragmentNotificationBinding binding;
    PicaHeaderRecyclerComposeView composeView_notification;
    RecyclerView recyclerView;
    int totalPage;

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentNotificationBinding.inflate(layoutInflater, viewGroup, false);
        this.composeView_notification = this.binding.composeViewNotification;
        this.recyclerView = this.composeView_notification.getRecyclerView();
        a(this.binding.getRoot());
        return this.binding.getRoot();
    }

    @Override
    public void init() {
        super.init();
        if (getActivity() != null && (getActivity() instanceof MainActivity)) {
            ((MainActivity) getActivity()).t(8);
        }
        if (this.ja == null) {
            this.ja = new ArrayList<>();
            this.page = 1;
            this.totalPage = 1;
            this.or = false;
        }
        ds();
    }

    @Override
    public void ca() {
        super.ca();
        this.composeView_notification.setTitleText(getString(R.string.title_notification));
        this.composeView_notification.setOnBackAction(new Runnable() {
            @Override
            public void run() {
                if (NotificationFragment.this.getActivity() != null) {
                    NotificationFragment.this.getActivity().onBackPressed();
                }
            }
        });
        this.recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        this.qj = new NotificationRecyclerViewAdapter(getContext(), this.ja, this);
        this.recyclerView.setAdapter(this.qj);
        this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() {
            @Override
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                super.onScrollStateChanged(recyclerView, i);
                if (recyclerView.getLayoutManager() != null && (recyclerView.getLayoutManager() instanceof LinearLayoutManager) && ((LinearLayoutManager) recyclerView.getLayoutManager()).findLastVisibleItemPosition() == ((LinearLayoutManager) recyclerView.getLayoutManager()).getItemCount() - 1) {
                    NotificationFragment.this.ds();
                }
            }
        });
    }

    @Override
    public void bH() {
        super.bH();
    }

    @Override
    public void bI() {
        super.bI();
        this.qj.notifyDataSetChanged();
    }

    public void ds() {
        if (this.totalPage < this.page || this.or) {
            return;
        }
        this.or = true;
        C(getResources().getString(R.string.loading_comic_viewer));
        this.qk = new d(getContext()).dO().d(e.z(getActivity()), this.page);
        this.qk.enqueue(new Callback<GeneralResponse<NotificationsResponse>>() {
            @Override
            public void onResponse(Call<GeneralResponse<NotificationsResponse>> call, Response<GeneralResponse<NotificationsResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.toString());
                    if (response.body().data != null && response.body().data.getNotifications() != null && response.body().data.getNotifications().getDocs() != null) {
                        for (int i = 0; i < response.body().data.getNotifications().getDocs().size(); i++) {
                            NotificationFragment.this.ja.add(response.body().data.getNotifications().getDocs().get(i));
                        }
                        NotificationFragment.this.totalPage = response.body().data.getNotifications().getPages();
                        NotificationFragment.this.page++;
                    }
                } else {
                    try {
                        new c(NotificationFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                NotificationFragment.this.bC();
                NotificationFragment.this.bI();
                NotificationFragment.this.or = false;
            }

            @Override
            public void onFailure(Call<GeneralResponse<NotificationsResponse>> call, Throwable th) {
                th.printStackTrace();
                NotificationFragment.this.bC();
                new c(NotificationFragment.this.getActivity()).dN();
                NotificationFragment.this.bI();
                NotificationFragment.this.or = false;
            }
        });
    }

    @Override
    public void W(int i) {
        if (this.ja == null || this.ja.size() <= i || this.ja.get(i).getRedirectType() == null) {
            return;
        }
        if (this.ja.get(i).getRedirectType().equalsIgnoreCase("comic") && this.ja.get(i).getRedirectId() != null) {
            getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicDetailFragment.a(new ComicListObject(this.ja.get(i).getRedirectId())), ComicDetailFragment.TAG).addToBackStack(ComicDetailFragment.TAG).commit();
            return;
        }
        if (this.ja.get(i).getRedirectType().equalsIgnoreCase("game") && this.ja.get(i).getRedirectId() != null) {
            getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, GameDetailFragment.ad(this.ja.get(i).getRedirectId()), GameDetailFragment.TAG).addToBackStack(GameDetailFragment.TAG).commit();
            return;
        }
        if (this.ja.get(i).getRedirectType().equalsIgnoreCase("comment") && this.ja.get(i).getRedirectId() != null) {
            getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, CommentFragment.l(null, this.ja.get(i).getRedirectId()), CommentFragment.TAG).addToBackStack(CommentFragment.TAG).commit();
            return;
        }
        if (this.ja.get(i).getRedirectType().equalsIgnoreCase("app")) {
            getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, PicaAppFragment.n(this.ja.get(i).getTitle() + "", this.ja.get(i).getLink()), PicaAppFragment.TAG).addToBackStack(PicaAppFragment.TAG).commit();
            return;
        }
        if (this.ja.get(i).getRedirectType().equalsIgnoreCase("web")) {
            getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, PicaAppFragment.n(this.ja.get(i).getTitle() + "", this.ja.get(i).getLink()), PicaAppFragment.TAG).addToBackStack(PicaAppFragment.TAG).commit();
        }
    }

    @Override
    public void X(int i) {
        if (this.ja == null || this.ja.size() <= i || this.ja.get(i).getSender() == null) {
            return;
        }
        a(this.ja.get(i).getSender());
    }

    @Override
    public void Y(int i) {
        if (this.ja == null || this.ja.size() <= i || this.ja.get(i).getSender() == null) {
            return;
        }
        D(g.b(this.ja.get(i).getCover()));
    }

    @Override
    public void onDetach() {
        if (this.qk != null) {
            this.qk.cancel();
        }
        super.onDetach();
    }
}
