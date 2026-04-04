package com.picacomic.fregata.fragments;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import com.picacomic.fregata.databinding.FragmentSupportUsAdsGameBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.a;
import com.picacomic.fregata.utils.g;

/* JADX INFO: loaded from: classes.dex */
public class SupportUsAdsGameFragment extends BaseFragment {
    public static final String TAG = "SupportUsAdsGameFragment";

    FragmentSupportUsAdsGameBinding binding;
    ImageView imageView_game;
    WebView webView_ads;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentSupportUsAdsGameBinding.inflate(layoutInflater, viewGroup, false);
        this.imageView_game = this.binding.imageViewSupportUsGame;
        this.webView_ads = this.binding.webViewSupportUsAds;
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
        this.imageView_game.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.SupportUsAdsGameFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SupportUsAdsGameFragment.this.getParentFragment().getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, new GameFragment(), GameFragment.TAG).addToBackStack(GameFragment.TAG).commit();
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        g.k(this.webView_ads);
        this.webView_ads.loadUrl(a.dS());
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
    }
}
