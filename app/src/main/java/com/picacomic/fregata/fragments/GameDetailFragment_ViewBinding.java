package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import androidx.viewpager.widget.ViewPager;
import androidx.core.widget.NestedScrollView;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.views.SnapRecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class GameDetailFragment_ViewBinding implements Unbinder {
    private GameDetailFragment pf;

    @UiThread
    public GameDetailFragment_ViewBinding(GameDetailFragment gameDetailFragment, View view) {
        this.pf = gameDetailFragment;
        gameDetailFragment.appBarLayout = (AppBarLayout) Utils.findRequiredViewAsType(view, R.id.appbar, "field 'appBarLayout'", AppBarLayout.class);
        gameDetailFragment.collapsingToolbarLayout = (CollapsingToolbarLayout) Utils.findRequiredViewAsType(view, R.id.collapsingToolbarLayout, "field 'collapsingToolbarLayout'", CollapsingToolbarLayout.class);
        gameDetailFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        gameDetailFragment.nestedScrollView = (NestedScrollView) Utils.findRequiredViewAsType(view, R.id.nestedScrollView_game_detail, "field 'nestedScrollView'", NestedScrollView.class);
        gameDetailFragment.frameLayout_banner = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.frameLayout_game_detail_banner, "field 'frameLayout_banner'", FrameLayout.class);
        gameDetailFragment.relativeLayout_popup = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.relativeLayout_game_detail_popup, "field 'relativeLayout_popup'", RelativeLayout.class);
        gameDetailFragment.videoView = (VideoView) Utils.findRequiredViewAsType(view, R.id.videoView_game_detail, "field 'videoView'", VideoView.class);
        gameDetailFragment.viewPager_screenShots = (ViewPager) Utils.findRequiredViewAsType(view, R.id.viewPager_game_detail_screenShot, "field 'viewPager_screenShots'", ViewPager.class);
        gameDetailFragment.imageView_banner = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_game_detail_banner, "field 'imageView_banner'", ImageView.class);
        gameDetailFragment.imageView_icon = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_game_detail_icon, "field 'imageView_icon'", ImageView.class);
        gameDetailFragment.imageView_adult = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_game_detail_adult, "field 'imageView_adult'", ImageView.class);
        gameDetailFragment.imageView_recommend = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_game_detail_recommend, "field 'imageView_recommend'", ImageView.class);
        gameDetailFragment.imageView_android = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_game_detail_android, "field 'imageView_android'", ImageView.class);
        gameDetailFragment.imageView_ios = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_game_detail_ios, "field 'imageView_ios'", ImageView.class);
        gameDetailFragment.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_game_detail_title, "field 'textView_title'", TextView.class);
        gameDetailFragment.textView_publisher = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_game_detail_publisher, "field 'textView_publisher'", TextView.class);
        gameDetailFragment.textView_gameSize = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_game_detail_size, "field 'textView_gameSize'", TextView.class);
        gameDetailFragment.textView_version = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_game_detail_version_title, "field 'textView_version'", TextView.class);
        gameDetailFragment.textView_versionDescription = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_game_detail_version_description, "field 'textView_versionDescription'", TextView.class);
        gameDetailFragment.textView_description = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_game_detail_description, "field 'textView_description'", TextView.class);
        gameDetailFragment.textView_commentCount = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_game_detail_comment_count, "field 'textView_commentCount'", TextView.class);
        gameDetailFragment.textView_likeCount = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_game_detail_like_count, "field 'textView_likeCount'", TextView.class);
        gameDetailFragment.textView_download = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_game_detail_downloaded, "field 'textView_download'", TextView.class);
        gameDetailFragment.button_download = (Button) Utils.findRequiredViewAsType(view, R.id.button_game_detail_download, "field 'button_download'", Button.class);
        gameDetailFragment.imageButton_gift = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_game_detail_gift, "field 'imageButton_gift'", ImageButton.class);
        gameDetailFragment.imageButton_like = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_game_detail_like, "field 'imageButton_like'", ImageButton.class);
        gameDetailFragment.imageButton_comment = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_game_detail_comment, "field 'imageButton_comment'", ImageButton.class);
        gameDetailFragment.imageButton_playVideo = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_game_detail_play, "field 'imageButton_playVideo'", ImageButton.class);
        gameDetailFragment.imageButton_closePopup = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_game_detail_close_popup, "field 'imageButton_closePopup'", ImageButton.class);
        gameDetailFragment.imageButton_descriptionHeightControl = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_game_detail_description_height_control, "field 'imageButton_descriptionHeightControl'", ImageButton.class);
        gameDetailFragment.imageButton_versionDescriptionHeightControl = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_game_detail_version_description_height_control, "field 'imageButton_versionDescriptionHeightControl'", ImageButton.class);
        gameDetailFragment.recyclerView_screenShots = (SnapRecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_game_detail_screenshots, "field 'recyclerView_screenShots'", SnapRecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GameDetailFragment gameDetailFragment = this.pf;
        if (gameDetailFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.pf = null;
        gameDetailFragment.appBarLayout = null;
        gameDetailFragment.collapsingToolbarLayout = null;
        gameDetailFragment.toolbar = null;
        gameDetailFragment.nestedScrollView = null;
        gameDetailFragment.frameLayout_banner = null;
        gameDetailFragment.relativeLayout_popup = null;
        gameDetailFragment.videoView = null;
        gameDetailFragment.viewPager_screenShots = null;
        gameDetailFragment.imageView_banner = null;
        gameDetailFragment.imageView_icon = null;
        gameDetailFragment.imageView_adult = null;
        gameDetailFragment.imageView_recommend = null;
        gameDetailFragment.imageView_android = null;
        gameDetailFragment.imageView_ios = null;
        gameDetailFragment.textView_title = null;
        gameDetailFragment.textView_publisher = null;
        gameDetailFragment.textView_gameSize = null;
        gameDetailFragment.textView_version = null;
        gameDetailFragment.textView_versionDescription = null;
        gameDetailFragment.textView_description = null;
        gameDetailFragment.textView_commentCount = null;
        gameDetailFragment.textView_likeCount = null;
        gameDetailFragment.textView_download = null;
        gameDetailFragment.button_download = null;
        gameDetailFragment.imageButton_gift = null;
        gameDetailFragment.imageButton_like = null;
        gameDetailFragment.imageButton_comment = null;
        gameDetailFragment.imageButton_playVideo = null;
        gameDetailFragment.imageButton_closePopup = null;
        gameDetailFragment.imageButton_descriptionHeightControl = null;
        gameDetailFragment.imageButton_versionDescriptionHeightControl = null;
        gameDetailFragment.recyclerView_screenShots = null;
    }
}
