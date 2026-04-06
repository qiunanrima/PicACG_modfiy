package com.picacomic.fregata.fragments;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.google.gson.Gson;
import com.picacomic.fregata.databinding.FragmentProfileBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.adapters.ProfileFragmentPagerAdapter;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.compose.views.PicaProfileComposeView;
import com.picacomic.fregata.objects.UserBasicObject;
import com.picacomic.fregata.objects.UserProfileObject;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.objects.responses.PunchInResponse;
import com.picacomic.fregata.objects.responses.UserProfileResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.AlertDialogCenter;
import com.picacomic.fregata.utils.views.ExpCircleView;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.Target;
import de.hdodenhof.circleimageview.CircleImageView;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class ProfileFragment extends BaseImagePickFragment {
    public static final String TAG = "ProfileFragment";
    FragmentProfileBinding binding;
    PicaProfileComposeView composeView_profile;
    ExpCircleView expCircleView;
    CircleImageView imageView_avatar;
    ImageView imageView_avatarBlur;
    ImageView imageView_character;
    ImageView imageView_verified;
    UserProfileObject jW;
    Call<GeneralResponse<UserProfileResponse>> jX;
    ProfileFragmentPagerAdapter qR;
    Call<GeneralResponse<PunchInResponse>> qS;
    CountDownTimer qT;
    TabLayout tabLayout;
    TextView textView_honor;
    TextView textView_level;
    TextView textView_name;
    TextView textView_punchIn;
    TextView textView_slogan;
    ViewPager viewPager_tags;
    float qU = 180.0f;
    int gridSize = 1;
    Target qV = new Target() {
        @Override
        public void onBitmapFailed(Drawable drawable) {
        }

        @Override
        public void onPrepareLoad(Drawable drawable) {
        }

        @Override
        public void onBitmapLoaded(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
            if (bitmap == null || ProfileFragment.this.imageView_avatar == null || ProfileFragment.this.imageView_avatarBlur == null) {
                return;
            }
            ProfileFragment.this.imageView_avatarBlur.setImageBitmap(g.a(bitmap, 0.5f, 5));
        }
    };

    public int Z(int i) {
        int i2 = (i * 2) - 1;
        return ((i2 * i2) - 1) * 25;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.kv = 1;
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentProfileBinding.inflate(layoutInflater, viewGroup, false);
        this.composeView_profile = this.binding.composeViewProfile;
        this.expCircleView = this.composeView_profile.getExpCircleView();
        this.imageView_avatar = this.composeView_profile.getAvatarView();
        this.imageView_avatarBlur = this.composeView_profile.getAvatarBlurView();
        this.imageView_character = this.composeView_profile.getCharacterView();
        this.imageView_verified = this.composeView_profile.getVerifiedView();
        this.tabLayout = this.composeView_profile.getTabLayout();
        this.textView_honor = this.composeView_profile.getHonorTextView();
        this.textView_level = this.composeView_profile.getLevelTextView();
        this.textView_name = this.composeView_profile.getNameTextView();
        this.textView_punchIn = this.composeView_profile.getPunchInTextView();
        this.textView_slogan = this.composeView_profile.getSloganTextView();
        this.viewPager_tags = this.composeView_profile.getViewPager();
        a(this.binding.getRoot());
        return this.binding.getRoot();
    }

    @Override
    public void init() {
        super.init();
        for (int i = 2; i < 101; i++) {
            f.D(TAG, "LEVEL = " + i + " EXP = " + Z(i));
        }
    }

    @Override
    public void ca() {
        super.ca();
        this.composeView_profile.setOnEditAction(new Runnable() {
            @Override
            public void run() {
                if (ProfileFragment.this.jW != null) {
                    ProfileFragment.this.getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ProfileEditFragment.b(ProfileFragment.this.jW), ProfileEditFragment.TAG).addToBackStack(ProfileEditFragment.TAG).commit();
                }
            }
        });
        this.composeView_profile.setOnPunchInAction(new Runnable() {
            @Override
            public void run() {
                ProfileFragment.this.dB();
            }
        });
        this.composeView_profile.setOnAvatarAction(new Runnable() {
            @Override
            public void run() {
                ProfileFragment.this.cf();
            }
        });
    }

    @Override
    public void bH() {
        super.bH();
        this.expCircleView.setGridSize(20);
        if (getActivity() != null && (getActivity() instanceof MainActivity)) {
            ((MainActivity) getActivity()).t(0);
        }
        cd();
    }

    public void j(final float f) {
        this.qT = new CountDownTimer(1000L, 10L) {
            @Override
            public void onTick(long j) {
                if (ProfileFragment.this.expCircleView != null) {
                    ProfileFragment.this.expCircleView.setAngle(((1000 - j) * f) / 1000.0f);
                }
            }

            @Override
            public void onFinish() {
                if (ProfileFragment.this.expCircleView != null) {
                    ProfileFragment.this.expCircleView.setAngle(f);
                }
            }
        };
        this.qT.start();
    }

    private boolean dC() {
        return isAdded() && this.binding != null && this.viewPager_tags != null && this.tabLayout != null;
    }

    private void dD(UserBasicObject userBasicObject) {
        if (!dC()) {
            f.D(TAG, "Skip setup pager because fragment is not attached");
            return;
        }
        this.qR = new ProfileFragmentPagerAdapter(getChildFragmentManager(), userBasicObject);
        this.viewPager_tags.setAdapter(this.qR);
        this.tabLayout.setupWithViewPager(this.viewPager_tags);
        TabLayout.Tab tabAt = this.tabLayout.getTabAt(0);
        if (tabAt != null) {
            tabAt.setText(R.string.comic);
        }
        if (userBasicObject != null) {
            TabLayout.Tab tabAt2 = this.tabLayout.getTabAt(1);
            if (tabAt2 != null) {
                tabAt2.setText(R.string.comment);
            }
        }
    }

    @Override
    public void bI() {
        super.bI();
        if (!dC()) {
            f.D(TAG, "Skip refresh because fragment view is gone");
            return;
        }
        if (this.jW != null) {
            try {
                e.i(getContext(), new Gson().toJson(this.jW));
                if (this.jW.getAvatar() != null) {
                    Picasso.with(getActivity()).load(g.b(this.jW.getAvatar())).into(this.qV);
                    Picasso.with(getActivity()).load(g.b(this.jW.getAvatar())).into(this.imageView_avatar);
                }
                if (this.jW.getCharacter() != null) {
                    Picasso.with(getContext()).load(this.jW.getCharacter()).into(this.imageView_character);
                    this.imageView_character.setVisibility(0);
                } else {
                    this.imageView_character.setVisibility(8);
                }
                int iA = e.A(getActivity());
                if (iA != -1 && iA != this.jW.getLevel()) {
                    AlertDialogCenter.levelUp(getActivity());
                }
                e.a((Context) getActivity(), this.jW.getLevel());
                this.textView_level.setText(this.jW.getLevel() + " (" + this.jW.getExp() + "/" + Z(this.jW.getLevel() + 1) + ")");
                this.textView_name.setText(this.jW.getName() + "");
                this.textView_honor.setText(this.jW.getTitle() + "");
                this.textView_slogan.setText(this.jW.getSlogan() + "");
                this.imageView_verified.setVisibility(this.jW.isVerified() ? 0 : 8);
                this.qU = (this.jW.getExp() * 360.0f) / Z(this.jW.getLevel() + 1);
                f.D(TAG, "Angle = " + this.qU + " next = " + Z(this.jW.getLevel()) + 1);
                j(this.qU);
                dD(new UserBasicObject(this.jW));
                this.textView_punchIn.setVisibility(this.jW.isPunched() ? 8 : 0);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        dD(null);
    }

    @Override
    public void K(String str) {
        super.K(str);
        Picasso.with(getActivity()).load(str).into(this.imageView_avatar);
        this.imageView_avatarBlur.setImageBitmap(g.a(g.b(getActivity(), Uri.parse(str)), 0.5f, 5));
        if (getActivity() != null) {
            cd();
        }
    }

    @Override
    public void onDetach() {
        dE();
        super.onDetach();
    }

    @Override
    public void onDestroyView() {
        dE();
        this.expCircleView = null;
        this.imageView_avatar = null;
        this.imageView_avatarBlur = null;
        this.imageView_character = null;
        this.imageView_verified = null;
        this.tabLayout = null;
        this.textView_honor = null;
        this.textView_level = null;
        this.textView_name = null;
        this.textView_punchIn = null;
        this.textView_slogan = null;
        this.viewPager_tags = null;
        this.binding = null;
        super.onDestroyView();
    }

    private void dE() {
        if (this.qT != null) {
            this.qT.cancel();
            this.qT = null;
        }
        if (this.jX != null) {
            this.jX.cancel();
            this.jX = null;
        }
        if (this.qS != null) {
            this.qS.cancel();
            this.qS = null;
        }
    }

    public void dA() {
        if (getActivity() == null || this.textView_punchIn == null) {
            return;
        }
        this.textView_punchIn.setVisibility(8);
        AlertDialogCenter.punchedIn(getContext());
    }

    public void dB() {
        C(getResources().getString(R.string.loading_general));
        f.aA("Show Progress");
        this.qS = new d(getContext()).dO().an(e.z(getActivity()));
        this.qS.enqueue(new Callback<GeneralResponse<PunchInResponse>>() {
            @Override
            public void onResponse(Call<GeneralResponse<PunchInResponse>> call, Response<GeneralResponse<PunchInResponse>> response) {
                if (call.isCanceled() || !ProfileFragment.this.dC()) {
                    return;
                }
                if (response.code() == 200) {
                    if (response.body() != null && response.body().data != null) {
                        ProfileFragment.this.dA();
                    }
                } else {
                    try {
                        new c(ProfileFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                f.aA("dismiss progress");
                ProfileFragment.this.bC();
            }

            @Override
            public void onFailure(Call<GeneralResponse<PunchInResponse>> call, Throwable th) {
                if (call.isCanceled() || !ProfileFragment.this.isAdded()) {
                    return;
                }
                th.printStackTrace();
                f.aA("dismiss progress");
                ProfileFragment.this.bC();
                new c(ProfileFragment.this.getActivity()).dN();
            }
        });
    }

    public void cd() {
        C(getResources().getString(R.string.loading_general));
        f.aA("Show Progress");
        this.jX = new d(getContext()).dO().am(e.z(getActivity()));
        this.jX.enqueue(new Callback<GeneralResponse<UserProfileResponse>>() {
            @Override
            public void onResponse(Call<GeneralResponse<UserProfileResponse>> call, Response<GeneralResponse<UserProfileResponse>> response) {
                if (call.isCanceled() || !ProfileFragment.this.dC()) {
                    return;
                }
                if (response.code() == 200) {
                    if (response.body() != null && response.body().data != null && response.body().data.getUser() != null) {
                        ProfileFragment.this.jW = response.body().data.getUser();
                        if (ProfileFragment.this.getActivity() == null || ProfileFragment.this == null) {
                            f.D(ProfileFragment.TAG, "ProfileFragment Null Error");
                        }
                    }
                } else {
                    try {
                        new c(ProfileFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ProfileFragment.this.bI();
                f.aA("dismiss progress");
                ProfileFragment.this.bC();
            }

            @Override
            public void onFailure(Call<GeneralResponse<UserProfileResponse>> call, Throwable th) {
                if (call.isCanceled() || !ProfileFragment.this.isAdded()) {
                    return;
                }
                th.printStackTrace();
                f.aA("dismiss progress");
                ProfileFragment.this.bC();
                new c(ProfileFragment.this.getActivity()).dN();
                ProfileFragment.this.bI();
            }
        });
    }
}
