package com.picacomic.fregata.fragments;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.core.app.NotificationManagerCompat;
import androidx.appcompat.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import com.picacomic.fregata.databinding.FragmentSettingBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.activities.LoginActivity;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.compose.views.OnBooleanChangedListener;
import com.picacomic.fregata.compose.views.PicaSettingsComposeView;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.AlertDialogCenter;
import java.io.File;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes.dex */
public class SettingFragment extends BaseFragment {
    public static final String TAG = "SettingFragment";
    FragmentSettingBinding binding;
    PicaSettingsComposeView composeView_setting;
    Toolbar toolbar;
    int hM;
    String[] rA;
    int rB;
    String[] rC;
    int rD;
    String[] rw;
    int rx;
    String[] ry;
    int rz;

    public int F(boolean z) {
        return z ? 0 : 1;
    }

    public boolean ab(int i) {
        return i == 0;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentSettingBinding.inflate(layoutInflater, viewGroup, false);
        this.composeView_setting = this.binding.composeViewSetting;
        this.toolbar = this.binding.toolbar;
        a(this.binding.getRoot());
        return this.binding.getRoot();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        this.rw = getResources().getStringArray(R.array.setting_options_screen_orientations);
        this.ry = getResources().getStringArray(R.array.setting_options_scroll_directions);
        this.rA = getResources().getStringArray(R.array.setting_options_image_qualities);
        this.rC = getResources().getStringArray(R.array.setting_theme_colors);
        this.rx = F(e.M(getActivity()));
        this.rz = F(e.N(getActivity()));
        this.rB = e.R(getActivity());
        this.rD = e.al(getActivity());
        this.hM = e.O(getActivity());
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.composeView_setting.setOnScreenOrientationAction(new Runnable() { // from class: com.picacomic.fregata.fragments.SettingFragment.1
            @Override // java.lang.Runnable
            public void run() {
                new AlertDialog.Builder(SettingFragment.this.getActivity(), R.style.MyAlertDialogStyle).setTitle(R.string.setting_comic_viewer_screen_orientation).setSingleChoiceItems(R.array.setting_options_screen_orientations, SettingFragment.this.rx, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.SettingFragment.1.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                        SettingFragment.this.rx = i;
                        SettingFragment.this.composeView_setting.setScreenOrientationValue(SettingFragment.this.rw[SettingFragment.this.rx]);
                        e.e(SettingFragment.this.getActivity(), SettingFragment.this.ab(SettingFragment.this.rx));
                    }
                }).show();
            }
        });
        this.composeView_setting.setOnScrollDirectionAction(new Runnable() { // from class: com.picacomic.fregata.fragments.SettingFragment.2
            @Override // java.lang.Runnable
            public void run() {
                new AlertDialog.Builder(SettingFragment.this.getActivity(), R.style.MyAlertDialogStyle).setTitle(R.string.setting_comic_viewer_scroll_direction).setSingleChoiceItems(R.array.setting_options_scroll_directions, SettingFragment.this.rz, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.SettingFragment.2.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                        SettingFragment.this.rz = i;
                        SettingFragment.this.composeView_setting.setScrollDirectionValue(SettingFragment.this.ry[SettingFragment.this.rz]);
                        e.f(SettingFragment.this.getActivity(), SettingFragment.this.ab(SettingFragment.this.rz));
                    }
                }).show();
            }
        });
        this.composeView_setting.setOnImageQualityAction(new Runnable() { // from class: com.picacomic.fregata.fragments.SettingFragment.3
            @Override // java.lang.Runnable
            public void run() {
                new AlertDialog.Builder(SettingFragment.this.getActivity(), R.style.MyAlertDialogStyle).setTitle(R.string.setting_comic_viewer_image_quality).setSingleChoiceItems(R.array.setting_options_image_qualities, SettingFragment.this.rB, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.SettingFragment.3.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                        SettingFragment.this.rB = i;
                        SettingFragment.this.composeView_setting.setImageQualityValue(SettingFragment.this.rA[SettingFragment.this.rB]);
                        e.c(SettingFragment.this.getActivity(), SettingFragment.this.rB);
                    }
                }).show();
            }
        });
        this.composeView_setting.setOnThemeColorAction(new Runnable() { // from class: com.picacomic.fregata.fragments.SettingFragment.4
            @Override // java.lang.Runnable
            public void run() {
                if (Build.VERSION.SDK_INT >= 21) {
                    new AlertDialog.Builder(SettingFragment.this.getActivity(), R.style.MyAlertDialogStyle).setTitle(R.string.setting_theme_color).setSingleChoiceItems(R.array.setting_theme_colors, SettingFragment.this.rD, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.SettingFragment.4.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            dialogInterface.dismiss();
                            if (SettingFragment.this.rD != i) {
                                SettingFragment.this.rD = i;
                                SettingFragment.this.composeView_setting.setThemeColorValue(SettingFragment.this.rC[SettingFragment.this.rD]);
                                e.h(SettingFragment.this.getActivity(), SettingFragment.this.rD);
                                SettingFragment.this.getActivity().startActivity(new Intent(SettingFragment.this.getActivity(), (Class<?>) MainActivity.class));
                                SettingFragment.this.getActivity().finish();
                            }
                        }
                    }).show();
                } else {
                    AlertDialogCenter.versionNotSupport(SettingFragment.this.getContext());
                }
            }
        });
        this.composeView_setting.setOnAutoPagingAction(new Runnable() { // from class: com.picacomic.fregata.fragments.SettingFragment.5
            @Override // java.lang.Runnable
            public void run() {
                View viewInflate = ((LayoutInflater) SettingFragment.this.getActivity().getSystemService("layout_inflater")).inflate(R.layout.dialog_auto_paging_content_view, null, false);
                final TextView textView = (TextView) viewInflate.findViewById(R.id.textView_setting_dialog_auto_paging_title);
                SeekBar seekBar = (SeekBar) viewInflate.findViewById(R.id.seekBar_setting_dialog_auto_paging);
                seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.picacomic.fregata.fragments.SettingFragment.5.1
                    @Override public void onStartTrackingTouch(SeekBar seekBar2) { }
                    @Override public void onStopTrackingTouch(SeekBar seekBar2) { }

                    @Override
                    public void onProgressChanged(SeekBar seekBar2, int i, boolean z) {
                        SettingFragment.this.hM = (i * 100) + 1000;
                        textView.setText(SettingFragment.this.getResources().getString(R.string.comic_viewer_setting_panel_auto_paging) + " 【 " + String.format("%.1f", Float.valueOf(SettingFragment.this.hM / 1000.0f)) + SettingFragment.this.getResources().getString(R.string.second) + " 】");
                    }
                });
                if (SettingFragment.this.hM + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED < 0) {
                    seekBar.setProgress(0);
                } else {
                    seekBar.setProgress((SettingFragment.this.hM + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED) / 100);
                }
                new AlertDialog.Builder(SettingFragment.this.getActivity(), R.style.MyAlertDialogStyle).setTitle(R.string.setting_comic_viewer_auto_paging_interval).setView(viewInflate).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.SettingFragment.5.2
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        e.b((Context) SettingFragment.this.getActivity(), SettingFragment.this.hM);
                        SettingFragment.this.composeView_setting.setAutoPagingValue(String.format("%.1f", Float.valueOf(SettingFragment.this.hM / 1000.0f)) + " " + SettingFragment.this.getString(R.string.second));
                        dialogInterface.dismiss();
                    }
                }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.SettingFragment.5.3
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        SettingFragment.this.hM = e.O(SettingFragment.this.getActivity());
                        dialogInterface.dismiss();
                    }
                }).show();
            }
        });
        this.composeView_setting.setOnContinueDownloadAction(new Runnable() { // from class: com.picacomic.fregata.fragments.SettingFragment.6
            @Override // java.lang.Runnable
            public void run() {
                g.av(SettingFragment.this.getContext());
            }
        });
        this.composeView_setting.setOnNightModeChanged(new OnBooleanChangedListener() { // from class: com.picacomic.fregata.fragments.SettingFragment.7
            @Override
            public void onChanged(boolean z) {
                e.d((Context) SettingFragment.this.getActivity(), z);
            }
        });
        this.composeView_setting.setOnVolumePagingChanged(new OnBooleanChangedListener() { // from class: com.picacomic.fregata.fragments.SettingFragment.8
            @Override
            public void onChanged(boolean z) {
                e.g((Context) SettingFragment.this.getActivity(), z);
            }
        });
        this.composeView_setting.setOnPerformanceChanged(new OnBooleanChangedListener() { // from class: com.picacomic.fregata.fragments.SettingFragment.9
            @Override
            public void onChanged(boolean z) {
                e.b((Context) SettingFragment.this.getActivity(), z);
            }
        });
        this.composeView_setting.setOnTestingChanged(new OnBooleanChangedListener() { // from class: com.picacomic.fregata.fragments.SettingFragment.10
            @Override
            public void onChanged(boolean z) {
                e.a((Context) SettingFragment.this.getActivity(), z);
            }
        });
        this.composeView_setting.setOnApkVersionAction(new Runnable() { // from class: com.picacomic.fregata.fragments.SettingFragment.11
            @Override
            public void run() {
                SettingFragment.this.getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, new ApkVersionListFragment(), ApkVersionListFragment.TAG).addToBackStack(ApkVersionListFragment.TAG).commit();
            }
        });
        this.composeView_setting.setOnFaqAction(new Runnable() { // from class: com.picacomic.fregata.fragments.SettingFragment.12
            @Override
            public void run() {
                AlertDialogCenter.showFaqAlertDialog(SettingFragment.this.getContext(), "https://www.picacomic.com/faq", null);
            }
        });
        this.composeView_setting.setOnCacheAction(new Runnable() { // from class: com.picacomic.fregata.fragments.SettingFragment.13
            @Override
            public void run() {
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", SettingFragment.this.getActivity().getPackageName(), null));
                SettingFragment.this.startActivity(intent);
            }
        });
        this.composeView_setting.setOnPinAction(new Runnable() { // from class: com.picacomic.fregata.fragments.SettingFragment.14
            @Override
            public void run() {
                SettingFragment.this.getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, new ChangePinFragment(), ChangePinFragment.TAG).addToBackStack(ChangePinFragment.TAG).commit();
            }
        });
        this.composeView_setting.setOnPasswordAction(new Runnable() { // from class: com.picacomic.fregata.fragments.SettingFragment.15
            @Override
            public void run() {
                SettingFragment.this.getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, new ChangePasswordFragment(), ChangePasswordFragment.TAG).addToBackStack(ChangePasswordFragment.TAG).commit();
            }
        });
        this.composeView_setting.setOnLogoutAction(new Runnable() { // from class: com.picacomic.fregata.fragments.SettingFragment.16
            @Override
            public void run() {
                e.h(SettingFragment.this.getActivity(), "");
                e.f(SettingFragment.this.getActivity(), "");
                e.a((Context) SettingFragment.this.getActivity(), -1);
                e.i(SettingFragment.this.getActivity(), "");
                SettingFragment.this.getActivity().startActivity(new Intent(SettingFragment.this.getActivity(), (Class<?>) LoginActivity.class));
                SettingFragment.this.getActivity().finish();
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        this.toolbar.setTitle(R.string.title_setting);
        if (getActivity() != null && (getActivity() instanceof MainActivity)) {
            ((MainActivity) getActivity()).t(0);
        }
        this.composeView_setting.setApkVersionTitle(getString(R.string.setting_version_title) + " (" + getString(R.string.app_version) + ")");
        this.composeView_setting.setScreenOrientationValue(this.rw[this.rx]);
        this.composeView_setting.setScrollDirectionValue(this.ry[this.rz]);
        this.composeView_setting.setImageQualityValue(this.rA[this.rB]);
        this.composeView_setting.setThemeColorValue(this.rC[this.rD]);
        this.composeView_setting.setNightModeEnabled(e.L(getActivity()));
        this.composeView_setting.setVolumePagingEnabled(e.Q(getActivity()));
        this.composeView_setting.setPerformanceEnabled(e.x(getActivity()));
        this.composeView_setting.setTestingEnabled(e.w(getActivity()));
        this.composeView_setting.setAutoPagingValue(String.format("%.1f", Float.valueOf(this.hM / 1000.0f)) + " " + getString(R.string.second));
        this.composeView_setting.setCacheTitleValue(getString(R.string.setting_cache_title) + " (~" + d(dK()) + ")");
        String strY = e.y(getContext());
        if (strY != null && strY.length() > 0) {
            this.composeView_setting.setPinValue(getString(R.string.setting_pin_on));
            this.composeView_setting.setPinTitleValue(getString(R.string.setting_pin_title_on));
        } else {
            this.composeView_setting.setPinValue(getString(R.string.setting_pin_off));
            this.composeView_setting.setPinTitleValue(getString(R.string.setting_pin_title));
        }
    }

    private long dK() {
        return f(getActivity().getCacheDir()) + 0 + f(getActivity().getExternalCacheDir());
    }

    public long f(File file) {
        long length = 0;
        if (file == null || file.listFiles() == null) {
            return 0L;
        }
        for (File file2 : file.listFiles()) {
            if (file2 != null && file2.isDirectory()) {
                length += f(file2);
            } else if (file2 != null && file2.isFile()) {
                length += file2.length();
            }
        }
        return length;
    }

    public static String d(long j) {
        if (j <= 0) {
            return "0 Bytes";
        }
        double d = j;
        int iLog10 = (int) (Math.log10(d) / Math.log10(1024.0d));
        StringBuilder sb = new StringBuilder();
        DecimalFormat decimalFormat = new DecimalFormat("#,##0.#");
        double dPow = Math.pow(1024.0d, iLog10);
        Double.isNaN(d);
        sb.append(decimalFormat.format(d / dPow));
        sb.append(" ");
        sb.append(new String[]{"Bytes", "kB", "MB", "GB", "TB"}[iLog10]);
        return sb.toString();
    }
}
