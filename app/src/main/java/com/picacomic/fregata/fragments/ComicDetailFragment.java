package com.picacomic.fregata.fragments;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Bundle;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.widget.NestedScrollView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.appcompat.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.picacomic.fregata.databinding.FragmentComicDetailBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.b;
import com.picacomic.fregata.a_pkg.k;
import com.picacomic.fregata.activities.ComicViewerActivity;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.adapters.ComicRecommendationRecyclerViewAdapter;
import com.picacomic.fregata.adapters.EpisodeRecyclerViewAdapter;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.objects.ComicDetailObject;
import com.picacomic.fregata.objects.ComicEpisodeObject;
import com.picacomic.fregata.objects.ComicListObject;
import com.picacomic.fregata.objects.databaseTable.DbComicDetailObject;
import com.picacomic.fregata.objects.databaseTable.DbComicViewRecordObject;
import com.picacomic.fregata.objects.databaseTable.DownloadComicEpisodeObject;
import com.picacomic.fregata.objects.responses.ActionResponse;
import com.picacomic.fregata.objects.responses.ComicDetailResponse;
import com.picacomic.fregata.objects.responses.ComicRandomListResponse;
import com.picacomic.fregata.objects.responses.DataClass.ComicEpisodeResponse.ComicEpisodeResponse;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.utils.FullGridLayoutManager;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.AlertDialogCenter;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.List;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class ComicDetailFragment extends BaseFragment implements k {
    public static final String TAG = "ComicDetailFragment";

    FragmentComicDetailBinding binding;
    Button button_moreEpisode;
    Button button_startRead;
    CoordinatorLayout coordinatorLayout;
    int episodeTotal;
    ArrayList<ComicEpisodeObject> ig;
    ImageButton imageButton_bookmark;
    ImageButton imageButton_comment;
    ImageButton imageButton_descriptionHeightControl;
    ImageButton imageButton_like;
    ImageButton imageButton_tagHeightControl;
    ImageView imageView_cover;
    ImageView imageView_knightAvatar;
    ImageView imageView_knightVerified;
    LinearLayout linearLayout_tags;
    TransitionDrawable mS;
    TransitionDrawable mT;
    Animation mU;
    Animation mV;
    Call<GeneralResponse<ActionResponse>> mW;
    Call<GeneralResponse<ActionResponse>> mZ;
    Call<GeneralResponse<ComicDetailResponse>> na;
    Call<GeneralResponse<ComicEpisodeResponse>> nb;
    Call<GeneralResponse<ComicRandomListResponse>> nc;
    EpisodeRecyclerViewAdapter nd;
    ComicRecommendationRecyclerViewAdapter ne;
    NestedScrollView nestedScrollView;
    ArrayList<ComicListObject> nf;
    Button[] ng;
    boolean nl;
    int nm;
    private ComicListObject nn;
    private ComicDetailObject np;
    RecyclerView recyclerView_episode;
    RecyclerView recyclerView_recommendation;
    int targetHeight;
    int targetWidth;
    TextView textView_author;
    TextView textView_categories;
    TextView textView_commentCount;
    TextView textView_description;
    TextView textView_knight;
    TextView textView_likeCount;
    TextView textView_timestamp;
    TextView textView_title;
    TextView textView_translate;
    TextView textView_viewCount;
    Toolbar toolbar;
    boolean kE = false;
    boolean nh = false;
    boolean ni = false;
    boolean nj = false;
    boolean isLiked = false;
    boolean nk = true;
    int downloadStatus = 0;

    public static ComicDetailFragment a(ComicListObject comicListObject) {
        ComicDetailFragment comicDetailFragment = new ComicDetailFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("COMIC_LIST_OBJECT", comicListObject);
        comicDetailFragment.setArguments(bundle);
        return comicDetailFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.nn = (ComicListObject) getArguments().getParcelable("COMIC_LIST_OBJECT");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentComicDetailBinding.inflate(layoutInflater, viewGroup, false);
        this.button_moreEpisode = this.binding.buttonComicDetailMoreEpisode;
        this.button_startRead = this.binding.buttonComicDetailStartRead;
        this.coordinatorLayout = this.binding.coordinatorLayout;
        this.imageButton_bookmark = this.binding.imageButtonComicDetailBookmark;
        this.imageButton_comment = this.binding.imageButtonComicDetailComment;
        this.imageButton_descriptionHeightControl = this.binding.imageButtonComicDetailDescriptionHeightControl;
        this.imageButton_like = this.binding.imageButtonComicDetailLike;
        this.imageButton_tagHeightControl = this.binding.imageButtonComicDetailTagHeightControl;
        this.imageView_cover = this.binding.imageViewComicDetailCover;
        this.imageView_knightAvatar = this.binding.imageViewComicDetailKnightAvatar;
        this.imageView_knightVerified = this.binding.imageViewComicDetailKnightVerified;
        this.linearLayout_tags = this.binding.linearLayoutComicDetailTags;
        this.nestedScrollView = this.binding.scrollView;
        this.recyclerView_episode = this.binding.recyclerViewComicDetailEpisode;
        this.recyclerView_recommendation = this.binding.recyclerViewRecommendation;
        this.textView_author = this.binding.textViewComicDetailAuthor;
        this.textView_categories = this.binding.textViewComicDetailCategory;
        this.textView_commentCount = this.binding.textViewComicDetailCommentCount;
        this.textView_description = this.binding.textViewComicDetailDescription;
        this.textView_knight = this.binding.textViewComicDetailKnight;
        this.textView_likeCount = this.binding.textViewComicDetailLikeCount;
        this.textView_timestamp = this.binding.textViewComicDetailTimestamp;
        this.textView_title = this.binding.textViewComicDetailTitle;
        this.textView_translate = this.binding.textViewComicDetailTranslate;
        this.textView_viewCount = this.binding.textViewComicDetailViewCount;
        this.toolbar = this.binding.toolbar;
        setHasOptionsMenu(true);
        a(this.binding.getRoot());
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.menu_comic_detail, menu);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.action_clear_recent) {
            AlertDialogCenter.showCustomAlertDialog(getContext(), R.drawable.icon_exclamation_error, R.string.alert_clear_recent_title, R.string.alert_clear_recent_message, new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ComicDetailFragment.this.cN();
                }
            }, (View.OnClickListener) null);
        }
        if (menuItem.getItemId() == R.id.action_download && this.np != null) {
            if (this.np.isAllowDownload()) {
                if (this.nn != null && this.nn.getComicId() != null) {
                    getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicDownloadFragment.k(this.nn.getComicId(), this.nn.getTitle()), ComicDownloadFragment.TAG).addToBackStack(ComicDownloadFragment.TAG).commit();
                }
            } else {
                AlertDialogCenter.showCustomAlertDialog(getContext(), R.drawable.icon_exclamation_error, R.string.alert_download_not_allow_title, R.string.alert_download_not_allow);
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        try {
            this.targetWidth = (int) getContext().getResources().getDimension(R.dimen.size_image_thumbnail);
            this.targetHeight = (int) getContext().getResources().getDimension(R.dimen.size_image_thumbnail_height);
        } catch (Exception unused) {
            this.targetWidth = 80;
            this.targetHeight = 120;
        }
        if (getActivity() != null && (getActivity() instanceof MainActivity)) {
            ((MainActivity) getActivity()).t(8);
        }
        this.mT = new TransitionDrawable(new Drawable[]{ResourcesCompat.getDrawable(getResources(), R.drawable.icon_bookmark_off, getActivity().getTheme()), ResourcesCompat.getDrawable(getResources(), R.drawable.icon_bookmark_on, getActivity().getTheme())});
        this.mS = new TransitionDrawable(new Drawable[]{ResourcesCompat.getDrawable(getResources(), R.drawable.icon_like_off, getActivity().getTheme()), ResourcesCompat.getDrawable(getResources(), R.drawable.icon_like, getActivity().getTheme())});
        this.imageButton_bookmark.setImageDrawable(this.mS);
        this.imageButton_like.setImageDrawable(this.mT);
        this.mU = AnimationUtils.loadAnimation(getActivity(), R.anim.arrow_expand);
        this.mV = AnimationUtils.loadAnimation(getActivity(), R.anim.arrow_collapse);
        if (this.ig == null) {
            this.ig = new ArrayList<>();
            this.kE = true;
            this.nk = true;
            this.nm = 1;
        }
        if (this.nf == null) {
            this.nf = new ArrayList<>();
        }
        this.recyclerView_episode.setNestedScrollingEnabled(false);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.recyclerView_episode.setLayoutManager(new FullGridLayoutManager(getActivity(), 4));
        this.nd = new EpisodeRecyclerViewAdapter(getActivity(), this.ig, this);
        this.recyclerView_episode.setAdapter(this.nd);
        this.ne = new ComicRecommendationRecyclerViewAdapter(getActivity(), this.nf, new b() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.12
            @Override // com.picacomic.fregata.a_pkg.b
            public void I(int i) {
            }

            @Override // com.picacomic.fregata.a_pkg.b
            public void C(int i) {
                if (ComicDetailFragment.this.nf == null || ComicDetailFragment.this.nf.size() <= i) {
                    return;
                }
                ComicDetailFragment.this.getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicDetailFragment.a(ComicDetailFragment.this.nf.get(i)), ComicDetailFragment.TAG).addToBackStack(ComicDetailFragment.TAG).commit();
            }
        });
        this.recyclerView_recommendation.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        this.recyclerView_recommendation.setAdapter(this.ne);
        this.textView_author.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicDetailFragment.this.getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicListFragment.a(null, null, null, ComicDetailFragment.this.textView_author.getText().toString(), null, null, null, null, null), ComicListFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
            }
        });
        this.textView_translate.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicDetailFragment.this.getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicListFragment.a(null, null, null, null, null, null, ComicDetailFragment.this.textView_translate.getText().toString(), null, null), ComicListFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
            }
        });
        this.textView_knight.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.18
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicDetailFragment.this.np == null || ComicDetailFragment.this.np.getCreator() == null || ComicDetailFragment.this.np.getCreator().getCreatorId() == null || ComicDetailFragment.this.np.getCreator().getName() == null) {
                    return;
                }
                ComicDetailFragment.this.getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicListFragment.a(null, null, null, null, null, null, null, ComicDetailFragment.this.np.getCreator().getCreatorId(), ComicDetailFragment.this.np.getCreator().getName()), ComicListFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
            }
        });
        this.imageView_knightAvatar.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.19
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicDetailFragment.this.np == null || ComicDetailFragment.this.np.getCreator() == null) {
                    return;
                }
                ComicDetailFragment.this.E(ComicDetailFragment.this.np.getCreator().getCreatorId());
            }
        });
        this.imageView_cover.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.20
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicDetailFragment.this.np == null || ComicDetailFragment.this.np.getThumb() == null) {
                    return;
                }
                ComicDetailFragment.this.D(g.b(ComicDetailFragment.this.np.getThumb()));
            }
        });
        this.imageButton_bookmark.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.21
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicDetailFragment.this.cK();
            }
        });
        this.imageButton_like.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.22
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicDetailFragment.this.cL();
            }
        });
        this.imageButton_comment.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicDetailFragment.this.np == null || !ComicDetailFragment.this.np.isAllowComment()) {
                    return;
                }
                ComicDetailFragment.this.getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, CommentFragment.l(ComicDetailFragment.this.np.getCreator().getCreatorId(), ComicDetailFragment.this.nn.getComicId()), CommentFragment.TAG).addToBackStack(CommentFragment.TAG).commit();
            }
        });
        this.imageButton_tagHeightControl.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicDetailFragment.this.ng == null || ComicDetailFragment.this.ng.length <= 0) {
                    return;
                }
                if (ComicDetailFragment.this.ni) {
                    ViewGroup.LayoutParams layoutParams = ComicDetailFragment.this.linearLayout_tags.getLayoutParams();
                    layoutParams.height = -2;
                    ComicDetailFragment.this.linearLayout_tags.setLayoutParams(layoutParams);
                    ComicDetailFragment.this.ni = false;
                    ComicDetailFragment.this.d(ComicDetailFragment.this.imageButton_tagHeightControl);
                    return;
                }
                ViewGroup.LayoutParams layoutParams2 = ComicDetailFragment.this.linearLayout_tags.getLayoutParams();
                if (ComicDetailFragment.this.ng != null && ComicDetailFragment.this.ng.length > 0) {
                    ComicDetailFragment.this.ng[0].measure(-2, -2);
                    layoutParams2.height = ComicDetailFragment.this.ng[0].getMeasuredHeight();
                } else {
                    layoutParams2.height = 80;
                }
                ComicDetailFragment.this.linearLayout_tags.setLayoutParams(layoutParams2);
                ComicDetailFragment.this.ni = true;
                ComicDetailFragment.this.e(ComicDetailFragment.this.imageButton_tagHeightControl);
            }
        });
        this.imageButton_descriptionHeightControl.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicDetailFragment.this.nh) {
                    ComicDetailFragment.this.textView_description.setSingleLine(false);
                    ComicDetailFragment.this.nh = false;
                    ComicDetailFragment.this.d(ComicDetailFragment.this.imageButton_descriptionHeightControl);
                } else {
                    ComicDetailFragment.this.textView_description.setSingleLine();
                    ComicDetailFragment.this.nh = true;
                    ComicDetailFragment.this.e(ComicDetailFragment.this.imageButton_descriptionHeightControl);
                }
            }
        });
        this.button_startRead.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicDetailFragment.this.np == null || ComicDetailFragment.this.np.getComicId() == null || com.picacomic.fregata.utils.b.ax(ComicDetailFragment.this.nn.getComicId()) == null) {
                    if (ComicDetailFragment.this.np == null || ComicDetailFragment.this.ig == null || ComicDetailFragment.this.ig.size() <= 0 || ComicDetailFragment.this.ig.get(0).getEpisodeId() == null) {
                        return;
                    }
                    Intent intent = new Intent(ComicDetailFragment.this.getActivity(), (Class<?>) ComicViewerActivity.class);
                    intent.putExtra("EXTRA_KEY_COMIC_ID", ComicDetailFragment.this.nn.getComicId());
                    intent.putExtra("EXTRA_KEY_LAST_VIEW_EPISODE_ORDER", 1);
                    intent.putExtra("EXTRA_KEY_LAST_VIEW_PAGE", 1);
                    intent.putExtra("EXTRA_KEY_EPISODE_TOTAL", ComicDetailFragment.this.episodeTotal);
                    intent.putExtra("EXTRA_KEY_COMIC_TITLE", ComicDetailFragment.this.np.getTitle() + "");
                    intent.putExtra("EXTRA_KEY_VIEW_FROM_RECORD", false);
                    ComicDetailFragment.this.getActivity().startActivity(intent);
                    return;
                }
                DbComicViewRecordObject dbComicViewRecordObjectAx = com.picacomic.fregata.utils.b.ax(ComicDetailFragment.this.nn.getComicId());
                Intent intent2 = new Intent(ComicDetailFragment.this.getActivity(), (Class<?>) ComicViewerActivity.class);
                intent2.putExtra("EXTRA_KEY_COMIC_ID", ComicDetailFragment.this.nn.getComicId());
                intent2.putExtra("EXTRA_KEY_LAST_VIEW_EPISODE_ORDER", dbComicViewRecordObjectAx.getEpisodeOrder());
                intent2.putExtra("EXTRA_KEY_LAST_VIEW_PAGE", dbComicViewRecordObjectAx.getPage());
                intent2.putExtra("EXTRA_KEY_EPISODE_TOTAL", dbComicViewRecordObjectAx.getEpisodeTotal());
                intent2.putExtra("EXTRA_KEY_COMIC_TITLE", ComicDetailFragment.this.np.getTitle() + "");
                intent2.putExtra("EXTRA_KEY_VIEW_FROM_RECORD", true);
                ComicDetailFragment.this.getActivity().startActivity(intent2);
            }
        });
        this.button_moreEpisode.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicDetailFragment.this.A(false);
            }
        });
        this.nestedScrollView.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.7
            @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
            public void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
                if (nestedScrollView.getChildAt(nestedScrollView.getChildCount() - 1).getBottom() - (nestedScrollView.getHeight() + nestedScrollView.getScrollY()) == 0) {
                    ComicDetailFragment.this.A(false);
                }
            }
        });
        this.recyclerView_episode.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.8
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                super.onScrollStateChanged(recyclerView, i);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        if (getActivity() != null && (getActivity() instanceof AppCompatActivity)) {
            ((AppCompatActivity) getActivity()).setSupportActionBar(this.toolbar);
        }
        if (this.nn != null && this.nn.getTitle() != null && !this.nn.getTitle().equalsIgnoreCase("")) {
            a(this.toolbar, this.nn.getTitle(), true);
        } else {
            a(this.toolbar, R.string.title_comic_detail_default, true);
        }
        this.nj = false;
        this.isLiked = false;
        if (this.nn != null && getActivity() != null) {
            DbComicDetailObject dbComicDetailObjectAw = com.picacomic.fregata.utils.b.aw(this.nn.getComicId());
            if (dbComicDetailObjectAw != null) {
                this.downloadStatus = dbComicDetailObjectAw.getDownloadStatus();
                this.np = dbComicDetailObjectAw.getComicDetailObject();
                bI();
            } else {
                this.textView_title.setText(this.nn.getTitle() + "");
                this.textView_author.setText(this.nn.getAuthor() + "");
                this.textView_likeCount.setText(this.nn.getLikesCount() + "");
                Picasso.with(getActivity()).load(g.b(this.nn.getThumb())).into(this.imageView_cover);
                this.textView_categories.setText("");
            }
            Y(this.nn.getComicId());
        }
        if (this.kE) {
            cJ();
        }
        cM();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
        if (getActivity() == null || !isAdded() || this.np == null) {
            return;
        }
        DbComicViewRecordObject dbComicViewRecordObjectAx = com.picacomic.fregata.utils.b.ax(this.nn.getComicId());
        if (dbComicViewRecordObjectAx != null) {
            this.button_startRead.setText("从 " + dbComicViewRecordObjectAx.getEpisodeTitle() + "\nP." + dbComicViewRecordObjectAx.getPage() + " 开始");
            this.button_startRead.setTextSize(0, getResources().getDimension(R.dimen.textsize_content_1));
        } else {
            this.button_startRead.setText(R.string.comic_detail_start_read);
            this.button_startRead.setTextSize(0, getResources().getDimension(R.dimen.textsize_title_3));
        }
        g.a(getActivity(), this.textView_title, this.np.getTitle(), this.np.getPagesCount(), this.np.isFinished());
        this.textView_translate.setText(this.np.getChineseTeam() + "");
        this.textView_likeCount.setText(this.np.getLikesCount() + "");
        this.textView_description.setText(this.np.getDescription() + "");
        if (this.np.isAllowComment()) {
            this.textView_commentCount.setText(this.np.getCommentsCount() + "");
        } else {
            this.textView_commentCount.setText("禁");
        }
        this.textView_viewCount.setText(this.np.getViewsCount() + "");
        this.textView_author.setText(this.np.getAuthor() + "");
        this.textView_timestamp.setText(g.B(getActivity(), this.np.getUpdatedAt()) + " ");
        if (this.np.getCreator() != null) {
            this.textView_knight.setText(this.np.getCreator().getName() + "");
            if (this.np.getCreator().getAvatar() != null && this.np.getCreator().getAvatar().getPath() != null && this.np.getCreator().getAvatar().getFileServer() != null && this.np.getCreator().getAvatar().getOriginalName() != null) {
                this.np.getCreator().getAvatar().getPath();
                Picasso.with(getContext()).load(g.b(this.np.getCreator().getAvatar())).placeholder(R.drawable.placeholder_avatar_2).into(this.imageView_knightAvatar);
            }
        }
        if (this.isLiked != this.np.isLiked()) {
            this.isLiked = this.np.isLiked();
            z(this.isLiked);
            this.nl = this.np.isLiked();
        }
        if (this.nj != this.np.isFavourite()) {
            this.nj = this.np.isFavourite();
            y(this.nj);
        }
        if (!this.nk) {
            this.button_moreEpisode.setVisibility(8);
        }
        if (this.textView_description.getLineCount() == 1) {
            this.imageButton_descriptionHeightControl.setVisibility(8);
        } else {
            this.imageButton_descriptionHeightControl.setVisibility(0);
        }
        Picasso.with(getActivity()).load(g.b(this.np.getThumb())).into(this.imageView_cover);
        String str = "";
        if (this.np.getCategories() != null) {
            String strConcat = "";
            for (int i = 0; i < this.np.getCategories().size(); i++) {
                strConcat = strConcat.concat(this.np.getCategories().get(i) + " ");
            }
            str = strConcat;
        }
        this.textView_categories.setText(str);
        if (this.np.getTags() == null || this.np.getTags().size() <= 0) {
            return;
        }
        this.ng = new Button[this.np.getTags().size()];
        for (int i2 = 0; i2 < this.np.getTags().size(); i2++) {
            this.ng[i2] = new Button(getActivity(), null, R.style.TagButtonPink);
            this.ng[i2].setTextColor(ResourcesCompat.getColor(getResources(), R.color.pinkDark, getActivity().getTheme()));
            this.ng[i2].setBackground(ResourcesCompat.getDrawable(getResources(), R.drawable.button_tag_bg, getActivity().getTheme()));
            this.ng[i2].setText(this.np.getTags().get(i2) + "");
            this.ng[i2].setTag(this.np.getTags().get(i2));
            this.ng[i2].setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ComicDetailFragment.this.getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicListFragment.a(null, null, (String) view.getTag(), null, null, null, null, null, null), ComicListFragment.TAG).addToBackStack(ComicListFragment.TAG).commit();
                }
            });
        }
        if (g.a(this.linearLayout_tags, this.ng, getActivity(), this.imageButton_tagHeightControl) == 1) {
            this.imageButton_tagHeightControl.setVisibility(8);
        }
    }

    public void y(boolean z) {
        if (z) {
            this.mS.startTransition(getResources().getInteger(R.integer.animation_general_duration));
        } else {
            this.mS.reverseTransition(getResources().getInteger(R.integer.animation_general_duration));
        }
    }

    public void z(boolean z) {
        if (z) {
            this.mT.startTransition(getResources().getInteger(R.integer.animation_general_duration));
        } else {
            this.mT.reverseTransition(getResources().getInteger(R.integer.animation_general_duration));
        }
    }

    public void d(View view) {
        view.setAnimation(null);
        if (view instanceof ImageButton) {
            ((ImageButton) view).setImageResource(R.drawable.icon_expand);
        }
        this.mU = AnimationUtils.loadAnimation(getActivity(), R.anim.arrow_expand);
        view.startAnimation(this.mU);
    }

    public void e(View view) {
        view.setAnimation(null);
        if (view instanceof ImageButton) {
            ((ImageButton) view).setImageResource(R.drawable.icon_collapse);
        }
        this.mV = AnimationUtils.loadAnimation(getActivity(), R.anim.arrow_collapse);
        view.startAnimation(this.mV);
    }

    @Override // com.picacomic.fregata.a_pkg.k
    public void C(int i) {
        if (this.np == null || this.ig == null || this.ig.size() <= i || this.ig.get(i).getEpisodeId() == null) {
            return;
        }
        Intent intent = new Intent(getActivity(), (Class<?>) ComicViewerActivity.class);
        intent.putExtra("EXTRA_KEY_COMIC_ID", this.np.getComicId());
        intent.putExtra("EXTRA_KEY_LAST_VIEW_EPISODE_ORDER", this.ig.get(i).getOrder());
        intent.putExtra("EXTRA_KEY_LAST_VIEW_PAGE", 1);
        intent.putExtra("EXTRA_KEY_EPISODE_TOTAL", this.episodeTotal);
        intent.putExtra("EXTRA_KEY_COMIC_TITLE", this.np.getTitle() + "");
        intent.putExtra("EXTRA_KEY_VIEW_FROM_RECORD", false);
        getActivity().startActivity(intent);
    }

    public void Y(String str) {
        List listFind;
        DbComicViewRecordObject dbComicViewRecordObjectAx;
        if (str == null || (listFind = DownloadComicEpisodeObject.find(DownloadComicEpisodeObject.class, "comic_id = ?", str)) == null) {
            return;
        }
        boolean z = false;
        for (int i = 0; i < listFind.size(); i++) {
            DownloadComicEpisodeObject downloadComicEpisodeObject = (DownloadComicEpisodeObject) listFind.get(i);
            ComicEpisodeObject comicEpisodeObject = downloadComicEpisodeObject.getComicEpisodeObject();
            if (downloadComicEpisodeObject != null) {
                if (downloadComicEpisodeObject.getStatus() == 1 || downloadComicEpisodeObject.getStatus() == 2 || downloadComicEpisodeObject.getStatus() == 3) {
                    comicEpisodeObject.setStatus(1);
                } else if (downloadComicEpisodeObject.getStatus() == 4) {
                    comicEpisodeObject.setStatus(2);
                } else {
                    comicEpisodeObject.setStatus(0);
                }
            }
            if (!z && (dbComicViewRecordObjectAx = com.picacomic.fregata.utils.b.ax(this.nn.getComicId())) != null && downloadComicEpisodeObject != null && dbComicViewRecordObjectAx.getEpisodeOrder() == downloadComicEpisodeObject.getEpisodeOrder()) {
                comicEpisodeObject.setStatus(4);
                z = true;
            }
            comicEpisodeObject.setSelected(false);
            this.ig.add(comicEpisodeObject);
        }
    }

    public void A(final boolean z) {
        if (this.nk) {
            bA();
            this.nb = new d(getContext()).dO().b(e.z(getActivity()), this.nn.getComicId(), this.nm);
            this.nb.enqueue(new Callback<GeneralResponse<ComicEpisodeResponse>>() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.10
                @Override // retrofit2.Callback
                public void onResponse(Call<GeneralResponse<ComicEpisodeResponse>> call, Response<GeneralResponse<ComicEpisodeResponse>> response) {
                    DbComicViewRecordObject dbComicViewRecordObjectAx;
                    if (response.code() == 200) {
                        if (response.body().data != null && response.body().data.getEps() != null && response.body().data.getEps().getDocs() != null && response.body().data.getEps().getDocs().size() > 0) {
                            if (z) {
                                ComicDetailFragment.this.ig.clear();
                            }
                            ComicDetailFragment.this.episodeTotal = response.body().data.getEps().getTotal();
                            boolean z2 = false;
                            for (int i = 0; i < response.body().data.getEps().getDocs().size(); i++) {
                                ComicEpisodeObject comicEpisodeObject = response.body().data.getEps().getDocs().get(i);
                                DownloadComicEpisodeObject downloadComicEpisodeObjectAy = com.picacomic.fregata.utils.b.ay(response.body().data.getEps().getDocs().get(i).getEpisodeId());
                                if (downloadComicEpisodeObjectAy != null) {
                                    if (downloadComicEpisodeObjectAy.getStatus() == 1 || downloadComicEpisodeObjectAy.getStatus() == 2 || downloadComicEpisodeObjectAy.getStatus() == 3) {
                                        comicEpisodeObject.setStatus(1);
                                    } else if (downloadComicEpisodeObjectAy.getStatus() == 4) {
                                        comicEpisodeObject.setStatus(2);
                                    } else {
                                        comicEpisodeObject.setStatus(0);
                                    }
                                }
                                if (!z2 && (dbComicViewRecordObjectAx = com.picacomic.fregata.utils.b.ax(ComicDetailFragment.this.nn.getComicId())) != null && downloadComicEpisodeObjectAy != null && dbComicViewRecordObjectAx.getEpisodeOrder() == downloadComicEpisodeObjectAy.getEpisodeOrder()) {
                                    comicEpisodeObject.setStatus(4);
                                    z2 = true;
                                }
                                comicEpisodeObject.setSelected(false);
                                ComicDetailFragment.this.ig.add(comicEpisodeObject);
                            }
                            if (response.body().data.getEps().getTotal() == ComicDetailFragment.this.ig.size()) {
                                ComicDetailFragment.this.nk = false;
                                if (ComicDetailFragment.this.button_moreEpisode != null) {
                                    ComicDetailFragment.this.button_moreEpisode.setVisibility(8);
                                }
                            }
                        }
                        if (ComicDetailFragment.this.nd != null && ComicDetailFragment.this.recyclerView_episode != null) {
                            ComicDetailFragment.this.nd.notifyDataSetChanged();
                        }
                        ComicDetailFragment.this.nm++;
                    } else {
                        try {
                            new c(ComicDetailFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    ComicDetailFragment.this.bC();
                }

                @Override // retrofit2.Callback
                public void onFailure(Call<GeneralResponse<ComicEpisodeResponse>> call, Throwable th) {
                    th.printStackTrace();
                    ComicDetailFragment.this.bC();
                    new c(ComicDetailFragment.this.getActivity()).dN();
                }
            });
        }
    }

    public void cJ() {
        bA();
        this.na = new d(getContext()).dO().r(e.z(getActivity()), this.nn.getComicId());
        this.na.enqueue(new Callback<GeneralResponse<ComicDetailResponse>>() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.11
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<ComicDetailResponse>> call, Response<GeneralResponse<ComicDetailResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.toString());
                    if (response.body().data != null && response.body().data.getComic() != null) {
                        ComicDetailFragment.this.np = response.body().data.getComic();
                        DbComicDetailObject dbComicDetailObject = new DbComicDetailObject(ComicDetailFragment.this.np);
                        dbComicDetailObject.setDownloadStatus(ComicDetailFragment.this.downloadStatus);
                        com.picacomic.fregata.utils.b.a(dbComicDetailObject);
                        if (ComicDetailFragment.this.nm == 1) {
                            ComicDetailFragment.this.A(true);
                        } else {
                            ComicDetailFragment.this.A(false);
                        }
                        ComicDetailFragment.this.bI();
                    }
                } else {
                    try {
                        new c(ComicDetailFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ComicDetailFragment.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<ComicDetailResponse>> call, Throwable th) {
                th.printStackTrace();
                ComicDetailFragment.this.bC();
                new c(ComicDetailFragment.this.getActivity()).dN();
            }
        });
    }

    public void cK() {
        bA();
        this.mZ = new d(getContext()).dO().t(e.z(getActivity()), this.nn.getComicId());
        this.mZ.enqueue(new Callback<GeneralResponse<ActionResponse>>() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.13
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<ActionResponse>> call, Response<GeneralResponse<ActionResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.toString());
                    if (response.body().data != null && response.body().data.getAction() != null) {
                        if (response.body().data.getAction().equalsIgnoreCase("favourite")) {
                            ComicDetailFragment.this.nj = true;
                            ComicDetailFragment.this.y(true);
                            Toast.makeText(ComicDetailFragment.this.getActivity(), R.string.alert_bookmarked, 0).show();
                        } else if (response.body().data.getAction().equalsIgnoreCase("un_favourite")) {
                            ComicDetailFragment.this.nj = false;
                            ComicDetailFragment.this.y(false);
                            Toast.makeText(ComicDetailFragment.this.getActivity(), R.string.alert_bookmark_canceled, 0).show();
                        }
                    }
                } else {
                    try {
                        new c(ComicDetailFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ComicDetailFragment.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<ActionResponse>> call, Throwable th) {
                th.printStackTrace();
                ComicDetailFragment.this.bC();
                new c(ComicDetailFragment.this.getActivity()).dN();
            }
        });
    }

    public void cL() {
        bA();
        this.mW = new d(getContext()).dO().s(e.z(getActivity()), this.nn.getComicId());
        this.mW.enqueue(new Callback<GeneralResponse<ActionResponse>>() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.14
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<ActionResponse>> call, Response<GeneralResponse<ActionResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.toString());
                    if (response.body().data != null && response.body().data.getAction() != null) {
                        if (response.body().data.getAction().equalsIgnoreCase("like")) {
                            ComicDetailFragment.this.isLiked = true;
                            ComicDetailFragment.this.z(true);
                            Toast.makeText(ComicDetailFragment.this.getActivity(), R.string.alert_liked, 0).show();
                            if (ComicDetailFragment.this.nl) {
                                ComicDetailFragment.this.textView_likeCount.setText(ComicDetailFragment.this.np.getLikesCount() + "");
                            } else {
                                ComicDetailFragment.this.textView_likeCount.setText((ComicDetailFragment.this.np.getLikesCount() + 1) + "");
                            }
                        } else if (response.body().data.getAction().equalsIgnoreCase("unlike")) {
                            ComicDetailFragment.this.isLiked = false;
                            ComicDetailFragment.this.z(false);
                            Toast.makeText(ComicDetailFragment.this.getActivity(), R.string.alert_like_canceled, 0).show();
                            if (ComicDetailFragment.this.nl) {
                                ComicDetailFragment.this.textView_likeCount.setText((ComicDetailFragment.this.np.getLikesCount() - 1) + "");
                            } else {
                                ComicDetailFragment.this.textView_likeCount.setText(ComicDetailFragment.this.np.getLikesCount() + "");
                            }
                        }
                    }
                } else {
                    try {
                        new c(ComicDetailFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ComicDetailFragment.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<ActionResponse>> call, Throwable th) {
                th.printStackTrace();
                ComicDetailFragment.this.bC();
                new c(ComicDetailFragment.this.getActivity()).dN();
            }
        });
    }

    public void cM() {
        this.nc = new d(getContext()).dO().u(e.z(getActivity()), this.nn.getComicId());
        this.nc.enqueue(new Callback<GeneralResponse<ComicRandomListResponse>>() { // from class: com.picacomic.fregata.fragments.ComicDetailFragment.15
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<ComicRandomListResponse>> call, Response<GeneralResponse<ComicRandomListResponse>> response) {
                if (response.code() == 200) {
                    if (response.body().data == null || response.body().data.getComics() == null || response.body().data.getComics() == null) {
                        return;
                    }
                    if (ComicDetailFragment.this.nf == null) {
                        ComicDetailFragment.this.nf = new ArrayList<>();
                    } else {
                        ComicDetailFragment.this.nf.clear();
                    }
                    ComicDetailFragment.this.nf.addAll(response.body().data.getComics());
                    if (ComicDetailFragment.this.ne != null) {
                        ComicDetailFragment.this.ne.notifyDataSetChanged();
                        return;
                    }
                    return;
                }
                try {
                    new c(ComicDetailFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<ComicRandomListResponse>> call, Throwable th) {
                th.printStackTrace();
                ComicDetailFragment.this.bC();
                new c(ComicDetailFragment.this.getActivity());
            }
        });
    }

    public void cN() {
        DbComicViewRecordObject dbComicViewRecordObjectAx;
        if (this.nn == null || this.nn.getComicId() == null || (dbComicViewRecordObjectAx = com.picacomic.fregata.utils.b.ax(this.nn.getComicId())) == null) {
            return;
        }
        dbComicViewRecordObjectAx.delete();
        bI();
        Toast.makeText(getContext(), R.string.alert_clear_recent_success, 0).show();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        if (this.na != null) {
            this.na.cancel();
        }
        if (this.mW != null) {
            this.mW.cancel();
        }
        if (this.mZ != null) {
            this.mZ.cancel();
        }
        if (this.nb != null) {
            this.nb.cancel();
        }
        if (this.nc != null) {
            this.nc.cancel();
        }
        super.onDetach();
    }
}
