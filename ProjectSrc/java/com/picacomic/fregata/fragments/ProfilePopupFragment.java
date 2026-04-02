package com.picacomic.fregata.fragments;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import androidx.fragment.app.DialogFragment;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;
import com.picacomic.fregata.activities.BaseActivity;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.objects.UserProfileObject;
import com.picacomic.fregata.objects.requests.UserIdBody;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.objects.responses.UserProfileDirtyResponse;
import com.picacomic.fregata.objects.responses.UserProfileResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.AlertDialogCenter;
import com.squareup.picasso.Picasso;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class ProfilePopupFragment extends DialogFragment {
    public static final String TAG = "ProfilePopupFragment";

    @BindView(R.id.imageView_profile_popup_avatar)
    ImageView imageView_avatar;

    @BindView(R.id.imageView_profile_popup_character)
    ImageView imageView_character;
    UserProfileObject jW;
    Call<GeneralResponse<UserProfileResponse>> jX;

    @BindView(R.id.linearLayout_profile_popup_admin_function)
    LinearLayout linearLayout_adminFunction;
    Call<GeneralResponse<UserProfileDirtyResponse>> oo;
    Call<GeneralResponse> qZ;
    Call<GeneralResponse> ra;

    @BindView(R.id.textView_profile_popup_function)
    TextView textView_adminFunction;

    @BindView(R.id.textView_profile_popup_block)
    TextView textView_block;

    @BindView(R.id.textView_profile_popup_level)
    TextView textView_level;

    @BindView(R.id.textView_profile_popup_level_title)
    TextView textView_levelTitle;

    @BindView(R.id.textView_profile_popup_name)
    TextView textView_name;

    @BindView(R.id.textView_profile_popup_remove_comment)
    TextView textView_removeComment;

    @BindView(R.id.textView_profile_popup_slogan)
    TextView textView_slogan;

    @BindView(R.id.textView_profile_popup_title)
    TextView textView_title;

    @BindView(R.id.textView_profile_popup_woo)
    TextView textView_woo;
    public String userId;

    public static ProfilePopupFragment ah(String str) {
        ProfilePopupFragment profilePopupFragment = new ProfilePopupFragment();
        Bundle bundle = new Bundle();
        bundle.putString("USER_ID", str);
        profilePopupFragment.setArguments(bundle);
        return profilePopupFragment;
    }

    public static ProfilePopupFragment c(UserProfileObject userProfileObject) {
        ProfilePopupFragment profilePopupFragment = new ProfilePopupFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("USER_PROFILE_OBJECT", userProfileObject);
        profilePopupFragment.setArguments(bundle);
        return profilePopupFragment;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.userId = getArguments().getString("USER_ID", null);
            this.jW = (UserProfileObject) getArguments().getParcelable("USER_PROFILE_OBJECT");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_profile_popup, viewGroup, false);
        ButterKnife.bind(this, viewInflate);
        this.textView_adminFunction.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ProfilePopupFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ProfilePopupFragment.this.linearLayout_adminFunction.getVisibility() == 0) {
                    ProfilePopupFragment.this.linearLayout_adminFunction.setVisibility(8);
                } else {
                    ProfilePopupFragment.this.linearLayout_adminFunction.setVisibility(0);
                }
            }
        });
        this.textView_block.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ProfilePopupFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProfilePopupFragment.this.dC();
            }
        });
        this.textView_woo.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ProfilePopupFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProfilePopupFragment.this.dG();
            }
        });
        this.textView_removeComment.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ProfilePopupFragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProfilePopupFragment.this.dE();
            }
        });
        this.imageView_avatar.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ProfilePopupFragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ProfilePopupFragment.this.getActivity() == null || !(ProfilePopupFragment.this.getActivity() instanceof BaseActivity) || ProfilePopupFragment.this.jW == null || ProfilePopupFragment.this.jW.getAvatar() == null) {
                    return;
                }
                ((BaseActivity) ProfilePopupFragment.this.getActivity()).D(g.b(ProfilePopupFragment.this.jW.getAvatar()));
                ProfilePopupFragment.this.dismiss();
            }
        });
        this.textView_title.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ProfilePopupFragment.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (g.ax(ProfilePopupFragment.this.getContext()) == 0 || ProfilePopupFragment.this.getActivity() == null || !(ProfilePopupFragment.this.getActivity() instanceof BaseActivity) || ProfilePopupFragment.this.jW == null || ProfilePopupFragment.this.jW.getUserId() == null) {
                    return;
                }
                ((BaseActivity) ProfilePopupFragment.this.getActivity()).h(ProfilePopupFragment.this.jW.getUserId(), ProfilePopupFragment.this.jW.getTitle());
                ProfilePopupFragment.this.dismiss();
            }
        });
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ProfilePopupFragment.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (g.ax(ProfilePopupFragment.this.getContext()) == 0 || ProfilePopupFragment.this.jW == null || ProfilePopupFragment.this.jW.getName() == null || ProfilePopupFragment.this.jW.getUserId() == null) {
                    return;
                }
                ProfilePopupFragment.this.dismiss();
                ((MainActivity) ProfilePopupFragment.this.getActivity()).i(ProfilePopupFragment.this.jW.getName(), ProfilePopupFragment.this.jW.getUserId());
            }
        };
        this.textView_levelTitle.setOnClickListener(onClickListener);
        this.textView_level.setOnClickListener(onClickListener);
        if (this.jW != null) {
            bI();
        } else if (this.userId != null) {
            cd();
        }
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.getWindow().requestFeature(1);
        dialogOnCreateDialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialogOnCreateDialog.setCancelable(true);
        dialogOnCreateDialog.setCanceledOnTouchOutside(true);
        dialogOnCreateDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.picacomic.fregata.fragments.ProfilePopupFragment.13
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 4 || i == 84;
            }
        });
        return dialogOnCreateDialog;
    }

    public void bI() {
        if (this.jW != null) {
            String strU = e.u(getContext());
            if (strU != null && strU.contains("@picacomic.com")) {
                this.textView_adminFunction.setVisibility(0);
            }
            if (this.imageView_avatar != null && this.jW.getAvatar() != null) {
                Picasso.with(getActivity()).load(g.b(this.jW.getAvatar())).into(this.imageView_avatar);
            }
            if (this.imageView_character != null) {
                if (this.jW.getCharacter() != null) {
                    Picasso.with(getActivity()).load(this.jW.getCharacter()).into(this.imageView_character);
                    this.imageView_character.setVisibility(0);
                } else {
                    this.imageView_character.setVisibility(8);
                }
            }
            if (this.textView_level != null) {
                this.textView_level.setText(this.jW.getLevel() + "");
            }
            if (this.textView_name != null && this.jW.getName() != null) {
                this.textView_name.setText(this.jW.getName() + "");
            }
            if (this.textView_title != null && this.jW.getTitle() != null) {
                this.textView_title.setText(this.jW.getTitle() + "");
            }
            if (this.textView_title != null && this.jW.getGender() != null) {
                this.textView_title.append(" (" + g.E(getContext(), this.jW.getGender()) + ")");
            }
            if (this.textView_slogan == null || this.jW.getSlogan() == null) {
                return;
            }
            this.textView_slogan.setText(this.jW.getSlogan() + "");
            return;
        }
        if (getContext() != null) {
            Toast.makeText(getContext(), R.string.alert_general_error, 0).show();
        }
        dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        if (this.jX != null) {
            this.jX.cancel();
        }
        if (this.ra != null) {
            this.ra.cancel();
        }
        if (this.qZ != null) {
            this.qZ.cancel();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        System.gc();
        if (isAdded()) {
            dismiss();
        }
        super.onDetach();
    }

    public void dC() {
        AlertDialogCenter.showCustomAlertDialog(getContext(), R.drawable.icon_exclamation_error, R.string.alert_block_user_title, R.string.alert_block_user_content, new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ProfilePopupFragment.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProfilePopupFragment.this.dD();
            }
        }, (View.OnClickListener) null);
    }

    public void dD() {
        String userId;
        d dVar = new d(getContext());
        if (this.userId != null) {
            userId = this.userId;
        } else {
            userId = this.jW.getUserId();
        }
        this.ra = dVar.dO().b(e.z(getActivity()), new UserIdBody(userId));
        this.ra.enqueue(new Callback<GeneralResponse>() { // from class: com.picacomic.fregata.fragments.ProfilePopupFragment.2
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse> call, Response<GeneralResponse> response) {
                if (response.code() == 200) {
                    Toast.makeText(ProfilePopupFragment.this.getContext(), R.string.toast_block_user_success, 0).show();
                } else {
                    Toast.makeText(ProfilePopupFragment.this.getContext(), R.string.toast_block_user_failed, 0).show();
                    try {
                        new c(ProfilePopupFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ProfilePopupFragment.this.bI();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse> call, Throwable th) {
                th.printStackTrace();
                new c(ProfilePopupFragment.this.getActivity()).dN();
                ProfilePopupFragment.this.bI();
                Toast.makeText(ProfilePopupFragment.this.getContext(), R.string.toast_block_user_failed, 0).show();
            }
        });
    }

    public void dE() {
        AlertDialogCenter.showCustomAlertDialog(getContext(), R.drawable.icon_exclamation_error, R.string.alert_remove_all_comment_title, R.string.alert_remove_all_comment_content, new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ProfilePopupFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProfilePopupFragment.this.dF();
            }
        }, (View.OnClickListener) null);
    }

    public void dF() {
        String userId;
        d dVar = new d(getContext());
        if (this.userId != null) {
            userId = this.userId;
        } else {
            userId = this.jW.getUserId();
        }
        this.qZ = dVar.dO().a(e.z(getActivity()), new UserIdBody(userId));
        this.qZ.enqueue(new Callback<GeneralResponse>() { // from class: com.picacomic.fregata.fragments.ProfilePopupFragment.4
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse> call, Response<GeneralResponse> response) {
                if (response.code() == 200) {
                    Toast.makeText(ProfilePopupFragment.this.getContext(), R.string.toast_remove_all_comment_success, 0).show();
                } else {
                    Toast.makeText(ProfilePopupFragment.this.getContext(), R.string.toast_remove_all_comment_failed, 0).show();
                    try {
                        new c(ProfilePopupFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ProfilePopupFragment.this.bI();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse> call, Throwable th) {
                th.printStackTrace();
                new c(ProfilePopupFragment.this.getActivity()).dN();
                ProfilePopupFragment.this.bI();
                Toast.makeText(ProfilePopupFragment.this.getContext(), R.string.toast_remove_all_comment_failed, 0).show();
            }
        });
    }

    public void dG() {
        String userId;
        d dVar = new d(getContext());
        if (this.userId != null) {
            userId = this.userId;
        } else {
            userId = this.jW.getUserId();
        }
        this.oo = dVar.dO().p(e.z(getActivity()), userId);
        this.oo.enqueue(new Callback<GeneralResponse<UserProfileDirtyResponse>>() { // from class: com.picacomic.fregata.fragments.ProfilePopupFragment.5
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<UserProfileDirtyResponse>> call, Response<GeneralResponse<UserProfileDirtyResponse>> response) {
                if (response.code() == 200) {
                    Toast.makeText(ProfilePopupFragment.this.getContext(), "修改污頭像成功！", 0).show();
                    return;
                }
                try {
                    f.D(ProfilePopupFragment.TAG, response.code() + ": " + response.errorBody().string());
                    new c(ProfilePopupFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<UserProfileDirtyResponse>> call, Throwable th) {
                th.printStackTrace();
                new c(ProfilePopupFragment.this.getActivity()).dN();
            }
        });
    }

    public void cd() {
        this.jX = new d(getContext()).dO().q(e.z(getActivity()), this.userId);
        this.jX.enqueue(new Callback<GeneralResponse<UserProfileResponse>>() { // from class: com.picacomic.fregata.fragments.ProfilePopupFragment.6
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<UserProfileResponse>> call, Response<GeneralResponse<UserProfileResponse>> response) {
                if (response.code() == 200) {
                    if (response.body() != null && response.body().data != null && response.body().data.getUser() != null) {
                        ProfilePopupFragment.this.jW = response.body().data.getUser();
                    }
                } else {
                    try {
                        new c(ProfilePopupFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ProfilePopupFragment.this.bI();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<UserProfileResponse>> call, Throwable th) {
                th.printStackTrace();
                new c(ProfilePopupFragment.this.getActivity()).dN();
                ProfilePopupFragment.this.bI();
            }
        });
    }
}
