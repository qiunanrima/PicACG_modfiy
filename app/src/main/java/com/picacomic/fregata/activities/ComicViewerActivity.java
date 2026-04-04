package com.picacomic.fregata.activities;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.provider.Settings;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import androidx.appcompat.widget.Toolbar;
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
    public static int hq = 40;

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
    c hA;
    boolean hB;
    boolean hC;
    boolean hD;
    boolean hE;
    public int hF;
    public int hG;
    public int hH;
    public int hI;
    public int hJ;
    public ComicEpisodeObject hK;
    public String hL;
    int hM;
    int hN;
    int hO;
    int hP;
    boolean hQ;
    boolean hR;
    boolean hS;
    boolean hT;
    boolean hU;
    boolean hV;
    CountDownTimer hX;
    CountDownTimer hY;
    Call<GeneralResponse<ComicPagesResponse>> hZ;
    Animation hr;
    Animation hs;
    Animation ht;
    Animation hu;
    Animation hv;
    Animation hw;
    Animation hx;
    Animation hy;
    com.picacomic.fregata.a_pkg.c hz;
    Call<GeneralResponse<ComicEpisodeResponse>> ia;
    View.OnClickListener ib;
    View.OnClickListener ic;
    SeekBar.OnSeekBarChangeListener ie;

    /* JADX INFO: renamed from: if, reason: not valid java name */
    public ArrayList<ComicPageObject> f1if;
    ArrayList<ComicEpisodeObject> ig;

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
    String hW = "不明";
    private BroadcastReceiver ih = new BroadcastReceiver() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                int intExtra = intent.getIntExtra("level", 0);
                ComicViewerActivity.this.hW = String.valueOf(intExtra) + "%";
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
        
        this.button_autoPaging = findViewById(R.id.button_comic_viewer_auto_paging);
        this.button_comment = findViewById(R.id.button_comic_viewer_comment);
        this.button_dialogAutoPagingStart = findViewById(R.id.button_comic_viewer_dialog_auto_paging_start);
        this.button_download = findViewById(R.id.button_comic_viewer_download);
        this.button_hide = findViewById(R.id.button_comic_viewer_hide);
        this.button_hint = findViewById(R.id.button_comic_viewer_hint);
        this.button_nextEpisode = findViewById(R.id.button_comic_viewer_next_episode);
        this.button_nextPageBottom = findViewById(R.id.button_comic_viewer_next_page_bottom);
        this.button_nextPageRight = findViewById(R.id.button_comic_viewer_next_page_right);
        this.button_nightMode = findViewById(R.id.button_comic_viewer_night_mode);
        this.button_panel = findViewById(R.id.button_comic_viewer_panel);
        this.button_panelLeftCorner = findViewById(R.id.button_comic_viewer_panel_left_corner);
        this.button_previousEpisode = findViewById(R.id.button_comic_viewer_previous_episode);
        this.button_previousPage = findViewById(R.id.button_comic_viewer_previous_page);
        this.button_screenOrientation = findViewById(R.id.button_comic_viewer_screen_orientation);
        this.button_scrollOrientation = findViewById(R.id.button_comic_viewer_scroll_orientation);
        this.button_selectEpisode = findViewById(R.id.button_comic_viewer_select_episode);
        this.button_setting = findViewById(R.id.button_comic_viewer_setting);
        this.button_share = findViewById(R.id.button_comic_viewer_share);
        this.button_twoPageViewMode = findViewById(R.id.button_comic_viewer_two_page_view_mode);
        this.checkBox_brightnessSystem = findViewById(R.id.checkBox_comic_viewer_system_brightness);
        this.frameLayout_gestureArea = findViewById(R.id.frameLayout_comic_viewer_gesture_area);
        this.frameLayout_nightModeMask = this.binding.frameLayoutComicViewerNightModeMask;
        this.gridView_episodeDialog = this.binding.gridViewComicViewerDialogSelectEpisode;
        this.imageButton_back = findViewById(R.id.imageButton_comic_viewer_back);
        this.linearLayout_bottomPanel = findViewById(R.id.linearLayout_comic_viewer_bottom_panel);
        this.linearLayout_dialogAutoPaging = findViewById(R.id.linearLayout_comic_viewer_dialog_auto_paging);
        this.linearLayout_horizontalPagingScrollbar = findViewById(R.id.linearLayout_comic_viewer_horizontal_paging_scrollbar);
        this.linearLayout_rightPanel = findViewById(R.id.linearLayout_comic_viewer_right_panel);
        this.linearLayout_verticalPagingScrollbar = findViewById(R.id.linearLayout_comic_viewer_vertical_paging_scrollbar);
        this.relativeLayout_leftPanel = findViewById(R.id.relativeLayout_comic_viewer_left_panel);
        this.relativeLayout_toolbar = findViewById(R.id.relativeLayout_comic_viewer_toolbar);
        this.seekBar_dialogAutoPaging = findViewById(R.id.seekBar_comic_viewer_dialog_auto_paging);
        this.seekBar_horizontalPaging = findViewById(R.id.seekBar_comic_viewer_horizontal_page);
        this.seekBar_verticalPaging = findViewById(R.id.seekBar_comic_viewer_vertical_page);
        this.textView_dialogAutoPagingTitle = findViewById(R.id.textView_comic_viewer_dialog_auto_paging_title);
        this.textView_horizontalPage = findViewById(R.id.textView_comic_viewer_horizontal_page);
        this.textView_page = this.binding.textViewComicViewerPage;
        this.textView_title = findViewById(R.id.textView_comic_viewer_title);
        this.textView_verticalPage = findViewById(R.id.textView_comic_viewer_vertical_page);
        this.verticalSeekBar_brightness = findViewById(R.id.verticalSeekBar_comic_viewer_brightness);

        setSupportActionBar(findViewById(R.id.toolbar));
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
        this.hT = e.Q(this);
        this.hB = e.M(this);
        this.hC = e.N(this);
        this.hE = e.L(this);
        this.hM = e.O(this);
        this.hQ = false;
        this.hR = false;
        this.hS = false;
        this.hF = 0;
        this.hG = 1;
        this.hI = 0;
        this.hJ = 1;
        this.hP = 0;
        this.hU = false;
        this.hV = true;
        this.comicId = getIntent().getStringExtra("EXTRA_KEY_COMIC_ID");
        this.hL = getIntent().getStringExtra("EXTRA_KEY_COMIC_TITLE");
        this.episodeOrder = getIntent().getIntExtra("EXTRA_KEY_LAST_VIEW_EPISODE_ORDER", 1);
        this.episodeTotal = getIntent().getIntExtra("EXTRA_KEY_EPISODE_TOTAL", 1);
        this.currentPage = getIntent().getIntExtra("EXTRA_KEY_LAST_VIEW_PAGE", 0);
        boolean booleanExtra = getIntent().getBooleanExtra("EXTRA_KEY_VIEW_FROM_RECORD", false);
        this.hN = 8;
        DbComicViewRecordObject dbComicViewRecordObjectAx = b.ax(this.comicId);
        if (dbComicViewRecordObjectAx != null && booleanExtra) {
            this.hP = dbComicViewRecordObjectAx.getPage();
            this.episodeOrder = dbComicViewRecordObjectAx.getEpisodeOrder();
            this.episodeTotal = dbComicViewRecordObjectAx.getEpisodeTotal();
            this.hF = bT();
            this.hG = this.hF + 1;
            this.hU = true;
        }
        bK();
        bJ();
    }

    public void bF() {
        if (this.ig == null) {
            this.ig = new ArrayList<>();
        }
        this.hA = new c(this, this.ig);
        this.gridView_episodeDialog.setAdapter((ListAdapter) this.hA);
        this.gridView_episodeDialog.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.12
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (ComicViewerActivity.this.ig == null || ComicViewerActivity.this.ig.size() <= i) {
                    return;
                }
                ComicViewerActivity.this.episodeOrder = ComicViewerActivity.this.ig.get(i).getOrder();
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
        this.imageButton_back.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.26
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicViewerActivity.this.onBackPressed();
            }
        });
        this.button_hint.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.27
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicViewerActivity.this.k(8);
                ComicViewerActivity.this.l(0);
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
        this.button_screenOrientation.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.30
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicViewerActivity.this.hB) {
                    ComicViewerActivity.this.hB = false;
                    ComicViewerActivity.this.h(false);
                } else {
                    ComicViewerActivity.this.hB = true;
                    ComicViewerActivity.this.h(true);
                }
                e.e(ComicViewerActivity.this, ComicViewerActivity.this.hB);
            }
        });
        this.button_scrollOrientation.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.31
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicViewerActivity.this.hC) {
                    ComicViewerActivity.this.hC = false;
                    ComicViewerActivity.this.i(false);
                } else {
                    ComicViewerActivity.this.hC = true;
                    ComicViewerActivity.this.i(true);
                }
                e.f(ComicViewerActivity.this, ComicViewerActivity.this.hC);
            }
        });
        this.button_autoPaging.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicViewerActivity.this.linearLayout_dialogAutoPaging.getVisibility() == 0) {
                    ComicViewerActivity.this.linearLayout_dialogAutoPaging.setVisibility(8);
                    return;
                }
                if (ComicViewerActivity.this.gridView_episodeDialog.getVisibility() == 0) {
                    ComicViewerActivity.this.gridView_episodeDialog.setVisibility(8);
                }
                ComicViewerActivity.this.linearLayout_dialogAutoPaging.setVisibility(0);
            }
        });
        this.button_dialogAutoPagingStart.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicViewerActivity.this.k(8);
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
                ComicViewerActivity.this.k(8);
            }
        });
        this.button_selectEpisode.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicViewerActivity.this.gridView_episodeDialog.getVisibility() == 0) {
                    ComicViewerActivity.this.gridView_episodeDialog.setVisibility(8);
                    return;
                }
                if (ComicViewerActivity.this.linearLayout_dialogAutoPaging.getVisibility() == 0) {
                    ComicViewerActivity.this.linearLayout_dialogAutoPaging.setVisibility(8);
                }
                ComicViewerActivity.this.gridView_episodeDialog.setVisibility(0);
                ComicViewerActivity.this.bN();
            }
        });
        this.button_nightMode.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicViewerActivity.this.hE) {
                    ComicViewerActivity.this.k(false);
                } else {
                    ComicViewerActivity.this.k(true);
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
        this.ib = new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicViewerActivity.this.k(0);
                ComicViewerActivity.this.bP();
            }
        };
        this.button_panel.setOnClickListener(this.ib);
        this.button_panelLeftCorner.setOnClickListener(this.ib);
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
        this.ie = new SeekBar.OnSeekBarChangeListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.13
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
                    ComicViewerActivity.this.hz.b(this.ik, false);
                    ComicViewerActivity.this.r(ComicViewerActivity.this.currentPage);
                }
            }
        };
        this.seekBar_horizontalPaging.setOnSeekBarChangeListener(this.ie);
        this.seekBar_verticalPaging.setOnSeekBarChangeListener(this.ie);
        this.seekBar_dialogAutoPaging.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.14
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                ComicViewerActivity.this.hM = (i * 100) + 1000;
                e.b((Context) ComicViewerActivity.this, ComicViewerActivity.this.hM);
                TextView textView = ComicViewerActivity.this.textView_dialogAutoPagingTitle;
                textView.setText(ComicViewerActivity.this.getResources().getString(R.string.comic_viewer_setting_panel_auto_paging) + " 【 " + String.format("%.1f", Float.valueOf(ComicViewerActivity.this.hM / 1000.0f)) + ComicViewerActivity.this.getResources().getString(R.string.second) + " 】");
            }
        });
        this.ic = new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicViewerActivity.this.bR();
            }
        };
        this.button_nextPageBottom.setOnClickListener(this.ic);
        this.button_nextPageRight.setOnClickListener(this.ic);
        this.button_nextEpisode.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ComicViewerActivity.this.episodeOrder < ComicViewerActivity.this.episodeTotal) {
                    ComicViewerActivity.this.episodeOrder++;
                    ComicViewerActivity.this.b(ComicViewerActivity.this.episodeOrder, 0, true);
                } else {
                    ComicViewerActivity.this.p(8);
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
                    ComicViewerActivity.this.q(8);
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
        this.frameLayout_gestureArea.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.19
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ComicViewerActivity.this.l(4);
                e.c((Context) ComicViewerActivity.this, false);
            }
        });
    }

    public void bG() {
        this.currentPage = 0;
        this.hF = 0;
        this.hG = 1;
        this.hP = 0;
        this.hS = false;
        this.hQ = false;
        this.hU = false;
    }

    public void bH() {
        k(8);
        h(this.hB);
        i(this.hC);
        k(this.hE);
        if (this.hM + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED < 0) {
            this.seekBar_dialogAutoPaging.setProgress(0);
        } else {
            this.seekBar_dialogAutoPaging.setProgress((this.hM + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED) / 100);
        }
        if (e.K(this)) {
            k(8);
            l(0);
        } else {
            k(8);
            l(4);
        }
    }

    public void bI() {
        p(8);
        q(8);
        n(this.currentPage);
        if (this.hK != null) {
            this.textView_title.setText("〖" + this.hK.getTitle() + "〗 ");
            SpannableString spannableString = new SpannableString(this.hL);
            spannableString.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.white)), 0, spannableString.length(), 33);
            this.textView_title.append(spannableString);
        }
    }

    public void bJ() {
        if (Build.VERSION.SDK_INT < 21 || ContextCompat.checkSelfPermission(this, "android.permission.WRITE_SETTINGS") == 0) {
            return;
        }
        ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_SETTINGS"}, 2001);
        if (ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.WRITE_SETTINGS")) {
            Toast.makeText(this, "To ", 0).show();
        } else {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_SETTINGS"}, 2001);
        }
    }

    public void bK() {
        this.hr = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_left_enter);
        this.hs = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_left_exit);
        this.ht = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_right_enter);
        this.hu = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_right_exit);
        this.hv = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_top_enter);
        this.hw = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_top_exit);
        this.hx = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_bottom_enter);
        this.hy = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_bottom_exit);
    }

    @Override // com.picacomic.fregata.activities.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        bK();
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
        if (this.hK != null && this.hK.getTitle() != null) {
            String title = this.hK.getTitle();
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
        if (this.hK != null && this.hK.getTitle() != null) {
            title = this.hK.getTitle();
        }
        com.picacomic.fregata.utils.b.a(new DbComicViewRecordObject(this.comicId, bU() + this.currentPage, title, this.episodeOrder, this.episodeTotal, System.currentTimeMillis()));
        f.D(TAG, "Save View Record: ");
        super.onSaveInstanceState(bundle);
    }

    @Override // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        bP();
        if (this.hZ != null) {
            this.hZ.cancel();
        }
        if (this.ia != null) {
            this.ia.cancel();
        }
        if (this.hx != null) {
            this.hx.cancel();
        }
        if (this.hy != null) {
            this.hy.cancel();
        }
        if (this.hr != null) {
            this.hr.cancel();
        }
        if (this.hs != null) {
            this.hs.cancel();
        }
        if (this.ht != null) {
            this.ht.cancel();
        }
        if (this.hu != null) {
            this.hu.cancel();
        }
        if (this.hv != null) {
            this.hv.cancel();
        }
        if (this.hw != null) {
            this.hw.cancel();
        }
        if (this.hY != null) {
            this.hY.cancel();
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
            c(this.episodeOrder, this.hF, false);
        } else {
            d(this.episodeOrder, this.hF, false);
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
                this.f1if.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        List listFind = DownloadComicEpisodeObject.find(DownloadComicEpisodeObject.class, "comic_id = ? and episode_order = ?", this.comicId, i + "");
        if (listFind != null && listFind.size() > 0) {
            this.hK = ((DownloadComicEpisodeObject) listFind.get(0)).getComicEpisodeObject();
            this.hH = ((DownloadComicEpisodeObject) listFind.get(0)).getTotal();
            if (this.hH < hq) {
                this.hG = 1;
            } else if (this.hH % hq == 0) {
                this.hG = this.hH / hq;
            } else {
                this.hG = (this.hH / hq) + 1;
            }
            List listFindWithQuery = null;
            if (this.hG > i2) {
                listFindWithQuery = DownloadComicPageObject.findWithQuery(DownloadComicPageObject.class, "SELECT * FROM download_comic_page_object WHERE episode_id = ? LIMIT ? OFFSET ?", this.hK.getEpisodeId(), hq + "", (hq * i2) + "");
                f.D(TAG, "SIZE = " + listFindWithQuery.size() + "LIMIT = " + hq + " OFFSET = " + (hq * i2));
                this.hF = i2 + 1;
            }
            if (this.f1if == null) {
                this.f1if = new ArrayList<>();
            }
            if (listFindWithQuery != null && listFindWithQuery.size() > 0) {
                ArrayList<ComicPageObject> arrayList = new ArrayList<>();
                for (int i3 = 0; i3 < listFindWithQuery.size(); i3++) {
                    ComicPageObject comicPageObject = ((DownloadComicPageObject) listFindWithQuery.get(i3)).getComicPageObject();
                    this.f1if.add(comicPageObject);
                    arrayList.add(comicPageObject);
                }
                this.hz.a(arrayList, this.hP, this.hU, z);
                if (this.hU) {
                    this.hU = false;
                }
                o(this.f1if.size());
                bI();
            } else {
                f.D(TAG, "Load DownloadComicPageObjectList DB FAILED");
            }
        } else {
            f.D(TAG, "Load DownloadComicEpisodeObject DB FAILED");
        }
        f.D(TAG, "current Page = " + this.currentPage);
        f.D(TAG, "Comic Paging Page = " + this.hF);
        f.D(TAG, "Comic Paging Page Total = " + this.hG);
        f.D(TAG, "jumpingPage = " + this.hP);
        f.D(TAG, "episodeOrder = " + this.episodeOrder);
        f.D(TAG, "episodeTotal = " + this.episodeTotal);
        f.D(TAG, "episodePagingPage = " + this.hI);
        f.D(TAG, "episodePagingPageTotal = " + this.hJ);
    }

    public void d(int i, int i2, final boolean z) {
        f.D(TAG, "Call Comic Page ?");
        if (i2 >= this.hG || this.hR) {
            return;
        }
        this.hR = true;
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
        this.hZ = dVar.dO().a(e.z(this), this.comicId, i, i3);
        this.hZ.enqueue(new Callback<GeneralResponse<ComicPagesResponse>>() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.20
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<ComicPagesResponse>> call, Response<GeneralResponse<ComicPagesResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.getPages().toString());
                    if (response.body().data != null && response.body().data.getPages().getDocs() != null) {
                        ComicViewerActivity.hq = response.body().data.getPages().getLimit();
                        if (z) {
                            ComicViewerActivity.this.bG();
                            ComicViewerActivity.this.f1if.clear();
                        }
                        ComicViewerActivity.this.hH = response.body().data.getPages().getTotal();
                        ComicViewerActivity.this.hF = response.body().data.getPages().getPage();
                        ComicViewerActivity.this.hG = response.body().data.getPages().getPages();
                        ComicViewerActivity.this.hK = response.body().data.getEp();
                        if (ComicViewerActivity.this.f1if == null) {
                            ComicViewerActivity.this.f1if = new ArrayList<>();
                        }
                        for (int i4 = 0; i4 < response.body().data.getPages().getDocs().size(); i4++) {
                            ComicViewerActivity.this.f1if.add(response.body().data.getPages().getDocs().get(i4));
                        }
                        f.D(ComicViewerActivity.TAG, "current Page = " + ComicViewerActivity.this.currentPage);
                        f.D(ComicViewerActivity.TAG, "Comic Paging Page = " + ComicViewerActivity.this.hF);
                        f.D(ComicViewerActivity.TAG, "Comic Paging Page Total = " + ComicViewerActivity.this.hG);
                        f.D(ComicViewerActivity.TAG, "jumpingPage = " + ComicViewerActivity.this.hP);
                        f.D(ComicViewerActivity.TAG, "episodeOrder = " + ComicViewerActivity.this.episodeOrder);
                        f.D(ComicViewerActivity.TAG, "episodeTotal = " + ComicViewerActivity.this.episodeTotal);
                        f.D(ComicViewerActivity.TAG, "episodePagingPage = " + ComicViewerActivity.this.hI);
                        f.D(ComicViewerActivity.TAG, "episodePagingPageTotal = " + ComicViewerActivity.this.hJ);
                        ComicViewerActivity.this.hz.a(response.body().data.getPages().getDocs(), ComicViewerActivity.this.hP, ComicViewerActivity.this.hU, z);
                        if (ComicViewerActivity.this.hU) {
                            ComicViewerActivity.this.hU = false;
                        }
                        ComicViewerActivity.this.o(ComicViewerActivity.this.f1if.size());
                        ComicViewerActivity.this.bI();
                    }
                } else {
                    try {
                        new com.picacomic.fregata.b.c(ComicViewerActivity.this, response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ComicViewerActivity.this.hR = false;
                ComicViewerActivity.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<ComicPagesResponse>> call, Throwable th) {
                ComicViewerActivity.this.hR = false;
                th.printStackTrace();
                ComicViewerActivity.this.bC();
            }
        });
    }

    public void bM() {
        f.D(TAG, "Call Comic Page ?");
        if (bT() <= 0 || this.hR) {
            return;
        }
        this.hR = true;
        C(getResources().getString(R.string.loading_comic_viewer));
        this.hZ = new com.picacomic.fregata.b.d(this).dO().a(e.z(this), this.comicId, this.episodeOrder, bT());
        this.hZ.enqueue(new Callback<GeneralResponse<ComicPagesResponse>>() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.21
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<ComicPagesResponse>> call, Response<GeneralResponse<ComicPagesResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.getPages().toString());
                    if (response.body().data != null && response.body().data.getPages().getDocs() != null) {
                        ComicViewerActivity.hq = response.body().data.getPages().getLimit();
                        ComicViewerActivity.this.hH = response.body().data.getPages().getTotal();
                        ComicViewerActivity.this.f1if.addAll(0, response.body().data.getPages().getDocs());
                        ComicViewerActivity.this.hP -= ComicViewerActivity.hq;
                        f.D(ComicViewerActivity.TAG, "current Page = " + ComicViewerActivity.this.currentPage);
                        f.D(ComicViewerActivity.TAG, "Comic Paging Page = " + ComicViewerActivity.this.hF);
                        f.D(ComicViewerActivity.TAG, "Comic Paging Page Total = " + ComicViewerActivity.this.hG);
                        f.D(ComicViewerActivity.TAG, "jumpingPage = " + ComicViewerActivity.this.hP);
                        f.D(ComicViewerActivity.TAG, "episodeOrder = " + ComicViewerActivity.this.episodeOrder);
                        f.D(ComicViewerActivity.TAG, "episodeTotal = " + ComicViewerActivity.this.episodeTotal);
                        f.D(ComicViewerActivity.TAG, "episodePagingPage = " + ComicViewerActivity.this.hI);
                        f.D(ComicViewerActivity.TAG, "episodePagingPageTotal = " + ComicViewerActivity.this.hJ);
                        ComicViewerActivity.this.hz.a(response.body().data.getPages().getDocs(), ComicViewerActivity.this.hP, false, false);
                        ComicViewerActivity.this.o(ComicViewerActivity.this.f1if.size());
                        ComicViewerActivity.this.bI();
                    }
                } else {
                    try {
                        new com.picacomic.fregata.b.c(ComicViewerActivity.this, response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ComicViewerActivity.this.hR = false;
                ComicViewerActivity.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<ComicPagesResponse>> call, Throwable th) {
                ComicViewerActivity.this.hR = false;
                th.printStackTrace();
                ComicViewerActivity.this.bC();
            }
        });
    }

    public void bN() {
        if (this.hI < this.hJ) {
            bA();
            this.ia = new com.picacomic.fregata.b.d(this).dO().b(e.z(this), this.comicId, this.hI + 1);
            this.ia.enqueue(new Callback<GeneralResponse<ComicEpisodeResponse>>() { // from class: com.picacomic.fregata.activities.ComicViewerActivity.22
                @Override // retrofit2.Callback
                public void onResponse(Call<GeneralResponse<ComicEpisodeResponse>> call, Response<GeneralResponse<ComicEpisodeResponse>> response) {
                    if (response.code() == 200) {
                        if (response.body().data != null && response.body().data.getEps() != null && response.body().data.getEps().getDocs() != null && response.body().data.getEps().getDocs().size() > 0) {
                            ComicViewerActivity.this.episodeTotal = response.body().data.getEps().getTotal();
                            ComicViewerActivity.this.hI = response.body().data.getEps().getPage();
                            ComicViewerActivity.this.hJ = response.body().data.getEps().getPages();
                            for (int i = 0; i < response.body().data.getEps().getDocs().size(); i++) {
                                ComicViewerActivity.this.ig.add(response.body().data.getEps().getDocs().get(i));
                            }
                            ComicViewerActivity.this.hA.notifyDataSetChanged();
                            f.D(ComicViewerActivity.TAG, ComicViewerActivity.this.ig.size() + "");
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
        if (this.hz != null) {
            if (!z) {
                setRequestedOrientation(6);
                if (this.hz != null) {
                    this.hz.M(6);
                    return;
                }
                return;
            }
            setRequestedOrientation(7);
            if (this.hz != null) {
                this.hz.M(7);
            }
        }
    }

    public void i(boolean z) {
        if (this.hz != null) {
            this.hz.B(z);
            if (z) {
                this.button_scrollOrientation.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, ContextCompat.getDrawable(getApplicationContext(), R.drawable.ic_action_flip), (Drawable) null, (Drawable) null);
            } else {
                this.button_scrollOrientation.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, ContextCompat.getDrawable(getApplicationContext(), R.drawable.ic_action_flip_vert), (Drawable) null, (Drawable) null);
            }
        }
    }

    public void a(com.picacomic.fregata.a_pkg.c cVar) {
        this.hz = cVar;
    }

    public void k(int i) {
        bK();
        this.relativeLayout_leftPanel.setVisibility(i);
        this.linearLayout_rightPanel.setVisibility(i);
        this.relativeLayout_toolbar.setVisibility(i);
        this.linearLayout_bottomPanel.setVisibility(i);
        if (i == 0) {
            if (!e.x(this)) {
                this.relativeLayout_leftPanel.startAnimation(this.hr);
                this.linearLayout_rightPanel.startAnimation(this.ht);
                this.relativeLayout_toolbar.startAnimation(this.hv);
                this.linearLayout_bottomPanel.startAnimation(this.hx);
            }
            l(8);
            return;
        }
        if (!e.x(this)) {
            this.relativeLayout_leftPanel.startAnimation(this.hs);
            this.linearLayout_rightPanel.startAnimation(this.hu);
            this.relativeLayout_toolbar.startAnimation(this.hw);
            this.linearLayout_bottomPanel.startAnimation(this.hy);
        }
        this.gridView_episodeDialog.setVisibility(8);
        this.linearLayout_dialogAutoPaging.setVisibility(8);
        l(4);
    }

    public void l(int i) {
        if (i == 4) {
            this.button_nextPageRight.setVisibility(0);
            this.button_nextPageBottom.setVisibility(0);
            this.button_previousPage.setVisibility(0);
            this.button_panel.setVisibility(0);
            this.button_panelLeftCorner.setVisibility(0);
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
            this.frameLayout_gestureArea.setVisibility(8);
            return;
        }
        if (i == 8) {
            this.button_nextPageRight.setVisibility(8);
            this.button_nextPageBottom.setVisibility(8);
            this.button_previousPage.setVisibility(8);
            this.button_panel.setVisibility(8);
            this.button_panelLeftCorner.setVisibility(8);
            this.button_panel.setText("");
            this.button_panelLeftCorner.setText("");
            this.button_panel.setBackgroundColor(getResources().getColor(R.color.transparent));
            this.button_panelLeftCorner.setBackgroundColor(getResources().getColor(R.color.transparent));
            this.frameLayout_gestureArea.setVisibility(8);
            return;
        }
        if (i == 0) {
            this.button_nextPageRight.setVisibility(0);
            this.button_nextPageBottom.setVisibility(0);
            this.button_previousPage.setVisibility(0);
            this.button_panel.setVisibility(0);
            this.button_panelLeftCorner.setVisibility(0);
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
            this.frameLayout_gestureArea.setVisibility(0);
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
        this.hD = z;
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
        this.hO = i;
    }

    public void k(boolean z) {
        if (z) {
            this.frameLayout_nightModeMask.setVisibility(0);
            this.button_nightMode.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, ContextCompat.getDrawable(getApplicationContext(), R.drawable.icon_comicviewer_nightfilter_on), (Drawable) null, (Drawable) null);
            this.button_nightMode.setTextColor(ContextCompat.getColor(this, R.color.colorPrimary));
            Toast.makeText(this, R.string.comic_viewer_toast_night_mode_on, 0).show();
        } else {
            this.frameLayout_nightModeMask.setVisibility(8);
            this.button_nightMode.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, ContextCompat.getDrawable(getApplicationContext(), R.drawable.ic_action_night), (Drawable) null, (Drawable) null);
            this.button_nightMode.setTextColor(ContextCompat.getColor(this, R.color.white));
        }
        this.hE = z;
        e.d(this, this.hE);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.picacomic.fregata.activities.ComicViewerActivity$24] */
    public void bO() {
        if (this.hM > 0) {
            this.hX = new CountDownTimer(this.hM, this.hM) { // from class: com.picacomic.fregata.activities.ComicViewerActivity.24
                @Override // android.os.CountDownTimer
                public void onTick(long j) {
                }

                @Override // android.os.CountDownTimer
                public void onFinish() {
                    if (ComicViewerActivity.this.currentPage < g.ad(ComicViewerActivity.this.f1if.size())) {
                        ComicViewerActivity.this.currentPage++;
                        ComicViewerActivity.this.hz.b(ComicViewerActivity.this.currentPage, false);
                        ComicViewerActivity.this.r(ComicViewerActivity.this.currentPage);
                        ComicViewerActivity.this.bO();
                    }
                }
            }.start();
        }
    }

    public void bP() {
        if (this.hX != null) {
            this.hX.cancel();
            this.hX = null;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.hT) {
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
            this.linearLayout_horizontalPagingScrollbar.setVisibility(0);
            this.linearLayout_verticalPagingScrollbar.setVisibility(8);
        } else if (configuration.orientation == 1) {
            this.linearLayout_horizontalPagingScrollbar.setVisibility(8);
            this.linearLayout_verticalPagingScrollbar.setVisibility(0);
        }
    }

    @Override // com.picacomic.fregata.activities.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        if (i == 2001 && iArr.length > 0) {
            int i2 = iArr[0];
        }
    }

    public void n(int i) {
        String string;
        String string2;
        string = "";
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService("connectivity");
            boolean zIsConnectedOrConnecting = connectivityManager.getNetworkInfo(0).isConnectedOrConnecting();
            boolean zIsConnectedOrConnecting2 = connectivityManager.getNetworkInfo(1).isConnectedOrConnecting();
            System.out.println(zIsConnectedOrConnecting + " net " + zIsConnectedOrConnecting2);
            if (!zIsConnectedOrConnecting && !zIsConnectedOrConnecting2) {
                string2 = getString(R.string.network_status_no_network);
            } else {
                string = zIsConnectedOrConnecting2 ? getString(R.string.network_status_wifi) : "";
                if (zIsConnectedOrConnecting) {
                    string2 = getString(R.string.network_status_mobile);
                    try {
                        if (this.hV) {
                            AlertDialogCenter.usingMobileNetwork(this);
                            this.hV = false;
                        }
                    } catch (Exception e) {
                        e = e;
                        string = string2;
                        e.printStackTrace();
                        Toast.makeText(this, "Cannot get NetworkInfo", 0).show();
                    }
                } else {
                    string2 = string;
                }
            }
            string = string2;
        } catch (Exception e2) {
            Exception e = e2;
        }
        if (this.f1if != null) {
            int i2 = this.hH;
            if (g.ac(i) + 1 > this.f1if.size()) {
                this.textView_horizontalPage.setText("完/" + i2);
                this.textView_verticalPage.setText("完/" + i2);
                this.textView_page.setText("完/" + i2 + " " + string + " 電量:" + this.hW);
                return;
            }
            this.textView_horizontalPage.setText((g.ac(i) + 1 + bU()) + "/" + i2);
            this.textView_verticalPage.setText((g.ac(i) + 1 + bU()) + "/" + i2);
            this.textView_page.setText("P." + (g.ac(i) + 1 + bU()) + "/" + i2 + " " + string + " 電量:" + this.hW);
        }
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
        if (this.hY != null) {
            this.hY.cancel();
        }
        this.hY = new CountDownTimer(2000L, 2000L) { // from class: com.picacomic.fregata.activities.ComicViewerActivity.25
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
        if (this.f1if != null) {
            if (this.hB) {
                this.seekBar_verticalPaging.setProgress(i);
            } else {
                this.seekBar_horizontalPaging.setProgress(i);
            }
            n(i);
            this.currentPage = i;
            if (!this.hQ && i != 0) {
                this.hQ = true;
            }
            if (this.currentPage == g.ad(this.f1if.size())) {
                bL();
                q(8);
                if (this.hF == this.hG) {
                    p(0);
                    return;
                }
                return;
            }
            if (this.hQ && i == 0) {
                if (bT() > 0) {
                    bM();
                    return;
                } else {
                    q(0);
                    p(8);
                    return;
                }
            }
            q(8);
            p(8);
        }
    }

    public void bR() {
        if (this.currentPage < g.ad(this.f1if.size())) {
            this.currentPage++;
            this.hz.b(this.currentPage, false);
            r(this.currentPage);
        }
    }

    public void bS() {
        if (this.currentPage > 0) {
            this.currentPage--;
            this.hz.b(this.currentPage, false);
            r(this.currentPage);
        }
    }

    public int bT() {
        return this.hP / hq;
    }

    public int bU() {
        return (this.hP / hq) * hq;
    }
}
