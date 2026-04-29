package com.picacomic.fregata.activities;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.provider.Settings;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import com.picacomic.fregata.databinding.ActivityComicViewerBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.d;
import com.picacomic.fregata.adapters.c;
import com.picacomic.fregata.fragments.ComicViewFragment;
import com.picacomic.fregata.fragments.ComicViewerListFragment;
import com.picacomic.fregata.objects.ComicEpisodeObject;
import com.picacomic.fregata.objects.ComicPageObject;
import com.picacomic.fregata.objects.databaseTable.DbComicViewRecordObject;
import com.picacomic.fregata.objects.databaseTable.DownloadComicEpisodeObject;
import com.picacomic.fregata.objects.databaseTable.DownloadComicPageObject;
import com.picacomic.fregata.objects.responses.DataClass.ComicEpisodeResponse.ComicEpisodeResponse;
import com.picacomic.fregata.objects.responses.DataClass.ComicPageResponse.ComicPagesResponse;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.utils.b;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.AlertDialogCenter;
import com.picacomic.fregata.utils.views.VerticalSeekBar;
import java.util.ArrayList;
import java.util.List;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class ComicViewerActivity extends BaseActivity implements d {
    public static final String TAG = "ComicViewerActivity";
    private static final int REQUEST_WRITE_SETTINGS = 2001;
    public static int hq = 40;

    private enum GesturePanelState {
        HINT,
        TRANSPARENT,
        HIDDEN
    }

    ActivityComicViewerBinding binding;
    Button button_autoPaging;
    Button button_comment;
    Button button_dialogAutoPagingStart;
    Button button_download;
    Button button_hide;
    Button button_hint;
    Button button_nextEpisode;
    Button button_nextPageBottom;
    Button button_nextPageRight;
    Button button_nightMode;
    Button button_panel;
    Button button_panelLeftCorner;
    Button button_previousEpisode;
    Button button_previousPage;
    Button button_screenOrientation;
    Button button_scrollOrientation;
    Button button_selectEpisode;
    Button button_setting;
    Button button_share;
    Button button_twoPageViewMode;
    CheckBox checkBox_brightnessSystem;
    public String comicId;
    int currentPage;
    public int episodeOrder;
    public int episodeTotal;

    FrameLayout frameLayout_gestureArea;
    FrameLayout frameLayout_nightModeMask;
    GridView gridView_episodeDialog;
    c episodeAdapter;
    boolean isLandscape;
    boolean isVerticalScroll;
    boolean isSystemBrightness;
    boolean isNightMode;
    public int currentPagingPage;
    public int totalPagingPages;
    public int totalPages;
    public int currentEpisodePagingPage;
    public int totalEpisodePagingPages;
    public ComicEpisodeObject currentEpisode;
    public String comicTitle;
    int autoPagingInterval;
    int brightnessValue;
    int loadedPageOffset;
    boolean hasMovedPastFirstLoadedPage;
    boolean isLoading;
    boolean isVolumeKeyPagingEnabled;
    boolean shouldRestoreRecordPosition;
    boolean shouldWarnMobileNetwork;
    CountDownTimer autoPagingTimer;
    CountDownTimer episodeButtonFadeTimer;
    Call<GeneralResponse<ComicPagesResponse>> comicPagesCall;
    Animation leftPanelEnterAnimation;
    Animation leftPanelExitAnimation;
    Animation rightPanelEnterAnimation;
    Animation rightPanelExitAnimation;
    Animation topPanelEnterAnimation;
    Animation topPanelExitAnimation;
    Animation bottomPanelEnterAnimation;
    Animation bottomPanelExitAnimation;
    com.picacomic.fregata.a_pkg.c comicStatusChangeListener;
    Call<GeneralResponse<ComicEpisodeResponse>> episodeListCall;
    View.OnClickListener panelButtonClickListener;
    View.OnClickListener nextPageClickListener;
    SeekBar.OnSeekBarChangeListener pagingSeekBarChangeListener;

    /* JADX INFO: renamed from: if, reason: not valid java name */
    public ArrayList<ComicPageObject> pageList;
    ArrayList<ComicEpisodeObject> episodeList;

    ImageButton imageButton_back;
    LinearLayout linearLayout_bottomPanel;
    LinearLayout linearLayout_dialogAutoPaging;
    LinearLayout linearLayout_horizontalPagingScrollbar;
    LinearLayout linearLayout_rightPanel;
    LinearLayout linearLayout_verticalPagingScrollbar;
    RelativeLayout relativeLayout_leftPanel;
    RelativeLayout relativeLayout_toolbar;

    SeekBar seekBar_dialogAutoPaging;
    SeekBar seekBar_horizontalPaging;
    SeekBar seekBar_verticalPaging;

    TextView textView_dialogAutoPagingTitle;
    TextView textView_horizontalPage;
    TextView textView_page;
    TextView textView_title;
    TextView textView_verticalPage;
    VerticalSeekBar verticalSeekBar_brightness;
    String batteryLevelText = "不明";
    private BroadcastReceiver ih = new BroadcastReceiver() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                int intExtra = intent.getIntExtra("level", 0);
                ComicViewerActivity.this.batteryLevelText = String.valueOf(intExtra) + "%";
            } catch (Exception e) {
                e.printStackTrace();
                if (ComicViewerActivity.this != null) {
                    Toast.makeText(ComicViewerActivity.this, "cannot parse battery level.", 0).show();
                }
            }
        }
    };
    private MediaPlayer ii = null;

    @Override // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.binding = ActivityComicViewerBinding.inflate(getLayoutInflater());
        setContentView(this.binding.getRoot());

        this.button_autoPaging = this.binding.layoutBottomPanel.buttonComicViewerAutoPaging;
        this.button_comment = this.binding.layoutRightPanel.buttonComicViewerComment;
        this.button_dialogAutoPagingStart = this.binding.layoutAutoPaging.buttonComicViewerDialogAutoPagingStart;
        this.button_download = this.binding.layoutToolbar.buttonComicViewerDownload;
        this.button_hide = findViewById(R.id.button_comic_viewer_hide);
        this.button_hint = this.binding.layoutToolbar.buttonComicViewerHint;
        this.button_nextEpisode = findViewById(R.id.button_comic_viewer_next_episode);
        this.button_nextPageBottom = findViewById(R.id.button_comic_viewer_next_page_bottom);
        this.button_nextPageRight = findViewById(R.id.button_comic_viewer_next_page_right);
        this.button_nightMode = this.binding.layoutRightPanel.buttonComicViewerNightMode;
        this.button_panel = findViewById(R.id.button_comic_viewer_panel);
        this.button_panelLeftCorner = findViewById(R.id.button_comic_viewer_panel_left_corner);
        this.button_previousEpisode = findViewById(R.id.button_comic_viewer_previous_episode);
        this.button_previousPage = findViewById(R.id.button_comic_viewer_previous_page);
        this.button_screenOrientation = findViewById(R.id.button_comic_viewer_screen_orientation);
        this.button_scrollOrientation = findViewById(R.id.button_comic_viewer_scroll_orientation);
        this.button_selectEpisode = this.binding.layoutRightPanel.buttonComicViewerSelectEpisode;
        this.button_setting = findViewById(R.id.button_comic_viewer_setting);
        this.button_share = this.binding.layoutToolbar.buttonComicViewerShare;
        this.button_twoPageViewMode = findViewById(R.id.button_comic_viewer_two_page_view_mode);
        this.checkBox_brightnessSystem = this.binding.layoutLeftPanel.checkBoxComicViewerSystemBrightness;
        this.frameLayout_gestureArea = findViewById(R.id.frameLayout_comic_viewer_gesture_area);
        this.frameLayout_nightModeMask = this.binding.frameLayoutComicViewerNightModeMask;
        this.gridView_episodeDialog = this.binding.gridViewComicViewerDialogSelectEpisode;
        this.imageButton_back = this.binding.layoutToolbar.imageButtonComicViewerBack;
        this.linearLayout_bottomPanel = this.binding.layoutBottomPanel.linearLayoutComicViewerBottomPanel;
        this.linearLayout_dialogAutoPaging = this.binding.layoutAutoPaging.linearLayoutComicViewerDialogAutoPaging;
        this.linearLayout_horizontalPagingScrollbar = findViewById(R.id.linearLayout_comic_viewer_horizontal_paging_scrollbar);
        this.linearLayout_rightPanel = this.binding.layoutRightPanel.linearLayoutComicViewerRightPanel;
        this.linearLayout_verticalPagingScrollbar = findViewById(R.id.linearLayout_comic_viewer_vertical_paging_scrollbar);
        this.relativeLayout_leftPanel = this.binding.layoutLeftPanel.relativeLayoutComicViewerLeftPanel;
        this.relativeLayout_toolbar = this.binding.layoutToolbar.relativeLayoutComicViewerToolbar;
        this.seekBar_dialogAutoPaging = this.binding.layoutAutoPaging.seekBarComicViewerDialogAutoPaging;
        this.seekBar_horizontalPaging = findViewById(R.id.seekBar_comic_viewer_horizontal_page);
        this.seekBar_verticalPaging = findViewById(R.id.seekBar_comic_viewer_vertical_page);
        this.textView_dialogAutoPagingTitle = this.binding.layoutAutoPaging.textViewComicViewerDialogAutoPagingTitle;
        this.textView_horizontalPage = findViewById(R.id.textView_comic_viewer_horizontal_page);
        this.textView_page = this.binding.textViewComicViewerPage;
        this.textView_title = this.binding.layoutToolbar.textViewComicViewerTitle;
        this.textView_verticalPage = findViewById(R.id.textView_comic_viewer_vertical_page);
        this.verticalSeekBar_brightness = this.binding.layoutLeftPanel.verticalSeekBarComicViewerBrightness;

        this.binding.layoutToolbar.toolbar.setVisibility(View.GONE);
        this.relativeLayout_toolbar.setVisibility(View.GONE);
        if (bundle == null) {
            if (e.w(this)) {
                getSupportFragmentManager().beginTransaction().add(R.id.container, new ComicViewerListFragment(), ComicViewerListFragment.TAG).commit();
            } else {
                getSupportFragmentManager().beginTransaction().add(R.id.container, new ComicViewFragment(), ComicViewFragment.TAG).commit();
            }
            init();
            bF();
            bH();
            return;
        }
        finish();
    }

    public void init() {
        this.isVolumeKeyPagingEnabled = e.Q(this);
        this.isLandscape = e.M(this);
        this.isVerticalScroll = e.N(this);
        this.isNightMode = e.L(this);
        this.autoPagingInterval = e.O(this);
        this.hasMovedPastFirstLoadedPage = false;
        this.isLoading = false;
        this.currentPagingPage = 0;
        this.totalPagingPages = 1;
        this.currentEpisodePagingPage = 0;
        this.totalEpisodePagingPages = 1;
        this.loadedPageOffset = 0;
        this.shouldRestoreRecordPosition = false;
        this.shouldWarnMobileNetwork = true;
        this.comicId = getIntent().getStringExtra("EXTRA_KEY_COMIC_ID");
        this.comicTitle = getIntent().getStringExtra("EXTRA_KEY_COMIC_TITLE");
        this.episodeOrder = getIntent().getIntExtra("EXTRA_KEY_LAST_VIEW_EPISODE_ORDER", 1);
        this.episodeTotal = getIntent().getIntExtra("EXTRA_KEY_EPISODE_TOTAL", 1);
        this.currentPage = getIntent().getIntExtra("EXTRA_KEY_LAST_VIEW_PAGE", 0);
        boolean booleanExtra = getIntent().getBooleanExtra("EXTRA_KEY_VIEW_FROM_RECORD", false);
        DbComicViewRecordObject dbComicViewRecordObjectAx = b.ax(this.comicId);
        if (dbComicViewRecordObjectAx != null && booleanExtra) {
            this.loadedPageOffset = dbComicViewRecordObjectAx.getPage();
            this.episodeOrder = dbComicViewRecordObjectAx.getEpisodeOrder();
            this.episodeTotal = dbComicViewRecordObjectAx.getEpisodeTotal();
            this.currentPagingPage = bT();
            this.totalPagingPages = this.currentPagingPage + 1;
            this.shouldRestoreRecordPosition = true;
        }
        loadPanelAnimations();
        bJ();
    }

    public void bF() {
        setupEpisodeGrid();
        setupToolbarButtons();
        setupReaderOptionButtons();
        setupPanelButtons();
        setupSeekBars();
        setupPagingButtons();
        setupGestureOverlay();
    }

    private void setupEpisodeGrid() {
        if (this.episodeList == null) {
            this.episodeList = new ArrayList<>();
        }
        this.episodeAdapter = new c(this, this.episodeList);
        this.gridView_episodeDialog.setAdapter((ListAdapter) this.episodeAdapter);
        this.gridView_episodeDialog.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.12
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (ComicViewerActivity.this.episodeList == null || ComicViewerActivity.this.episodeList.size() <= i) {
                    return;
                }
                ComicViewerActivity.this.episodeOrder = ComicViewerActivity.this.episodeList.get(i).getOrder();
                ComicViewerActivity.this.b(ComicViewerActivity.this.episodeOrder, 0, true);
            }
        });
        this.gridView_episodeDialog.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.23
            int im;

            /* JADX INFO: renamed from: io, reason: collision with root package name */
            int f6io;
            int ip;

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                s(i);
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                this.im = i;
                this.f6io = i2;
                this.ip = i3;
            }

            private void s(int i) {
                if (this.im < this.ip - this.f6io || i != 0) {
                    return;
                }
                ComicViewerActivity.this.bN();
            }
        });
    }

    private void setupToolbarButtons() {
        this.imageButton_back.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.26
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicViewerActivity.this.onBackPressed();
            }
        });
        this.button_hint.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.27
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicViewerActivity.this.setReaderControlsVisibility(View.GONE);
                ComicViewerActivity.this.setGesturePanelState(GesturePanelState.HINT);
                e.c((Context) ComicViewerActivity.this, true);
            }
        });
        this.button_share.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.28
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Toast.makeText(ComicViewerActivity.this, "Download and Share Image", 0).show();
            }
        });
        this.button_download.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.29
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Toast.makeText(ComicViewerActivity.this, "Download Current Image", 0).show();
            }
        });
    }

    private void setupReaderOptionButtons() {
        this.button_screenOrientation.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.30
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicViewerActivity.this.isLandscape) {
                    ComicViewerActivity.this.isLandscape = false;
                    ComicViewerActivity.this.h(false);
                } else {
                    ComicViewerActivity.this.isLandscape = true;
                    ComicViewerActivity.this.h(true);
                }
                e.e(ComicViewerActivity.this, ComicViewerActivity.this.isLandscape);
            }
        });
        this.button_scrollOrientation.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.31
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicViewerActivity.this.isVerticalScroll) {
                    ComicViewerActivity.this.isVerticalScroll = false;
                    ComicViewerActivity.this.i(false);
                } else {
                    ComicViewerActivity.this.isVerticalScroll = true;
                    ComicViewerActivity.this.i(true);
                }
                e.f(ComicViewerActivity.this, ComicViewerActivity.this.isVerticalScroll);
            }
        });
    }

    private void setupPanelButtons() {
        this.button_autoPaging.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicViewerActivity.this.linearLayout_dialogAutoPaging.getVisibility() == View.VISIBLE) {
                    ComicViewerActivity.this.linearLayout_dialogAutoPaging.setVisibility(View.GONE);
                    return;
                }
                if (ComicViewerActivity.this.gridView_episodeDialog.getVisibility() == View.VISIBLE) {
                    ComicViewerActivity.this.gridView_episodeDialog.setVisibility(View.GONE);
                }
                ComicViewerActivity.this.linearLayout_dialogAutoPaging.setVisibility(View.VISIBLE);
            }
        });
        this.button_dialogAutoPagingStart.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicViewerActivity.this.setReaderControlsVisibility(View.GONE);
                ComicViewerActivity.this.bO();
            }
        });
        this.button_setting.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(ComicViewerActivity.this, (Class<?>) PopupActivity.class);
                intent.putExtra("EXTRA_KEY_TYPE", "TYPE_KEY_SETTING");
                ComicViewerActivity.this.startActivity(intent);
            }
        });
        this.button_hide.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicViewerActivity.this.setReaderControlsVisibility(View.GONE);
            }
        });
        this.button_selectEpisode.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicViewerActivity.this.gridView_episodeDialog.getVisibility() == View.VISIBLE) {
                    ComicViewerActivity.this.gridView_episodeDialog.setVisibility(View.GONE);
                    return;
                }
                if (ComicViewerActivity.this.linearLayout_dialogAutoPaging.getVisibility() == View.VISIBLE) {
                    ComicViewerActivity.this.linearLayout_dialogAutoPaging.setVisibility(View.GONE);
                }
                ComicViewerActivity.this.gridView_episodeDialog.setVisibility(View.VISIBLE);
                ComicViewerActivity.this.bN();
            }
        });
        this.button_nightMode.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicViewerActivity.this.isNightMode) {
                    ComicViewerActivity.this.setNightModeEnabled(false);
                } else {
                    ComicViewerActivity.this.setNightModeEnabled(true);
                }
            }
        });
        this.button_comment.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicViewerActivity.this.comicId != null) {
                    Intent intent = new Intent(ComicViewerActivity.this, (Class<?>) PopupActivity.class);
                    intent.putExtra("EXTRA_KEY_COMIC_ID", ComicViewerActivity.this.comicId);
                    intent.putExtra("EXTRA_KEY_TYPE", "TYPE_KEY_COMMENT");
                    ComicViewerActivity.this.startActivity(intent);
                }
            }
        });
        this.checkBox_brightnessSystem.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.9
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                ComicViewerActivity.this.j(z);
            }
        });
        this.panelButtonClickListener = new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicViewerActivity.this.setReaderControlsVisibility(View.VISIBLE);
                ComicViewerActivity.this.bP();
            }
        };
        this.button_panel.setOnClickListener(this.panelButtonClickListener);
        this.button_panelLeftCorner.setOnClickListener(this.panelButtonClickListener);
    }

    private void setupSeekBars() {
        this.verticalSeekBar_brightness.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.11
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                ComicViewerActivity.this.m(i);
            }
        });
        this.pagingSeekBarChangeListener = new SeekBar.OnSeekBarChangeListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.13
            int ik;

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                this.ik = i;
                if (z) {
                    ComicViewerActivity.this.currentPage = this.ik;
                    ComicViewerActivity.this.comicStatusChangeListener.b(this.ik, false);
                    ComicViewerActivity.this.r(ComicViewerActivity.this.currentPage);
                }
            }
        };
        this.seekBar_horizontalPaging.setOnSeekBarChangeListener(this.pagingSeekBarChangeListener);
        this.seekBar_verticalPaging.setOnSeekBarChangeListener(this.pagingSeekBarChangeListener);
        this.seekBar_dialogAutoPaging.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.14
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                ComicViewerActivity.this.autoPagingInterval = (i * 100) + 1000;
                e.b((Context) ComicViewerActivity.this, ComicViewerActivity.this.autoPagingInterval);
                TextView textView = ComicViewerActivity.this.textView_dialogAutoPagingTitle;
                textView.setText(ComicViewerActivity.this.getResources().getString(R.string.comic_viewer_setting_panel_auto_paging) + " 【 " + String.format("%.1f", Float.valueOf(ComicViewerActivity.this.autoPagingInterval / 1000.0f)) + ComicViewerActivity.this.getResources().getString(R.string.second) + " 】");
            }
        });
    }

    private void setupPagingButtons() {
        this.nextPageClickListener = new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicViewerActivity.this.bR();
            }
        };
        this.button_nextPageBottom.setOnClickListener(this.nextPageClickListener);
        this.button_nextPageRight.setOnClickListener(this.nextPageClickListener);
        this.button_nextEpisode.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicViewerActivity.this.episodeOrder < ComicViewerActivity.this.episodeTotal) {
                    ComicViewerActivity.this.episodeOrder++;
                    ComicViewerActivity.this.b(ComicViewerActivity.this.episodeOrder, 0, true);
                } else {
                    ComicViewerActivity.this.p(View.GONE);
                    Toast.makeText(ComicViewerActivity.this, R.string.comic_viewer_no_more_episode, 0).show();
                }
            }
        });
        this.button_previousEpisode.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicViewerActivity.this.episodeOrder > 1) {
                    ComicViewerActivity.this.episodeOrder--;
                    ComicViewerActivity.this.b(ComicViewerActivity.this.episodeOrder, 0, true);
                } else {
                    ComicViewerActivity.this.q(View.GONE);
                    Toast.makeText(ComicViewerActivity.this, R.string.comic_viewer_first_episode, 0).show();
                }
            }
        });
        this.button_previousPage.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.18
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicViewerActivity.this.bS();
            }
        });
    }

    private void setupGestureOverlay() {
        this.frameLayout_gestureArea.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.19
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicViewerActivity.this.setGesturePanelState(GesturePanelState.TRANSPARENT);
                e.c((Context) ComicViewerActivity.this, false);
            }
        });
    }

    public void bG() {
        this.currentPage = 0;
        this.currentPagingPage = 0;
        this.totalPagingPages = 1;
        this.loadedPageOffset = 0;
        this.hasMovedPastFirstLoadedPage = false;
        this.shouldRestoreRecordPosition = false;
    }

    public void bH() {
        setReaderControlsVisibility(View.GONE);
        h(this.isLandscape);
        i(this.isVerticalScroll);
        setNightModeEnabled(this.isNightMode);
        if (this.autoPagingInterval + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED < 0) {
            this.seekBar_dialogAutoPaging.setProgress(0);
        } else {
            this.seekBar_dialogAutoPaging.setProgress((this.autoPagingInterval + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED) / 100);
        }
        if (e.K(this)) {
            setReaderControlsVisibility(View.GONE);
            setGesturePanelState(GesturePanelState.HINT);
        } else {
            setReaderControlsVisibility(View.GONE);
            setGesturePanelState(GesturePanelState.TRANSPARENT);
        }
    }

    public void bI() {
        p(View.GONE);
        q(View.GONE);
        n(this.currentPage);
        if (this.currentEpisode != null) {
            this.textView_title.setText("〖" + this.currentEpisode.getTitle() + "〗 ");
            SpannableString spannableString = new SpannableString(this.comicTitle);
            spannableString.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.white)), 0, spannableString.length(), 33);
            this.textView_title.append(spannableString);
        }
    }

    public void bJ() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.M || Settings.System.canWrite(this)) {
            return;
        }
        Toast.makeText(this, R.string.comic_viewer_setting_panel_brightness_manual, Toast.LENGTH_SHORT).show();
        Intent intent = new Intent(Settings.ACTION_MANAGE_WRITE_SETTINGS);
        intent.setData(Uri.parse("package:" + getPackageName()));
        startActivity(intent);
    }

    private void loadPanelAnimations() {
        this.leftPanelEnterAnimation = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_left_enter);
        this.leftPanelExitAnimation = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_left_exit);
        this.rightPanelEnterAnimation = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_right_enter);
        this.rightPanelExitAnimation = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_right_exit);
        this.topPanelEnterAnimation = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_top_enter);
        this.topPanelExitAnimation = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_top_exit);
        this.bottomPanelEnterAnimation = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_bottom_enter);
        this.bottomPanelExitAnimation = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_bottom_exit);
    }

    private void ensurePanelAnimationsLoaded() {
        if (this.leftPanelEnterAnimation == null || this.leftPanelExitAnimation == null || this.rightPanelEnterAnimation == null || this.rightPanelExitAnimation == null || this.bottomPanelEnterAnimation == null || this.bottomPanelExitAnimation == null) {
            loadPanelAnimations();
        }
    }

    @Override // com.picacomic.fregata.activities.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            if (this.ih != null) {
                registerReceiver(this.ih, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.picacomic.fregata.activities.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        if (this.currentEpisode != null && this.currentEpisode.getTitle() != null) {
            String title = this.currentEpisode.getTitle();
            com.picacomic.fregata.utils.b.a(new DbComicViewRecordObject(this.comicId, bU() + this.currentPage, title, this.episodeOrder, this.episodeTotal, System.currentTimeMillis()));
        }
        try {
            if (this.ih != null) {
                unregisterReceiver(this.ih);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        super.onPause();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        String title = "";
        if (this.currentEpisode != null && this.currentEpisode.getTitle() != null) {
            title = this.currentEpisode.getTitle();
        }
        com.picacomic.fregata.utils.b.a(new DbComicViewRecordObject(this.comicId, bU() + this.currentPage, title, this.episodeOrder, this.episodeTotal, System.currentTimeMillis()));
        f.D(TAG, "Save View Record: ");
        super.onSaveInstanceState(bundle);
    }

    @Override // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        bP();
        if (this.comicPagesCall != null) {
            this.comicPagesCall.cancel();
        }
        if (this.episodeListCall != null) {
            this.episodeListCall.cancel();
        }
        if (this.bottomPanelEnterAnimation != null) {
            this.bottomPanelEnterAnimation.cancel();
        }
        if (this.bottomPanelExitAnimation != null) {
            this.bottomPanelExitAnimation.cancel();
        }
        if (this.leftPanelEnterAnimation != null) {
            this.leftPanelEnterAnimation.cancel();
        }
        if (this.leftPanelExitAnimation != null) {
            this.leftPanelExitAnimation.cancel();
        }
        if (this.rightPanelEnterAnimation != null) {
            this.rightPanelEnterAnimation.cancel();
        }
        if (this.rightPanelExitAnimation != null) {
            this.rightPanelExitAnimation.cancel();
        }
        if (this.topPanelEnterAnimation != null) {
            this.topPanelEnterAnimation.cancel();
        }
        if (this.topPanelExitAnimation != null) {
            this.topPanelExitAnimation.cancel();
        }
        if (this.episodeButtonFadeTimer != null) {
            this.episodeButtonFadeTimer.cancel();
        }
        super.onStop();
    }

    public boolean j(int i) {
        List listFind = DownloadComicEpisodeObject.find(DownloadComicEpisodeObject.class, "comic_id = ? and episode_order = ?", this.comicId, i + "");
        if (listFind != null && listFind.size() > 0) {
            f.D(TAG, "HAVE DOWNLOAD EP");
            return true;
        }
        f.D(TAG, "NO DOWNLOAD EP");
        return false;
    }

    public void bL() {
        if (j(this.episodeOrder)) {
            c(this.episodeOrder, this.currentPagingPage, false);
        } else {
            d(this.episodeOrder, this.currentPagingPage, false);
        }
    }

    public void b(int i, int i2, boolean z) {
        if (j(i)) {
            c(i, i2, z);
        } else {
            d(i, i2, z);
        }
    }

    public synchronized void c(int i, int i2, boolean z) {
        if (z) {
            try {
                bG();
                this.pageList.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        List listFind = DownloadComicEpisodeObject.find(DownloadComicEpisodeObject.class, "comic_id = ? and episode_order = ?", this.comicId, i + "");
        if (listFind != null && listFind.size() > 0) {
            this.currentEpisode = ((DownloadComicEpisodeObject) listFind.get(0)).getComicEpisodeObject();
            this.totalPages = ((DownloadComicEpisodeObject) listFind.get(0)).getTotal();
            if (this.totalPages < hq) {
                this.totalPagingPages = 1;
            } else if (this.totalPages % hq == 0) {
                this.totalPagingPages = this.totalPages / hq;
            } else {
                this.totalPagingPages = (this.totalPages / hq) + 1;
            }
            List listFindWithQuery = null;
            if (this.totalPagingPages > i2) {
                listFindWithQuery = DownloadComicPageObject.findWithQuery(DownloadComicPageObject.class, "SELECT * FROM download_comic_page_object WHERE episode_id = ? LIMIT ? OFFSET ?", this.currentEpisode.getEpisodeId(), hq + "", (hq * i2) + "");
                f.D(TAG, "SIZE = " + listFindWithQuery.size() + "LIMIT = " + hq + " OFFSET = " + (hq * i2));
                this.currentPagingPage = i2 + 1;
            }
            if (this.pageList == null) {
                this.pageList = new ArrayList<>();
            }
            if (listFindWithQuery != null && listFindWithQuery.size() > 0) {
                ArrayList<ComicPageObject> arrayList = new ArrayList<>();
                for (int i3 = 0; i3 < listFindWithQuery.size(); i3++) {
                    ComicPageObject comicPageObject = ((DownloadComicPageObject) listFindWithQuery.get(i3)).getComicPageObject();
                    this.pageList.add(comicPageObject);
                    arrayList.add(comicPageObject);
                }
                this.comicStatusChangeListener.a(arrayList, this.loadedPageOffset, this.shouldRestoreRecordPosition, z);
                if (this.shouldRestoreRecordPosition) {
                    this.shouldRestoreRecordPosition = false;
                }
                o(this.pageList.size());
                bI();
            } else {
                f.D(TAG, "Load DownloadComicPageObjectList DB FAILED");
            }
        } else {
            f.D(TAG, "Load DownloadComicEpisodeObject DB FAILED");
        }
        logPagingState();
    }

    public void d(int i, int i2, final boolean z) {
        f.D(TAG, "Call Comic Page ?");
        if (i2 >= this.totalPagingPages || this.isLoading) {
            return;
        }
        this.isLoading = true;
        C(getResources().getString(R.string.loading_comic_viewer));
        com.picacomic.fregata.b.d dVar = new com.picacomic.fregata.b.d(this);
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("Call Page api = ");
        sb.append(e.z(this));
        sb.append("  ");
        sb.append(this.comicId);
        sb.append("  ");
        sb.append(i);
        sb.append("  ");
        int i3 = i2 + 1;
        sb.append(i3);
        f.D(str, sb.toString());
        this.comicPagesCall = dVar.dO().a(e.z(this), this.comicId, i, i3);
        this.comicPagesCall.enqueue(new Callback<GeneralResponse<ComicPagesResponse>>() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.20
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<ComicPagesResponse>> call, Response<GeneralResponse<ComicPagesResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.getPages().toString());
                    if (response.body().data != null && response.body().data.getPages().getDocs() != null) {
                        ComicViewerActivity.hq = response.body().data.getPages().getLimit();
                        if (z) {
                            ComicViewerActivity.this.bG();
                            ComicViewerActivity.this.pageList.clear();
                        }
                        ComicViewerActivity.this.totalPages = response.body().data.getPages().getTotal();
                        ComicViewerActivity.this.currentPagingPage = response.body().data.getPages().getPage();
                        ComicViewerActivity.this.totalPagingPages = response.body().data.getPages().getPages();
                        ComicViewerActivity.this.currentEpisode = response.body().data.getEp();
                        if (ComicViewerActivity.this.pageList == null) {
                            ComicViewerActivity.this.pageList = new ArrayList<>();
                        }
                        for (int i4 = 0; i4 < response.body().data.getPages().getDocs().size(); i4++) {
                            ComicViewerActivity.this.pageList.add(response.body().data.getPages().getDocs().get(i4));
                        }
                        ComicViewerActivity.this.logPagingState();
                        ComicViewerActivity.this.comicStatusChangeListener.a(response.body().data.getPages().getDocs(), ComicViewerActivity.this.loadedPageOffset, ComicViewerActivity.this.shouldRestoreRecordPosition, z);
                        if (ComicViewerActivity.this.shouldRestoreRecordPosition) {
                            ComicViewerActivity.this.shouldRestoreRecordPosition = false;
                        }
                        ComicViewerActivity.this.o(ComicViewerActivity.this.pageList.size());
                        ComicViewerActivity.this.bI();
                    }
                } else {
                    try {
                        new com.picacomic.fregata.b.c(ComicViewerActivity.this, response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ComicViewerActivity.this.isLoading = false;
                ComicViewerActivity.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<ComicPagesResponse>> call, Throwable th) {
                ComicViewerActivity.this.isLoading = false;
                th.printStackTrace();
                ComicViewerActivity.this.bC();
            }
        });
    }

    public void bM() {
        f.D(TAG, "Call Comic Page ?");
        if (bT() <= 0 || this.isLoading) {
            return;
        }
        this.isLoading = true;
        C(getResources().getString(R.string.loading_comic_viewer));
        this.comicPagesCall = new com.picacomic.fregata.b.d(this).dO().a(e.z(this), this.comicId, this.episodeOrder, bT());
        this.comicPagesCall.enqueue(new Callback<GeneralResponse<ComicPagesResponse>>() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.21
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<ComicPagesResponse>> call, Response<GeneralResponse<ComicPagesResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.getPages().toString());
                    if (response.body().data != null && response.body().data.getPages().getDocs() != null) {
                        ComicViewerActivity.hq = response.body().data.getPages().getLimit();
                        ComicViewerActivity.this.totalPages = response.body().data.getPages().getTotal();
                        ComicViewerActivity.this.pageList.addAll(0, response.body().data.getPages().getDocs());
                        ComicViewerActivity.this.loadedPageOffset -= ComicViewerActivity.hq;
                        ComicViewerActivity.this.logPagingState();
                        ComicViewerActivity.this.comicStatusChangeListener.a(response.body().data.getPages().getDocs(), ComicViewerActivity.this.loadedPageOffset, false, false);
                        ComicViewerActivity.this.o(ComicViewerActivity.this.pageList.size());
                        ComicViewerActivity.this.bI();
                    }
                } else {
                    try {
                        new com.picacomic.fregata.b.c(ComicViewerActivity.this, response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ComicViewerActivity.this.isLoading = false;
                ComicViewerActivity.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<ComicPagesResponse>> call, Throwable th) {
                ComicViewerActivity.this.isLoading = false;
                th.printStackTrace();
                ComicViewerActivity.this.bC();
            }
        });
    }

    private void logPagingState() {
        f.D(TAG, "current Page = " + this.currentPage);
        f.D(TAG, "Comic Paging Page = " + this.currentPagingPage);
        f.D(TAG, "Comic Paging Page Total = " + this.totalPagingPages);
        f.D(TAG, "jumpingPage = " + this.loadedPageOffset);
        f.D(TAG, "episodeOrder = " + this.episodeOrder);
        f.D(TAG, "episodeTotal = " + this.episodeTotal);
        f.D(TAG, "episodePagingPage = " + this.currentEpisodePagingPage);
        f.D(TAG, "episodePagingPageTotal = " + this.totalEpisodePagingPages);
    }

    public void bN() {
        if (this.currentEpisodePagingPage < this.totalEpisodePagingPages) {
            bA();
            this.episodeListCall = new com.picacomic.fregata.b.d(this).dO().b(e.z(this), this.comicId, this.currentEpisodePagingPage + 1);
            this.episodeListCall.enqueue(new Callback<GeneralResponse<ComicEpisodeResponse>>() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.22
                @Override // retrofit2.Callback
                public void onResponse(Call<GeneralResponse<ComicEpisodeResponse>> call, Response<GeneralResponse<ComicEpisodeResponse>> response) {
                    if (response.code() == 200) {
                        if (response.body().data != null && response.body().data.getEps() != null && response.body().data.getEps().getDocs() != null && response.body().data.getEps().getDocs().size() > 0) {
                            ComicViewerActivity.this.episodeTotal = response.body().data.getEps().getTotal();
                            ComicViewerActivity.this.currentEpisodePagingPage = response.body().data.getEps().getPage();
                            ComicViewerActivity.this.totalEpisodePagingPages = response.body().data.getEps().getPages();
                            for (int i = 0; i < response.body().data.getEps().getDocs().size(); i++) {
                                ComicViewerActivity.this.episodeList.add(response.body().data.getEps().getDocs().get(i));
                            }
                            ComicViewerActivity.this.episodeAdapter.notifyDataSetChanged();
                            f.D(ComicViewerActivity.TAG, ComicViewerActivity.this.episodeList.size() + "");
                        }
                    } else {
                        try {
                            new com.picacomic.fregata.b.c(ComicViewerActivity.this, response.code(), response.errorBody().string()).dN();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    ComicViewerActivity.this.bC();
                }

                @Override // retrofit2.Callback
                public void onFailure(Call<GeneralResponse<ComicEpisodeResponse>> call, Throwable th) {
                    th.printStackTrace();
                    ComicViewerActivity.this.bC();
                    new com.picacomic.fregata.b.c(ComicViewerActivity.this).dN();
                }
            });
        }
    }

    public void h(boolean z) {
        if (this.comicStatusChangeListener != null) {
            if (!z) {
                setRequestedOrientation(6);
                if (this.comicStatusChangeListener != null) {
                    this.comicStatusChangeListener.M(6);
                    return;
                }
                return;
            }
            setRequestedOrientation(7);
            if (this.comicStatusChangeListener != null) {
                this.comicStatusChangeListener.M(7);
            }
        }
    }

    public void i(boolean z) {
        if (this.comicStatusChangeListener != null) {
            this.comicStatusChangeListener.B(z);
            if (z) {
                this.button_scrollOrientation.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, ContextCompat.getDrawable(getApplicationContext(), R.drawable.ic_action_flip), (Drawable) null, (Drawable) null);
            } else {
                this.button_scrollOrientation.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, ContextCompat.getDrawable(getApplicationContext(), R.drawable.ic_action_flip_vert), (Drawable) null, (Drawable) null);
            }
        }
    }

    public void a(com.picacomic.fregata.a_pkg.c cVar) {
        this.comicStatusChangeListener = cVar;
    }

    public void setReaderControlsVisibility(int visibility) {
        ensurePanelAnimationsLoaded();
        this.relativeLayout_leftPanel.setVisibility(visibility);
        this.linearLayout_rightPanel.setVisibility(visibility);
        this.relativeLayout_toolbar.setVisibility(View.GONE);
        this.linearLayout_bottomPanel.setVisibility(visibility);
        if (visibility == View.VISIBLE) {
            if (!e.x(this)) {
                this.relativeLayout_leftPanel.startAnimation(this.leftPanelEnterAnimation);
                this.linearLayout_rightPanel.startAnimation(this.rightPanelEnterAnimation);
                this.linearLayout_bottomPanel.startAnimation(this.bottomPanelEnterAnimation);
            }
            setGesturePanelState(GesturePanelState.HIDDEN);
            return;
        }
        if (!e.x(this)) {
            this.relativeLayout_leftPanel.startAnimation(this.leftPanelExitAnimation);
            this.linearLayout_rightPanel.startAnimation(this.rightPanelExitAnimation);
            this.linearLayout_bottomPanel.startAnimation(this.bottomPanelExitAnimation);
        }
        this.gridView_episodeDialog.setVisibility(View.GONE);
        this.linearLayout_dialogAutoPaging.setVisibility(View.GONE);
        setGesturePanelState(GesturePanelState.TRANSPARENT);
    }

    private void setGesturePanelState(GesturePanelState state) {
        if (state == GesturePanelState.TRANSPARENT) {
            this.button_nextPageRight.setVisibility(View.VISIBLE);
            this.button_nextPageBottom.setVisibility(View.VISIBLE);
            this.button_previousPage.setVisibility(View.VISIBLE);
            this.button_panel.setVisibility(View.VISIBLE);
            this.button_panelLeftCorner.setVisibility(View.VISIBLE);
            this.button_nextPageRight.setBackgroundColor(getResources().getColor(R.color.transparent));
            this.button_nextPageBottom.setBackgroundColor(getResources().getColor(R.color.transparent));
            this.button_previousPage.setBackgroundColor(getResources().getColor(R.color.transparent));
            this.button_panel.setBackgroundColor(getResources().getColor(R.color.transparent));
            this.button_panelLeftCorner.setBackgroundColor(getResources().getColor(R.color.transparent));
            this.button_nextPageRight.setText("");
            this.button_nextPageBottom.setText("");
            this.button_previousPage.setText("");
            this.button_panel.setText("");
            this.button_panelLeftCorner.setText("");
            this.frameLayout_gestureArea.setVisibility(View.GONE);
            return;
        }
        if (state == GesturePanelState.HIDDEN) {
            this.button_nextPageRight.setVisibility(View.GONE);
            this.button_nextPageBottom.setVisibility(View.GONE);
            this.button_previousPage.setVisibility(View.GONE);
            this.button_panel.setVisibility(View.GONE);
            this.button_panelLeftCorner.setVisibility(View.GONE);
            this.button_panel.setText("");
            this.button_panelLeftCorner.setText("");
            this.button_panel.setBackgroundColor(getResources().getColor(R.color.transparent));
            this.button_panelLeftCorner.setBackgroundColor(getResources().getColor(R.color.transparent));
            this.frameLayout_gestureArea.setVisibility(View.GONE);
            return;
        }
        if (state == GesturePanelState.HINT) {
            this.button_nextPageRight.setVisibility(View.VISIBLE);
            this.button_nextPageBottom.setVisibility(View.VISIBLE);
            this.button_previousPage.setVisibility(View.VISIBLE);
            this.button_panel.setVisibility(View.VISIBLE);
            this.button_panelLeftCorner.setVisibility(View.VISIBLE);
            this.button_nextPageRight.setText(getResources().getString(R.string.comic_viewer_setting_panel_next_page_vertical));
            this.button_nextPageBottom.setText(getResources().getString(R.string.comic_viewer_setting_panel_next_page));
            this.button_previousPage.setText(getResources().getString(R.string.comic_viewer_setting_panel_previous_page_vertical));
            this.button_panel.setText(getResources().getString(R.string.comic_viewer_setting_panel_setting_menu));
            this.button_panelLeftCorner.setText(getResources().getString(R.string.comic_viewer_setting_panel_setting_menu));
            this.button_nextPageRight.setBackgroundColor(getResources().getColor(R.color.colorPrimaryDark));
            this.button_nextPageBottom.setBackgroundColor(getResources().getColor(R.color.colorPrimaryDark));
            this.button_previousPage.setBackgroundColor(getResources().getColor(R.color.colorPrimaryDark));
            this.button_panel.setBackgroundColor(getResources().getColor(R.color.green_transparent_30));
            this.button_panelLeftCorner.setBackgroundColor(getResources().getColor(R.color.green_transparent_30));
            this.frameLayout_gestureArea.setVisibility(View.VISIBLE);
        }
    }

    public void j(boolean z) {
        try {
            if (z) {
                Settings.System.putInt(getContentResolver(), "screen_brightness_mode", 1);
                this.checkBox_brightnessSystem.setText(getResources().getString(R.string.comic_viewer_setting_panel_brightness_auto));
            } else {
                Settings.System.putInt(getContentResolver(), "screen_brightness_mode", 0);
                this.checkBox_brightnessSystem.setText(getResources().getString(R.string.comic_viewer_setting_panel_brightness_manual));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.isSystemBrightness = z;
    }

    public void m(int i) {
        try {
            if (Settings.System.getInt(getContentResolver(), "screen_brightness_mode") == 1) {
                this.checkBox_brightnessSystem.setChecked(false);
            }
            Settings.System.putInt(getContentResolver(), "screen_brightness", i);
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.brightnessValue = i;
    }

    public void setNightModeEnabled(boolean enabled) {
        if (enabled) {
            this.frameLayout_nightModeMask.setVisibility(View.VISIBLE);
            this.button_nightMode.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, ContextCompat.getDrawable(getApplicationContext(), R.drawable.icon_comicviewer_nightfilter_on), (Drawable) null, (Drawable) null);
            this.button_nightMode.setTextColor(ContextCompat.getColor(this, R.color.colorPrimary));
            Toast.makeText(this, R.string.comic_viewer_toast_night_mode_on, 0).show();
        } else {
            this.frameLayout_nightModeMask.setVisibility(View.GONE);
            this.button_nightMode.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, ContextCompat.getDrawable(getApplicationContext(), R.drawable.ic_action_night), (Drawable) null, (Drawable) null);
            this.button_nightMode.setTextColor(ContextCompat.getColor(this, R.color.white));
        }
        this.isNightMode = enabled;
        e.d(this, this.isNightMode);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.picacomic.fregata.activities.ComicViewerActivity$24] */
    public void bO() {
        if (this.autoPagingInterval <= 0) {
            return;
        }
        bP();
        this.autoPagingTimer = new CountDownTimer(Long.MAX_VALUE, this.autoPagingInterval) { // from class: com.picacomic.fregata.activities.ComicViewerActivity.24
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                if (!ComicViewerActivity.this.advanceAutoPagingPage()) {
                    ComicViewerActivity.this.bP();
                }
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                ComicViewerActivity.this.bP();
            }
        }.start();
    }

    private boolean advanceAutoPagingPage() {
        if (this.pageList == null || this.currentPage >= g.ad(this.pageList.size())) {
            return false;
        }
        this.currentPage++;
        this.comicStatusChangeListener.b(this.currentPage, false);
        r(this.currentPage);
        return true;
    }

    public void bP() {
        if (this.autoPagingTimer != null) {
            this.autoPagingTimer.cancel();
            this.autoPagingTimer = null;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.isVolumeKeyPagingEnabled) {
            if (i == 25) {
                bR();
                return true;
            }
            if (i == 24) {
                bS();
                return true;
            }
        }
        if (i != 4) {
            return false;
        }
        onBackPressed();
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            this.linearLayout_horizontalPagingScrollbar.setVisibility(View.VISIBLE);
            this.linearLayout_verticalPagingScrollbar.setVisibility(View.GONE);
        } else if (configuration.orientation == 1) {
            this.linearLayout_horizontalPagingScrollbar.setVisibility(View.GONE);
            this.linearLayout_verticalPagingScrollbar.setVisibility(View.VISIBLE);
        }
    }

    @Override // com.picacomic.fregata.activities.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == REQUEST_WRITE_SETTINGS && iArr.length > 0) {
            if (iArr[0] == PackageManager.PERMISSION_GRANTED) {
                j(this.checkBox_brightnessSystem.isChecked());
            } else {
                Toast.makeText(this, R.string.comic_viewer_setting_panel_brightness_manual, Toast.LENGTH_SHORT).show();
            }
        }
    }

    public void n(int i) {
        String networkStatus = getNetworkStatusLabel();
        if (this.pageList != null) {
            int i2 = this.totalPages;
            if (g.ac(i) + 1 > this.pageList.size()) {
                this.textView_horizontalPage.setText("完/" + i2);
                this.textView_verticalPage.setText("完/" + i2);
                this.textView_page.setText("完/" + i2 + " " + networkStatus + " 電量:" + this.batteryLevelText);
                return;
            }
            this.textView_horizontalPage.setText((g.ac(i) + 1 + bU()) + "/" + i2);
            this.textView_verticalPage.setText((g.ac(i) + 1 + bU()) + "/" + i2);
            this.textView_page.setText("P." + (g.ac(i) + 1 + bU()) + "/" + i2 + " " + networkStatus + " 電量:" + this.batteryLevelText);
        }
    }

    private String getNetworkStatusLabel() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
            if (connectivityManager == null) {
                return "";
            }
            Network activeNetwork = connectivityManager.getActiveNetwork();
            NetworkCapabilities capabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            if (capabilities == null || !capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)) {
                return getString(R.string.network_status_no_network);
            }
            if (capabilities.hasTransport(NetworkCapabilities.TRANSPORT_WIFI)) {
                return getString(R.string.network_status_wifi);
            }
            if (capabilities.hasTransport(NetworkCapabilities.TRANSPORT_CELLULAR)) {
                if (this.shouldWarnMobileNetwork) {
                    AlertDialogCenter.usingMobileNetwork(this);
                    this.shouldWarnMobileNetwork = false;
                }
                return getString(R.string.network_status_mobile);
            }
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(this, "Cannot get NetworkStatus", Toast.LENGTH_SHORT).show();
        }
        return "";
    }

    public void o(int i) {
        int iAd = g.ad(i);
        this.seekBar_verticalPaging.setMax(iAd);
        this.seekBar_horizontalPaging.setMax(iAd);
    }

    public void p(int i) {
        this.button_nextEpisode.setVisibility(i);
        this.button_nextEpisode.setAlpha(1.0f);
        bQ();
    }

    public void q(int i) {
        this.button_previousEpisode.setVisibility(i);
        this.button_previousEpisode.setAlpha(1.0f);
        bQ();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.picacomic.fregata.activities.ComicViewerActivity$25] */
    public void bQ() {
        if (this.episodeButtonFadeTimer != null) {
            this.episodeButtonFadeTimer.cancel();
        }
        this.episodeButtonFadeTimer = new CountDownTimer(2000L, 2000L) { // from class: com.picacomic.fregata.activities.ComicViewerActivity.25
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (ComicViewerActivity.this.button_nextEpisode != null) {
                    ComicViewerActivity.this.button_nextEpisode.setAlpha(0.0f);
                }
                if (ComicViewerActivity.this.button_previousEpisode != null) {
                    ComicViewerActivity.this.button_previousEpisode.setAlpha(0.0f);
                }
            }
        }.start();
    }

    @Override // com.picacomic.fregata.a_pkg.d
    public void r(int i) {
        f.D(TAG, "Current Page = " + this.currentPage + " pageNumber = " + i);
        if (this.pageList != null) {
            if (this.isLandscape) {
                this.seekBar_verticalPaging.setProgress(i);
            } else {
                this.seekBar_horizontalPaging.setProgress(i);
            }
            n(i);
            this.currentPage = i;
            if (!this.hasMovedPastFirstLoadedPage && i != 0) {
                this.hasMovedPastFirstLoadedPage = true;
            }
            if (this.currentPage == g.ad(this.pageList.size())) {
                bL();
                q(View.GONE);
                if (this.currentPagingPage == this.totalPagingPages) {
                    p(View.VISIBLE);
                    return;
                }
                return;
            }
            if (this.hasMovedPastFirstLoadedPage && i == 0) {
                if (bT() > 0) {
                    bM();
                    return;
                } else {
                    q(View.VISIBLE);
                    p(View.GONE);
                    return;
                }
            }
            q(View.GONE);
            p(View.GONE);
        }
    }

    public void bR() {
        if (this.currentPage < g.ad(this.pageList.size())) {
            this.currentPage++;
            this.comicStatusChangeListener.b(this.currentPage, false);
            r(this.currentPage);
        }
    }

    public void bS() {
        if (this.currentPage > 0) {
            this.currentPage--;
            this.comicStatusChangeListener.b(this.currentPage, false);
            r(this.currentPage);
        }
    }

    public int bT() {
        return this.loadedPageOffset / hq;
    }

    public int bU() {
        return (this.loadedPageOffset / hq) * hq;
    }
}
