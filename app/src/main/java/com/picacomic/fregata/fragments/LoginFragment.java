package com.picacomic.fregata.fragments;

import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import butterknife.BindView;
import com.picacomic.fregata.R;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.objects.NetworkErrorObject;
import com.picacomic.fregata.objects.requests.ForgotPasswordBody;
import com.picacomic.fregata.objects.requests.ResetPasswordBody;
import com.picacomic.fregata.objects.requests.SignInBody;
import com.picacomic.fregata.objects.responses.ForgotPasswordResponse;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.objects.responses.PasswordResponse;
import com.picacomic.fregata.objects.responses.SignInResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.AlertDialogCenter;
import com.squareup.picasso.Picasso;
import java.util.Random;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class LoginFragment extends BaseFragment {
    public static final String TAG = "LoginFragment";

    @BindView(R.id.button_login_forget_password)
    Button button_forgotPassword;

    @BindView(R.id.button_login_login_button)
    Button button_login;

    @BindView(R.id.button_login_register)
    Button button_register;

    @BindView(R.id.button_login_resend_activation)
    Button button_resendActivation;

    @BindView(R.id.editText_login_email)
    EditText editText_email;

    @BindView(R.id.editText_login_password)
    EditText editText_password;

    @BindView(R.id.imageView_login_pica_logo)
    ImageView imageView_logo;

    @BindView(R.id.linearLayout_login_fragment)
    LinearLayout linearLayout_loginForm;
    EditText pT;
    Call<GeneralResponse<SignInResponse>> pU;
    Call<GeneralResponse<ForgotPasswordResponse>> pV;
    Call<GeneralResponse<PasswordResponse>> pW;
    Animation pX;
    Animation pY;
    boolean pZ = false;
    String qa;
    String qb;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_login, viewGroup, false);
        a(viewInflate);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        this.pX = AnimationUtils.loadAnimation(getActivity(), R.anim.login_form_fade_in);
        this.pY = AnimationUtils.loadAnimation(getActivity(), R.anim.login_logo_fade_in);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.button_login.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.LoginFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LoginFragment.this.editText_password.length() < 8) {
                    AlertDialogCenter.passwordLength(LoginFragment.this.getActivity());
                } else {
                    LoginFragment.this.dr();
                }
            }
        });
        this.button_register.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.LoginFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    LoginFragment.this.getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, new RegisterFragment(), RegisterFragment.TAG).addToBackStack(RegisterFragment.TAG).commit();
                } catch (Exception e) {
                    e.printStackTrace();
                    Toast.makeText(LoginFragment.this.getContext(), "Cannot Run Fragment Animation", 0).show();
                    LoginFragment.this.getFragmentManager().beginTransaction().replace(R.id.container, new RegisterFragment(), RegisterFragment.TAG).addToBackStack(RegisterFragment.TAG).commit();
                }
            }
        });
        this.button_forgotPassword.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.LoginFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                View viewInflate = ((LayoutInflater) LoginFragment.this.getActivity().getSystemService("layout_inflater")).inflate(R.layout.dialog_forgot_password_content_view, (ViewGroup) view.getParent(), false);
                LoginFragment.this.pT = (EditText) viewInflate.findViewById(R.id.editText_dialog_forgot_password_content_email);
                LoginFragment.this.pT.addTextChangedListener(new TextWatcher() { // from class: com.picacomic.fregata.fragments.LoginFragment.3.1
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        if (editable.length() < 2) {
                            LoginFragment.this.pT.setError(LoginFragment.this.getString(R.string.pica_id_error_message_1));
                            LoginFragment.this.pZ = false;
                        } else if (editable.toString().matches("^[0-9a-z_](\\.?[0-9a-z_]){1,29}$")) {
                            LoginFragment.this.pT.setError(null);
                            LoginFragment.this.pZ = true;
                        } else {
                            LoginFragment.this.pT.setError(LoginFragment.this.getString(R.string.pica_id_error_message_2));
                            LoginFragment.this.pZ = false;
                        }
                    }
                });
                new AlertDialog.Builder(LoginFragment.this.getActivity(), R.style.MyAlertDialogStyle).setTitle(R.string.login_forget_password).setView(viewInflate).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.LoginFragment.3.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        if (LoginFragment.this.pZ) {
                            LoginFragment.this.af(LoginFragment.this.pT.getText().toString());
                            return;
                        }
                        Toast.makeText(LoginFragment.this.getActivity(), R.string.alert_pica_id_wrong, 0).show();
                        if (LoginFragment.this.pT == null || LoginFragment.this.pT.getText() == null || LoginFragment.this.pT.getText().toString().equalsIgnoreCase("")) {
                            return;
                        }
                        LoginFragment.this.qa = LoginFragment.this.pT.getText().toString();
                    }
                }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.LoginFragment.3.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                    }
                }).show();
            }
        });
        this.button_resendActivation.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.LoginFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                View viewInflate = ((LayoutInflater) LoginFragment.this.getActivity().getSystemService("layout_inflater")).inflate(R.layout.dialog_forgot_password_content_view, (ViewGroup) view.getParent(), false);
                LoginFragment.this.pT = (EditText) viewInflate.findViewById(R.id.editText_dialog_forgot_password_content_email);
                LoginFragment.this.pT.addTextChangedListener(new TextWatcher() { // from class: com.picacomic.fregata.fragments.LoginFragment.4.1
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        LoginFragment.this.E(true);
                    }
                });
                new AlertDialog.Builder(LoginFragment.this.getActivity(), R.style.MyAlertDialogStyle).setTitle(R.string.login_resend_activation).setView(viewInflate).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.LoginFragment.4.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        LoginFragment.this.E(true);
                        if (LoginFragment.this.pZ) {
                            return;
                        }
                        Toast.makeText(LoginFragment.this.getActivity(), R.string.alert_empty_email, 0).show();
                        if (LoginFragment.this.pT == null || LoginFragment.this.pT.getText() == null || LoginFragment.this.pT.getText().toString().equalsIgnoreCase("")) {
                            return;
                        }
                        LoginFragment.this.qa = LoginFragment.this.pT.getText().toString();
                    }
                }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.LoginFragment.4.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                    }
                }).show();
            }
        });
    }

    public void E(boolean z) {
        if (this.pT != null && this.pT.getText() != null && g.A(this.pT.getText().toString())) {
            this.pT.setError(null);
            this.pZ = true;
        } else if (z) {
            this.pT.setError(getString(R.string.alert_empty_email));
            this.pZ = false;
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        this.linearLayout_loginForm.setVisibility(4);
        Picasso.with(getContext()).load(R.drawable.splash_title_new).into(this.imageView_logo);
        if (getContext() == null || !e.x(getContext())) {
            this.imageView_logo.startAnimation(this.pY);
        }
        this.editText_email.setText(e.u(getActivity()));
        this.editText_password.setText(e.v(getActivity()));
        if (e.z(getActivity()) != null && !e.z(getActivity()).isEmpty()) {
            dq();
        } else {
            bI();
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
        if (getActivity() != null) {
            f.D(TAG, "When will you run");
            this.linearLayout_loginForm.setVisibility(0);
            try {
                this.linearLayout_loginForm.startAnimation(this.pX);
            } catch (Exception e) {
                e.printStackTrace();
                Toast.makeText(getContext(), "Start Animation Error", 0).show();
            }
        }
    }

    public void a(final String str, final int i, String str2) {
        View viewInflate = ((LayoutInflater) getActivity().getSystemService("layout_inflater")).inflate(R.layout.dialog_forgot_password_content_view, (ViewGroup) getView().getParent(), false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.textView_dialog_forgot_password_title);
        this.pT = (EditText) viewInflate.findViewById(R.id.editText_dialog_forgot_password_content_email);
        textView.setText(str2 + "");
        this.pT.setHint("Answer " + i);
        new AlertDialog.Builder(getActivity(), R.style.MyAlertDialogStyle).setTitle(R.string.login_forget_password).setView(viewInflate).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.LoginFragment.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if (LoginFragment.this.pT == null || LoginFragment.this.pT.getText().length() <= 0) {
                    return;
                }
                LoginFragment.this.b(str, i, LoginFragment.this.pT.getText().toString());
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.LoginFragment.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        }).show();
    }

    public void dq() {
        getActivity().startActivity(new Intent(getActivity(), (Class<?>) MainActivity.class));
        getActivity().finish();
    }

    public void dr() {
        C(getResources().getString(R.string.loading_sign_in));
        this.pU = new d(getContext()).dO().a(new SignInBody(this.editText_email.getText().toString(), this.editText_password.getText().toString()));
        this.pU.enqueue(new Callback<GeneralResponse<SignInResponse>>() { // from class: com.picacomic.fregata.fragments.LoginFragment.7
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<SignInResponse>> call, Response<GeneralResponse<SignInResponse>> response) {
                if (response.code() == 200) {
                    if (LoginFragment.this.getActivity() != null) {
                        e.e(LoginFragment.this.getActivity(), LoginFragment.this.editText_email.getText().toString());
                        e.f(LoginFragment.this.getActivity(), LoginFragment.this.editText_password.getText().toString());
                        e.h(LoginFragment.this.getActivity(), response.body().data.getToken());
                    }
                    LoginFragment.this.dq();
                } else {
                    try {
                        new c(LoginFragment.this.getActivity(), response.code(), response.errorBody().string(), new com.picacomic.fregata.a_pkg.g() { // from class: com.picacomic.fregata.fragments.LoginFragment.7.1
                            @Override // com.picacomic.fregata.a_pkg.g
                            public void a(int i, NetworkErrorObject networkErrorObject) {
                                new AlertDialog.Builder(LoginFragment.this.getActivity()).setTitle(networkErrorObject.getError()).setMessage(networkErrorObject.getMessage() + "\n" + networkErrorObject.getDetail()).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.LoginFragment.7.1.1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public void onClick(DialogInterface dialogInterface, int i2) {
                                        dialogInterface.dismiss();
                                    }
                                }).show();
                            }
                        }).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    LoginFragment.this.bI();
                }
                LoginFragment.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<SignInResponse>> call, Throwable th) {
                th.printStackTrace();
                LoginFragment.this.bI();
                LoginFragment.this.bC();
                new c(LoginFragment.this.getActivity()).dN();
            }
        });
    }

    public void af(final String str) {
        C(getResources().getString(R.string.loading_forgot_password));
        this.pV = new d(getContext()).dO().a(new ForgotPasswordBody(str));
        this.pV.enqueue(new Callback<GeneralResponse<ForgotPasswordResponse>>() { // from class: com.picacomic.fregata.fragments.LoginFragment.8
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<ForgotPasswordResponse>> call, Response<GeneralResponse<ForgotPasswordResponse>> response) {
                String question2;
                if (response.code() == 200) {
                    int i = 3;
                    switch (new Random(System.currentTimeMillis()).nextInt(3)) {
                        case 1:
                            i = 2;
                            question2 = response.body().data.getQuestion2();
                            break;
                        case 2:
                            question2 = response.body().data.getQuestion3();
                            break;
                        default:
                            i = 1;
                            question2 = response.body().data.getQuestion1();
                            break;
                    }
                    LoginFragment.this.a(str, i, question2);
                } else {
                    try {
                        new c(LoginFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    LoginFragment.this.bI();
                }
                LoginFragment.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<ForgotPasswordResponse>> call, Throwable th) {
                th.printStackTrace();
                LoginFragment.this.bI();
                LoginFragment.this.bC();
                new c(LoginFragment.this.getActivity()).dN();
            }
        });
    }

    public void b(String str, int i, String str2) {
        C(getResources().getString(R.string.loading_forgot_password));
        this.pW = new d(getContext()).dO().a(new ResetPasswordBody(str, i, str2));
        this.pW.enqueue(new Callback<GeneralResponse<PasswordResponse>>() { // from class: com.picacomic.fregata.fragments.LoginFragment.9
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<PasswordResponse>> call, Response<GeneralResponse<PasswordResponse>> response) {
                if (response.code() == 200) {
                    LoginFragment.this.qb = response.body().data.getPassword();
                    LoginFragment.this.editText_password.setText(LoginFragment.this.qb);
                    LoginFragment.this.editText_password.setInputType(1);
                    try {
                        ((ClipboardManager) LoginFragment.this.getActivity().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("text", LoginFragment.this.qb));
                        Toast.makeText(LoginFragment.this.getContext(), "新密碼已複製", 1).show();
                        Toast.makeText(LoginFragment.this.getContext(), "登入後請到「設定」修改密碼", 1).show();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else {
                    try {
                        new c(LoginFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    LoginFragment.this.bI();
                }
                LoginFragment.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<PasswordResponse>> call, Throwable th) {
                th.printStackTrace();
                LoginFragment.this.bI();
                LoginFragment.this.bC();
                new c(LoginFragment.this.getActivity()).dN();
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        if (this.pU != null) {
            this.pU.cancel();
        }
        if (this.pV != null) {
            this.pV.cancel();
        }
        if (this.pW != null) {
            this.pW.cancel();
        }
        super.onDetach();
    }
}
