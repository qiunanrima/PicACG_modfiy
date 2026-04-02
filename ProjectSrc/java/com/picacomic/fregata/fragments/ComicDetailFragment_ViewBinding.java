package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ComicDetailFragment_ViewBinding implements Unbinder {
    private ComicDetailFragment ns;

    @UiThread
    public ComicDetailFragment_ViewBinding(ComicDetailFragment comicDetailFragment, View view) {
        this.ns = comicDetailFragment;
        comicDetailFragment.coordinatorLayout = (CoordinatorLayout) Utils.findRequiredViewAsType(view, R.id.coordinatorLayout, "field 'coordinatorLayout'", CoordinatorLayout.class);
        comicDetailFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        comicDetailFragment.nestedScrollView = (NestedScrollView) Utils.findRequiredViewAsType(view, R.id.scrollView, "field 'nestedScrollView'", NestedScrollView.class);
        comicDetailFragment.linearLayout_tags = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_comic_detail_tags, "field 'linearLayout_tags'", LinearLayout.class);
        comicDetailFragment.recyclerView_episode = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_comic_detail_episode, "field 'recyclerView_episode'", RecyclerView.class);
        comicDetailFragment.recyclerView_recommendation = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_recommendation, "field 'recyclerView_recommendation'", RecyclerView.class);
        comicDetailFragment.imageView_cover = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comic_detail_cover, "field 'imageView_cover'", ImageView.class);
        comicDetailFragment.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_detail_title, "field 'textView_title'", TextView.class);
        comicDetailFragment.textView_author = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_detail_author, "field 'textView_author'", TextView.class);
        comicDetailFragment.textView_translate = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_detail_translate, "field 'textView_translate'", TextView.class);
        comicDetailFragment.textView_likeCount = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_detail_like_count, "field 'textView_likeCount'", TextView.class);
        comicDetailFragment.textView_viewCount = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_detail_view_count, "field 'textView_viewCount'", TextView.class);
        comicDetailFragment.textView_categories = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_detail_category, "field 'textView_categories'", TextView.class);
        comicDetailFragment.textView_description = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_detail_description, "field 'textView_description'", TextView.class);
        comicDetailFragment.textView_commentCount = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_detail_comment_count, "field 'textView_commentCount'", TextView.class);
        comicDetailFragment.textView_timestamp = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_detail_timestamp, "field 'textView_timestamp'", TextView.class);
        comicDetailFragment.textView_knight = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_detail_knight, "field 'textView_knight'", TextView.class);
        comicDetailFragment.imageView_knightAvatar = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comic_detail_knight_avatar, "field 'imageView_knightAvatar'", ImageView.class);
        comicDetailFragment.imageView_knightVerified = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comic_detail_knight_verified, "field 'imageView_knightVerified'", ImageView.class);
        comicDetailFragment.button_startRead = (Button) Utils.findRequiredViewAsType(view, R.id.button_comic_detail_start_read, "field 'button_startRead'", Button.class);
        comicDetailFragment.button_moreEpisode = (Button) Utils.findRequiredViewAsType(view, R.id.button_comic_detail_more_episode, "field 'button_moreEpisode'", Button.class);
        comicDetailFragment.imageButton_bookmark = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_comic_detail_bookmark, "field 'imageButton_bookmark'", ImageButton.class);
        comicDetailFragment.imageButton_descriptionHeightControl = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_comic_detail_description_height_control, "field 'imageButton_descriptionHeightControl'", ImageButton.class);
        comicDetailFragment.imageButton_tagHeightControl = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_comic_detail_tag_height_control, "field 'imageButton_tagHeightControl'", ImageButton.class);
        comicDetailFragment.imageButton_comment = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_comic_detail_comment, "field 'imageButton_comment'", ImageButton.class);
        comicDetailFragment.imageButton_like = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_comic_detail_like, "field 'imageButton_like'", ImageButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicDetailFragment comicDetailFragment = this.ns;
        if (comicDetailFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.ns = null;
        comicDetailFragment.coordinatorLayout = null;
        comicDetailFragment.toolbar = null;
        comicDetailFragment.nestedScrollView = null;
        comicDetailFragment.linearLayout_tags = null;
        comicDetailFragment.recyclerView_episode = null;
        comicDetailFragment.recyclerView_recommendation = null;
        comicDetailFragment.imageView_cover = null;
        comicDetailFragment.textView_title = null;
        comicDetailFragment.textView_author = null;
        comicDetailFragment.textView_translate = null;
        comicDetailFragment.textView_likeCount = null;
        comicDetailFragment.textView_viewCount = null;
        comicDetailFragment.textView_categories = null;
        comicDetailFragment.textView_description = null;
        comicDetailFragment.textView_commentCount = null;
        comicDetailFragment.textView_timestamp = null;
        comicDetailFragment.textView_knight = null;
        comicDetailFragment.imageView_knightAvatar = null;
        comicDetailFragment.imageView_knightVerified = null;
        comicDetailFragment.button_startRead = null;
        comicDetailFragment.button_moreEpisode = null;
        comicDetailFragment.imageButton_bookmark = null;
        comicDetailFragment.imageButton_descriptionHeightControl = null;
        comicDetailFragment.imageButton_tagHeightControl = null;
        comicDetailFragment.imageButton_comment = null;
        comicDetailFragment.imageButton_like = null;
    }
}
