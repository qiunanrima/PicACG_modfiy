package com.picacomic.fregata.fragments;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Bundle;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import androidx.core.content.res.ResourcesCompat;
import androidx.viewpager.widget.ViewPager;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.appcompat.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import butterknife.BindView;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.adapters.GameScreenShotRecyclerViewAdapter;
import com.picacomic.fregata.adapters.GameScreenShotViewPagerAdapter;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.objects.GameDetailObject;
import com.picacomic.fregata.objects.ThumbnailObject;
import com.picacomic.fregata.objects.responses.ActionResponse;
import com.picacomic.fregata.objects.responses.DataClass.GameDetailResponse.GameDetailResponse;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.AlertDialogCenter;
import com.picacomic.fregata.utils.views.SnapRecyclerView;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class GameDetailFragment extends BaseFragment implements k {
    public static final String TAG = "GameDetailFragment";

    @BindView(R.id.appbar)
    AppBarLayout appBarLayout;

    @BindView(R.id.button_game_detail_download)
    Button button_download;

    @BindView(R.id.collapsingToolbarLayout)
    CollapsingToolbarLayout collapsingToolbarLayout;

    @BindView(R.id.frameLayout_game_detail_banner)
    FrameLayout frameLayout_banner;
    private String gameId;

    @BindView(R.id.imageButton_game_detail_close_popup)
    ImageButton imageButton_closePopup;

    @BindView(R.id.imageButton_game_detail_comment)
    ImageButton imageButton_comment;

    @BindView(R.id.imageButton_game_detail_description_height_control)
    ImageButton imageButton_descriptionHeightControl;

    @BindView(R.id.imageButton_game_detail_gift)
    ImageButton imageButton_gift;

    @BindView(R.id.imageButton_game_detail_like)
    ImageButton imageButton_like;

    @BindView(R.id.imageButton_game_detail_play)
    ImageButton imageButton_playVideo;

    @BindView(R.id.imageButton_game_detail_version_description_height_control)
    ImageButton imageButton_versionDescriptionHeightControl;

    @BindView(R.id.imageView_game_detail_adult)
    ImageView imageView_adult;

    @BindView(R.id.imageView_game_detail_android)
    ImageView imageView_android;

    @BindView(R.id.imageView_game_detail_banner)
    ImageView imageView_banner;

    @BindView(R.id.imageView_game_detail_icon)
    ImageView imageView_icon;

    @BindView(R.id.imageView_game_detail_ios)
    ImageView imageView_ios;

    @BindView(R.id.imageView_game_detail_recommend)
    ImageView imageView_recommend;
    TransitionDrawable mT;
    Animation mU;
    Animation mV;

    @BindView(R.id.nestedScrollView_game_detail)
    NestedScrollView nestedScrollView;
    Call<GeneralResponse<GameDetailResponse>> oS;
    Call<GeneralResponse<ActionResponse>> oT;
    GameScreenShotRecyclerViewAdapter oU;
    GameScreenShotViewPagerAdapter oV;
    MediaController oW;
    ArrayList<ThumbnailObject> oX;
    ThumbnailObject oY;
    private GameDetailObject oZ;

    @BindView(R.id.recyclerView_game_detail_screenshots)
    SnapRecyclerView recyclerView_screenShots;

    @BindView(R.id.relativeLayout_game_detail_popup)
    RelativeLayout relativeLayout_popup;
    int screenWidth;

    @BindView(R.id.textView_game_detail_comment_count)
    TextView textView_commentCount;

    @BindView(R.id.textView_game_detail_description)
    TextView textView_description;

    @BindView(R.id.textView_game_detail_downloaded)
    TextView textView_download;

    @BindView(R.id.textView_game_detail_size)
    TextView textView_gameSize;

    @BindView(R.id.textView_game_detail_like_count)
    TextView textView_likeCount;

    @BindView(R.id.textView_game_detail_publisher)
    TextView textView_publisher;

    @BindView(R.id.textView_game_detail_title)
    TextView textView_title;

    @BindView(R.id.textView_game_detail_version_title)
    TextView textView_version;

    @BindView(R.id.textView_game_detail_version_description)
    TextView textView_versionDescription;

    @BindView(R.id.toolbar)
    Toolbar toolbar;

    @BindView(R.id.videoView_game_detail)
    VideoView videoView;

    @BindView(R.id.viewPager_game_detail_screenShot)
    ViewPager viewPager_screenShots;
    boolean isLiked = false;
    boolean pa = false;
    boolean nh = false;
    boolean pb = false;

    public static GameDetailFragment ad(String str) {
        GameDetailFragment gameDetailFragment = new GameDetailFragment();
        Bundle bundle = new Bundle();
        bundle.putString("KEY_GAME_ID", str);
        gameDetailFragment.setArguments(bundle);
        return gameDetailFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.gameId = getArguments().getString("KEY_GAME_ID", "");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_game_detail, viewGroup, false);
        a(viewInflate);
        return viewInflate;
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        this.mU = AnimationUtils.loadAnimation(getActivity(), R.anim.arrow_expand);
        this.mV = AnimationUtils.loadAnimation(getActivity(), R.anim.arrow_collapse);
        if (getActivity() != null && (getActivity() instanceof MainActivity)) {
            ((MainActivity) getActivity()).t(8);
        }
        this.screenWidth = ((WindowManager) getActivity().getSystemService("window")).getDefaultDisplay().getWidth();
        this.recyclerView_screenShots.getLayoutParams().height = (this.screenWidth * 9) / 16;
        this.frameLayout_banner.getLayoutParams().height = (this.screenWidth * 9) / 16;
        this.mT = new TransitionDrawable(new Drawable[]{ResourcesCompat.getDrawable(getResources(), R.drawable.icon_bookmark_off, getActivity().getTheme()), ResourcesCompat.getDrawable(getResources(), R.drawable.icon_bookmark_on, getActivity().getTheme())});
        this.imageButton_like.setImageDrawable(this.mT);
        if (this.oX == null) {
            this.oX = new ArrayList<>();
        }
        this.oU = new GameScreenShotRecyclerViewAdapter(getActivity(), this.oX, this);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.appBarLayout.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: com.picacomic.fregata.fragments.GameDetailFragment.1
            boolean pc = false;
            int pd = -1;

            @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener
            public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
                if (this.pd == -1) {
                    this.pd = appBarLayout.getTotalScrollRange();
                }
                if (this.pd + i == 0) {
                    GameDetailFragment.this.collapsingToolbarLayout.setTitle("Title");
                    this.pc = true;
                } else if (this.pc) {
                    GameDetailFragment.this.collapsingToolbarLayout.setTitle("");
                    this.pc = false;
                }
            }
        });
        this.button_download.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.GameDetailFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (GameDetailFragment.this.oZ == null || GameDetailFragment.this.oZ.getAndroidLinks() == null || GameDetailFragment.this.oZ.getAndroidLinks().size() <= 0) {
                    return;
                }
                g.A(GameDetailFragment.this.getActivity(), GameDetailFragment.this.oZ.getAndroidLinks().get(0));
            }
        });
        this.imageButton_gift.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.GameDetailFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AlertDialogCenter.giftNotReady(GameDetailFragment.this.getContext());
            }
        });
        this.imageButton_playVideo.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.GameDetailFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GameDetailFragment.this.c(0, true);
            }
        });
        this.imageButton_closePopup.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.GameDetailFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GameDetailFragment.this.c(8, true);
            }
        });
        this.imageButton_like.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.GameDetailFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GameDetailFragment.this.dh();
            }
        });
        this.imageButton_comment.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.GameDetailFragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GameDetailFragment.this.getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, CommentFragment.Z(GameDetailFragment.this.gameId), CommentFragment.TAG).addToBackStack(CommentFragment.TAG).commit();
            }
        });
        this.imageButton_descriptionHeightControl.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.GameDetailFragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (GameDetailFragment.this.nh) {
                    GameDetailFragment.this.textView_description.setSingleLine(false);
                    GameDetailFragment.this.nh = false;
                    GameDetailFragment.this.d(GameDetailFragment.this.imageButton_descriptionHeightControl);
                } else {
                    GameDetailFragment.this.textView_description.setSingleLine();
                    GameDetailFragment.this.nh = true;
                    GameDetailFragment.this.e(GameDetailFragment.this.imageButton_descriptionHeightControl);
                }
            }
        });
        this.imageButton_versionDescriptionHeightControl.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.GameDetailFragment.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (GameDetailFragment.this.pb) {
                    GameDetailFragment.this.textView_versionDescription.setSingleLine(false);
                    GameDetailFragment.this.pb = false;
                    GameDetailFragment.this.d(GameDetailFragment.this.imageButton_versionDescriptionHeightControl);
                } else {
                    GameDetailFragment.this.textView_versionDescription.setSingleLine();
                    GameDetailFragment.this.pb = true;
                    GameDetailFragment.this.e(GameDetailFragment.this.imageButton_versionDescriptionHeightControl);
                }
            }
        });
        this.recyclerView_screenShots.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        this.oU = new GameScreenShotRecyclerViewAdapter(getActivity(), this.oX, this);
        this.recyclerView_screenShots.setAdapter(this.oU);
        this.oV = new GameScreenShotViewPagerAdapter(getActivity(), this.oX);
        this.viewPager_screenShots.setAdapter(this.oV);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        a(this.toolbar, R.string.title_game_detail, true);
        if (this.oZ == null) {
            dg();
        } else {
            bI();
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
        if (this.oZ != null) {
            if (this.oZ.isAdult()) {
                this.imageView_adult.setVisibility(0);
            } else {
                this.imageView_adult.setVisibility(8);
            }
            if (this.oZ.isSuggest()) {
                this.imageView_recommend.setVisibility(0);
            } else {
                this.imageView_recommend.setVisibility(8);
            }
            if (this.oZ.isAndroid()) {
                this.imageView_android.setVisibility(0);
            } else {
                this.imageView_android.setVisibility(8);
            }
            if (this.oZ.isIos()) {
                this.imageView_ios.setVisibility(0);
            } else {
                this.imageView_ios.setVisibility(8);
            }
            if (this.isLiked != this.oZ.isLiked()) {
                this.isLiked = this.oZ.isLiked();
                z(this.isLiked);
            }
            if (this.oZ.getVideoLink() != null && !this.oZ.getVideoLink().equalsIgnoreCase("")) {
                try {
                    this.videoView.setVideoPath(this.oZ.getVideoLink() + "");
                    this.oW = new MediaController(getActivity());
                    this.oW.setAnchorView(this.videoView);
                    this.videoView.setMediaController(this.oW);
                    this.pa = true;
                    this.imageButton_playVideo.setVisibility(0);
                } catch (Exception e) {
                    e.printStackTrace();
                    this.pa = false;
                    this.imageButton_playVideo.setVisibility(8);
                }
            } else {
                this.pa = false;
                this.imageButton_playVideo.setVisibility(8);
            }
            this.textView_title.setText(this.oZ.getTitle() + "");
            this.textView_publisher.setText(this.oZ.getPublisher() + "");
            this.textView_gameSize.setText(this.oZ.getAndroidSize() + "");
            this.textView_commentCount.setText(this.oZ.getCommentsCount() + "");
            this.textView_likeCount.setText(this.oZ.getLikesCount() + "");
            this.textView_download.setText(this.oZ.getDownloadsCount() + "");
            this.textView_version.setText(this.oZ.getVersion() + "");
            this.textView_versionDescription.setText(this.oZ.getUpdateContent() + "");
            this.textView_description.setText(this.oZ.getDescription() + "");
            Picasso.with(getActivity()).load(g.b(this.oZ.getIcon())).into(this.imageView_icon);
            if (this.oY != null) {
                Picasso.with(getActivity()).load(g.b(this.oY)).into(this.imageView_banner);
            }
            this.oU.notifyDataSetChanged();
            this.oV.notifyDataSetChanged();
        }
    }

    public void dg() {
        C(getResources().getString(R.string.loading_general));
        f.aA("Show Progress");
        this.oS = new d(getContext()).dO().z(e.z(getActivity()), this.gameId);
        this.oS.enqueue(new Callback<GeneralResponse<GameDetailResponse>>() { // from class: com.picacomic.fregata.fragments.GameDetailFragment.2
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<GameDetailResponse>> call, Response<GeneralResponse<GameDetailResponse>> response) {
                if (response.code() == 200) {
                    if (response.body() != null && response.body().data != null && response.body().data.getGame() != null) {
                        f.aA(response.body().data.getGame().toString());
                        GameDetailFragment.this.oZ = response.body().data.getGame();
                        for (int i = 0; i < response.body().data.getGame().getScreenshots().size(); i++) {
                            if (i == 0) {
                                GameDetailFragment.this.oY = response.body().data.getGame().getScreenshots().get(i);
                            } else {
                                GameDetailFragment.this.oX.add(response.body().data.getGame().getScreenshots().get(i));
                            }
                        }
                        GameDetailFragment.this.bI();
                    }
                } else {
                    try {
                        new c(GameDetailFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                f.aA("dismiss progress");
                GameDetailFragment.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<GameDetailResponse>> call, Throwable th) {
                th.printStackTrace();
                f.aA("dismiss progress");
                GameDetailFragment.this.bC();
                new c(GameDetailFragment.this.getActivity()).dN();
            }
        });
    }

    public void z(boolean z) {
        if (z) {
            this.mT.startTransition(getResources().getInteger(R.integer.animation_general_duration));
        } else {
            this.mT.reverseTransition(getResources().getInteger(R.integer.animation_general_duration));
        }
    }

    public void dh() {
        bA();
        this.oT = new d(getContext()).dO().A(e.z(getActivity()), this.gameId);
        this.oT.enqueue(new Callback<GeneralResponse<ActionResponse>>() { // from class: com.picacomic.fregata.fragments.GameDetailFragment.3
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<ActionResponse>> call, Response<GeneralResponse<ActionResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.toString());
                    if (response.body().data != null && response.body().data.getAction() != null && GameDetailFragment.this.oZ != null) {
                        if (response.body().data.getAction().equalsIgnoreCase("like")) {
                            GameDetailFragment.this.isLiked = true;
                            GameDetailFragment.this.z(true);
                            GameDetailFragment.this.textView_likeCount.setText((GameDetailFragment.this.oZ.getLikesCount() + 1) + "");
                        } else if (response.body().data.getAction().equalsIgnoreCase("unlike")) {
                            GameDetailFragment.this.isLiked = false;
                            GameDetailFragment.this.z(false);
                            GameDetailFragment.this.textView_likeCount.setText((GameDetailFragment.this.oZ.getLikesCount() - 1) + "");
                        }
                    }
                } else {
                    try {
                        new c(GameDetailFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                GameDetailFragment.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<ActionResponse>> call, Throwable th) {
                th.printStackTrace();
                GameDetailFragment.this.bC();
                new c(GameDetailFragment.this.getActivity()).dN();
            }
        });
    }

    @Override // com.picacomic.fregata.a_pkg.k
    public void C(int i) {
        c(0, false);
        this.viewPager_screenShots.setCurrentItem(i);
    }

    public void c(int i, boolean z) {
        if (i == 8) {
            if (this.videoView.isPlaying()) {
                this.videoView.pause();
            }
            this.viewPager_screenShots.setVisibility(8);
            this.videoView.setVisibility(8);
            this.relativeLayout_popup.setVisibility(8);
            this.collapsingToolbarLayout.setVisibility(0);
            return;
        }
        if (i == 0) {
            if (z) {
                if (this.pa) {
                    this.videoView.setVisibility(0);
                    this.videoView.start();
                }
            } else {
                this.viewPager_screenShots.setVisibility(0);
                this.videoView.setVisibility(8);
            }
            this.collapsingToolbarLayout.setVisibility(8);
            this.relativeLayout_popup.setVisibility(0);
        }
    }

    public void d(View view) {
        view.setAnimation(null);
        if (view instanceof ImageButton) {
            ((ImageButton) view).setImageResource(R.drawable.icon_expand);
        }
        this.mU = AnimationUtils.loadAnimation(getActivity(), R.anim.arrow_expand);
        view.startAnimation(this.mU);
    }

    public void e(View view) {
        view.setAnimation(null);
        if (view instanceof ImageButton) {
            ((ImageButton) view).setImageResource(R.drawable.icon_collapse);
        }
        this.mV = AnimationUtils.loadAnimation(getActivity(), R.anim.arrow_collapse);
        view.startAnimation(this.mV);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        if (this.oS != null) {
            this.oS.cancel();
        }
        if (this.oT != null) {
            this.oT.cancel();
        }
        super.onDetach();
    }
}
