package com.picacomic.fregata.fragments;

import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.picacomic.fregata.databinding.FragmentProfileEditBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.objects.UserProfileObject;
import com.picacomic.fregata.objects.requests.UpdateProfileBody;
import com.picacomic.fregata.objects.responses.RegisterResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.g;
import com.squareup.picasso.Picasso;
import de.hdodenhof.circleimageview.CircleImageView;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class ProfileEditFragment extends BaseImagePickFragment {
    public static final String TAG = "ProfileEditFragment";

    FragmentProfileEditBinding binding;
    Button button_update;
    EditText editText_slogan;
    CircleImageView imageView_avatar;
    UserProfileObject jW;
    Call<RegisterResponse> qO;
    TextView textView_birth;
    TextView textView_email;
    TextView textView_name;
    Toolbar toolbar;

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.kv = 1;
        if (getArguments() != null) {
            this.jW = (UserProfileObject) getArguments().getParcelable("USER_PROFILE_OBJECT");
        }
    }

    public static ProfileEditFragment b(UserProfileObject userProfileObject) {
        ProfileEditFragment profileEditFragment = new ProfileEditFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("USER_PROFILE_OBJECT", userProfileObject);
        profileEditFragment.setArguments(bundle);
        return profileEditFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentProfileEditBinding.inflate(layoutInflater, viewGroup, false);
        this.button_update = this.binding.buttonProfileUpdate;
        this.editText_slogan = this.binding.editTextProfileSlogan;
        this.imageView_avatar = this.binding.imageViewProfileAvatar;
        this.textView_birth = this.binding.textViewProfileBirth;
        this.textView_email = this.binding.textViewProfileEmail;
        this.textView_name = this.binding.textViewProfileName;
        this.toolbar = this.binding.toolbar;
        a(this.binding.getRoot());
        return this.binding.getRoot();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.imageView_avatar.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ProfileEditFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProfileEditFragment.this.cf();
            }
        });
        this.button_update.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ProfileEditFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ProfileEditFragment.this.editText_slogan == null || ProfileEditFragment.this.editText_slogan.getText() == null) {
                    return;
                }
                ProfileEditFragment.this.ag(ProfileEditFragment.this.editText_slogan.getText().toString());
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        a(this.toolbar, R.string.title_profile_edit, true);
        if (this.jW == null || this.jW.getAvatar() == null) {
            return;
        }
        if (this.jW.getAvatar() != null) {
            Picasso.with(getActivity()).load(g.b(this.jW.getAvatar())).into(this.imageView_avatar);
        }
        this.textView_name.setText(this.jW.getName());
        this.textView_birth.setText(this.jW.getBirthday().substring(0, this.jW.getBirthday().indexOf("T")));
        this.textView_email.setText(this.jW.getEmail());
        this.editText_slogan.setText(this.jW.getSlogan() + "");
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
    }

    @Override // com.picacomic.fregata.fragments.BaseImagePickFragment
    public void K(String str) {
        super.K(str);
        Picasso.with(getActivity()).load(str).into(this.imageView_avatar);
    }

    public void ag(String str) {
        C(getResources().getString(R.string.loading_general));
        this.qO = new d(getContext()).dO().a(e.z(getActivity()), new UpdateProfileBody(str));
        this.qO.enqueue(new Callback<RegisterResponse>() { // from class: com.picacomic.fregata.fragments.ProfileEditFragment.3
            @Override // retrofit2.Callback
            public void onResponse(Call<RegisterResponse> call, Response<RegisterResponse> response) {
                if (response.code() == 200) {
                    if (ProfileEditFragment.this.getFragmentManager() != null) {
                        Toast.makeText(ProfileEditFragment.this.getContext(), R.string.profile_edit_update_success, 0).show();
                        ProfileEditFragment.this.getFragmentManager().popBackStack();
                    }
                } else {
                    try {
                        new c(ProfileEditFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ProfileEditFragment.this.bC();
                ProfileEditFragment.this.bI();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<RegisterResponse> call, Throwable th) {
                th.printStackTrace();
                ProfileEditFragment.this.bC();
                new c(ProfileEditFragment.this.getActivity()).dN();
                ProfileEditFragment.this.bI();
            }
        });
    }
}
