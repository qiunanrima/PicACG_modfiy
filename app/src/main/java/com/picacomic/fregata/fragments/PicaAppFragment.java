package com.picacomic.fregata.fragments;

import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;

import androidx.appcompat.widget.Toolbar;

import com.just.agentweb.AgentWeb;
import com.just.agentweb.DefaultWebClient;
import com.picacomic.fregata.MyApplication;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.j;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.databinding.FragmentPicaAppBinding;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.AlertDialogCenter;

/* JADX INFO: loaded from: classes.dex */
public class PicaAppFragment extends BaseFragment implements j {
    public static final String TAG = "PicaAppFragment";

    FragmentPicaAppBinding binding;
    LinearLayout linearLayoutWeb;
    AgentWeb mAgentWeb;
    String qw;
    String qx;
    String qy;
    Toolbar toolbar;

    @Override // com.picacomic.fregata.a_pkg.j
    public void fullScreen() {
    }

    @Override // com.picacomic.fregata.a_pkg.j
    public void rotation() {
    }

    public static PicaAppFragment n(String str, String str2) {
        PicaAppFragment picaAppFragment = new PicaAppFragment();
        Bundle bundle = new Bundle();
        bundle.putString("KEY_PICA_APP_NAME", str);
        bundle.putString("KEY_PICA_APP_URL", str2);
        picaAppFragment.setArguments(bundle);
        return picaAppFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.qw = getArguments().getString("KEY_PICA_APP_NAME");
            this.qx = getArguments().getString("KEY_PICA_APP_URL");
            if (this.qx == null || this.qx.equalsIgnoreCase("")) {
                getFragmentManager().popBackStack();
                return;
            }
            return;
        }
        getFragmentManager().popBackStack();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentPicaAppBinding.inflate(layoutInflater, viewGroup, false);
        this.linearLayoutWeb = this.binding.linearLayoutWeb;
        this.toolbar = this.binding.toolbar;
        return this.binding.getRoot();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        if (getActivity() != null && (getActivity() instanceof MainActivity)) {
            ((MainActivity) getActivity()).t(8);
        }
        this.qy = e.an(MyApplication.by());
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        this.toolbar.setVisibility(View.GONE);
        this.mAgentWeb = AgentWeb.with(this)
                .setAgentWebParent(this.linearLayoutWeb, new LinearLayout.LayoutParams(-1, -1))
                .useDefaultIndicator()
                .setOpenOtherPageWays(DefaultWebClient.OpenOtherPageWays.ASK)
                .setWebViewClient(new com.just.agentweb.WebViewClient(){ // from class: com.picacomic.fregata.fragments.PicaAppFragment.1
            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                webView.loadUrl("file:///android_res/raw/page_not_found.html");
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                if (Build.VERSION.SDK_INT < 21) {
                    return false;
                }
                f.F(PicaAppFragment.TAG, "Version URL = " + webResourceRequest.getUrl().toString());
                if (webResourceRequest.getUrl().toString().contains(PicaAppFragment.this.qy)) {
                    return false;
                }
                g.A(MyApplication.by(), webResourceRequest.getUrl().toString());
                return true;
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                f.F(PicaAppFragment.TAG, "URL = " + str);
                if (str.contains(PicaAppFragment.this.qy)) {
                    return false;
                }
                g.A(MyApplication.by(), str);
                return true;
            }
        }).createAgentWeb()
                .ready()
                .go(this.qx + "?token=" + e.z(getContext()) + "&secret=pb6XkQ94iBBny1WUAxY0dY5fksexw0dt");


        this.mAgentWeb.getAgentWebSettings().getWebSettings().setJavaScriptEnabled(true);
        this.mAgentWeb.getAgentWebSettings().getWebSettings().setJavaScriptCanOpenWindowsAutomatically(true);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
    }

    @Override // com.picacomic.fregata.a_pkg.j
    public void backButton() {
        getFragmentManager().popBackStack();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, com.picacomic.fregata.a_pkg.i
    public void b(View view) {
        if (getParentFragment() != null) {
            if ((getParentFragment() instanceof ChatroomContainerFragment) || (getParentFragment() instanceof CustomPicaAppContainerFragment)) {
                AlertDialogCenter.showCustomAlertDialog(getActivity(), R.drawable.icon_leave, R.string.alert_chatroom_leave_title, R.string.alert_chatroom_leave_msg, new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.PicaAppFragment.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        PicaAppFragment.this.getParentFragment().getFragmentManager().popBackStack();
                        PicaAppFragment.this.getFragmentManager().popBackStack();
                    }
                }, (View.OnClickListener) null);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.mAgentWeb.getWebLifeCycle().onPause();
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        this.mAgentWeb.getWebLifeCycle().onResume();
        super.onResume();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.mAgentWeb.getWebLifeCycle().onDestroy();
        super.onDestroyView();
    }
}
