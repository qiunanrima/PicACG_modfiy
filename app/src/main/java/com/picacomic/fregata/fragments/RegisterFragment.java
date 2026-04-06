package com.picacomic.fregata.fragments;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.DatePicker;
import android.widget.FrameLayout;
import com.picacomic.fregata.databinding.FragmentRegisterBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.g;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.c.a;
import com.picacomic.fregata.compose.views.PicaRegisterComposeView;
import com.picacomic.fregata.objects.NetworkErrorObject;
import com.picacomic.fregata.objects.requests.RegisterBody;
import com.picacomic.fregata.objects.requests.SignInBody;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.objects.responses.RegisterResponse;
import com.picacomic.fregata.objects.responses.SignInResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.views.AlertDialogCenter;
import java.util.Calendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class RegisterFragment extends BaseFragment {
    public static final String TAG = "RegisterFragment";
    String birthday;
    FragmentRegisterBinding binding;
    PicaRegisterComposeView composeView_register;
    FrameLayout frameLayout_backgroundWhite;
    String[] genders;
    Animation iE;
    Call<GeneralResponse<SignInResponse>> pU;
    String rg;
    private int rh;
    private int ri;
    private int rj;
    private int rk;
    private int rl;
    private int rm;
    private int rn;
    Call<RegisterResponse> ro;

    static /* synthetic */ int c(RegisterFragment registerFragment) {
        int i = registerFragment.rk;
        registerFragment.rk = i - 1;
        return i;
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentRegisterBinding.inflate(layoutInflater, viewGroup, false);
        this.composeView_register = this.binding.composeViewRegister;
        this.frameLayout_backgroundWhite = this.binding.frameLayoutRegisterBackgroundWhite;
        this.genders = getResources().getStringArray(R.array.register_genders);
        a(this.binding.getRoot());
        return this.binding.getRoot();
    }

    @Override
    public void init() {
        super.init();
        this.rh = Calendar.getInstance().get(1);
        this.ri = Calendar.getInstance().get(2);
        this.rj = Calendar.getInstance().get(5);
        this.iE = AnimationUtils.loadAnimation(getActivity(), R.anim.register_bg_white_fade_in);
        this.rl = this.rh;
        this.rm = this.ri;
        this.rn = this.rj;
    }

    @Override
    public void ca() {
        super.ca();
        this.composeView_register.setGenders(this.genders);
        this.composeView_register.setOnBackAction(new Runnable() {
            @Override
            public void run() {
                if (RegisterFragment.this.getActivity() != null) {
                    RegisterFragment.this.getActivity().onBackPressed();
                }
            }
        });
        this.composeView_register.setOnSubmitAction(new Runnable() {
            @Override
            public void run() {
                RegisterFragment.this.dI();
            }
        });
        this.composeView_register.setOnBirthdayAction(new Runnable() {
            @Override
            public void run() {
                new DatePickerDialog(RegisterFragment.this.getActivity(), new DatePickerDialog.OnDateSetListener() {
                    @Override
                    public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                        String string = (i2 + 1) + "";
                        String str = i3 + "";
                        int i4 = i2 + 1;
                        if (i4 < 10) {
                            string = "0" + i4;
                        }
                        if (i3 < 10) {
                            str = "0" + i3;
                        }
                        RegisterFragment.this.birthday = i + "-" + string + "-" + str;
                        RegisterFragment.this.rk = RegisterFragment.this.rh - i;
                        if (i2 <= RegisterFragment.this.ri) {
                            if (i2 == RegisterFragment.this.ri && i3 > RegisterFragment.this.rj) {
                                RegisterFragment.c(RegisterFragment.this);
                            }
                        } else {
                            RegisterFragment.c(RegisterFragment.this);
                        }
                        RegisterFragment.this.rl = i;
                        RegisterFragment.this.rm = i2;
                        RegisterFragment.this.rn = i3;
                        RegisterFragment.this.composeView_register.setBirthdayText(((Object) RegisterFragment.this.getResources().getText(R.string.register_date_of_birth_prefix)) + RegisterFragment.this.birthday + "（" + RegisterFragment.this.rk + ((Object) RegisterFragment.this.getResources().getText(R.string.register_age)) + "）");
                    }
                }, RegisterFragment.this.rl, RegisterFragment.this.rm, RegisterFragment.this.rn).show();
            }
        });
    }

    @Override
    public void bH() {
        super.bH();
        this.frameLayout_backgroundWhite.startAnimation(this.iE);
        aa(0);
    }

    @Override
    public void bI() {
        super.bI();
    }

    public void aa(int i) {
        this.composeView_register.setSelectedGenderIndex(i);
        this.rg = a.uN[i];
    }

    public void dI() {
        String username = this.composeView_register.getUsernameValue();
        if (username == null) {
            return;
        }
        aa(this.composeView_register.getSelectedGenderIndex());
        Matcher matcher = Pattern.compile("^嗶\\s*咔(.*)").matcher(username);
        if (username.length() < 2 || username.length() > 50) {
            AlertDialogCenter.usernameLength(getActivity());
            return;
        }
        if (matcher.matches()) {
            AlertDialogCenter.cannotStartWithPica(getActivity());
            return;
        }
        if (this.composeView_register.getPasswordValue().length() < 8) {
            AlertDialogCenter.passwordLength(getActivity());
            return;
        }
        if (!this.composeView_register.getPasswordConfirmValue().equals(this.composeView_register.getPasswordValue())) {
            AlertDialogCenter.passwordNotMatch(getActivity());
            return;
        }
        if (this.composeView_register.getQuestion1Value().length() == 0 || this.composeView_register.getQuestion2Value().length() == 0 || this.composeView_register.getQuestion3Value().length() == 0 || this.composeView_register.getAnswer1Value().length() == 0 || this.composeView_register.getAnswer2Value().length() == 0 || this.composeView_register.getAnswer3Value().length() == 0) {
            return;
        }
        if (this.birthday == null || this.birthday.equalsIgnoreCase("")) {
            AlertDialogCenter.birthday(getActivity());
        } else if (this.rk < 18) {
            AlertDialogCenter.ageNotEnough(getActivity());
        } else {
            dJ();
        }
    }

    public void dJ() {
        C(getResources().getString(R.string.loading_register));
        this.ro = new d(getContext()).dO().a(new RegisterBody(this.composeView_register.getUsernameValue(), this.composeView_register.getEmailValue(), this.composeView_register.getPasswordValue(), this.birthday, this.rg, this.composeView_register.getQuestion1Value(), this.composeView_register.getQuestion2Value(), this.composeView_register.getQuestion3Value(), this.composeView_register.getAnswer1Value(), this.composeView_register.getAnswer2Value(), this.composeView_register.getAnswer3Value()));
        this.ro.enqueue(new Callback<RegisterResponse>() {
            @Override
            public void onResponse(Call<RegisterResponse> call, Response<RegisterResponse> response) {
                if (response.code() == 200) {
                    AlertDialogCenter.showCustomAlertDialog(RegisterFragment.this.getActivity(), R.drawable.icon_success, R.string.alert_register_success_title, R.string.alert_register_success, new View.OnClickListener() {
                        @Override
                        public void onClick(View view) {
                            e.e(RegisterFragment.this.getActivity(), RegisterFragment.this.composeView_register.getEmailValue());
                            e.f(RegisterFragment.this.getActivity(), RegisterFragment.this.composeView_register.getPasswordValue());
                            RegisterFragment.this.dr();
                        }
                    }, (View.OnClickListener) null);
                } else {
                    try {
                        new c(RegisterFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                RegisterFragment.this.bC();
            }

            @Override
            public void onFailure(Call<RegisterResponse> call, Throwable th) {
                th.printStackTrace();
                RegisterFragment.this.bC();
                new c(RegisterFragment.this.getActivity()).dN();
            }
        });
    }

    public void dr() {
        C(getResources().getString(R.string.loading_sign_in));
        this.pU = new d(getContext()).dO().a(new SignInBody(this.composeView_register.getEmailValue(), this.composeView_register.getPasswordValue()));
        this.pU.enqueue(new Callback<GeneralResponse<SignInResponse>>() {
            @Override
            public void onResponse(Call<GeneralResponse<SignInResponse>> call, Response<GeneralResponse<SignInResponse>> response) {
                if (response.code() == 200) {
                    if (RegisterFragment.this.getActivity() != null) {
                        e.e(RegisterFragment.this.getActivity(), RegisterFragment.this.composeView_register.getEmailValue());
                        e.f(RegisterFragment.this.getActivity(), RegisterFragment.this.composeView_register.getPasswordValue());
                        e.h(RegisterFragment.this.getActivity(), response.body().data.getToken());
                    }
                    RegisterFragment.this.dq();
                } else {
                    if (RegisterFragment.this.getActivity() != null) {
                        RegisterFragment.this.getActivity().onBackPressed();
                    }
                    try {
                        new c(RegisterFragment.this.getActivity(), response.code(), response.errorBody().string(), new g() {
                            @Override
                            public void a(int i, NetworkErrorObject networkErrorObject) {
                                new AlertDialog.Builder(RegisterFragment.this.getActivity()).setTitle(networkErrorObject.getError()).setMessage(networkErrorObject.getMessage() + "\n" + networkErrorObject.getDetail()).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                                    @Override
                                    public void onClick(DialogInterface dialogInterface, int i2) {
                                        dialogInterface.dismiss();
                                    }
                                }).show();
                            }
                        }).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    RegisterFragment.this.bI();
                }
                RegisterFragment.this.bC();
            }

            @Override
            public void onFailure(Call<GeneralResponse<SignInResponse>> call, Throwable th) {
                th.printStackTrace();
                RegisterFragment.this.bI();
                RegisterFragment.this.bC();
                new c(RegisterFragment.this.getActivity()).dN();
            }
        });
    }

    public void dq() {
        getActivity().startActivity(new Intent(getActivity(), (Class<?>) MainActivity.class));
        getActivity().finish();
    }

    @Override
    public void onDetach() {
        super.onDetach();
        if (this.ro != null) {
            this.ro.cancel();
        }
        if (this.pU != null) {
            this.pU.cancel();
        }
    }
}
