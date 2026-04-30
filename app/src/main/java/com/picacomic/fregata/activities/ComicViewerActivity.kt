package com.picacomic.fregata.activities

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.pm.PackageManager
import android.content.res.Configuration
import android.graphics.drawable.Drawable
import android.media.MediaPlayer
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.CountDownTimer
import android.provider.Settings
import android.text.SpannableString
import android.text.style.ForegroundColorSpan
import android.view.KeyEvent
import android.view.View
import android.view.animation.Animation
import android.view.animation.AnimationUtils
import android.widget.AbsListView
import android.widget.AdapterView
import android.widget.AdapterView.OnItemClickListener
import android.widget.Button
import android.widget.CheckBox
import android.widget.CompoundButton
import android.widget.FrameLayout
import android.widget.GridView
import android.widget.ImageButton
import android.widget.LinearLayout
import android.widget.ListAdapter
import android.widget.RelativeLayout
import android.widget.SeekBar
import android.widget.SeekBar.OnSeekBarChangeListener
import android.widget.TextView
import android.widget.Toast
import androidx.core.app.NotificationManagerCompat
import androidx.core.content.ContextCompat
import com.picacomic.fregata.R
import com.picacomic.fregata.adapters.c
import com.picacomic.fregata.compose.screens.ComicViewerComposeHostView
import com.picacomic.fregata.compose.screens.ComicViewerControlsOverlayView
import com.picacomic.fregata.databinding.ActivityComicViewerBinding
import com.picacomic.fregata.objects.ComicEpisodeObject
import com.picacomic.fregata.objects.ComicPageObject
import com.picacomic.fregata.objects.databaseTable.DbComicViewRecordObject
import com.picacomic.fregata.objects.databaseTable.DownloadComicEpisodeObject
import com.picacomic.fregata.objects.databaseTable.DownloadComicPageObject
import com.picacomic.fregata.objects.responses.DataClass.ComicEpisodeResponse.ComicEpisodeResponse
import com.picacomic.fregata.objects.responses.DataClass.ComicPageResponse.ComicPagesResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.utils.b
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.f
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter
import com.picacomic.fregata.utils.views.VerticalSeekBar
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

/* JADX INFO: loaded from: classes.dex */
class ComicViewerActivity : BaseActivity(), com.picacomic.fregata.a_pkg.d {
    private enum class GesturePanelState {
        HINT,
        TRANSPARENT,
        HIDDEN
    }

    var binding: ActivityComicViewerBinding? = null
    var comicViewerHostView: ComicViewerComposeHostView? = null
    var comicViewerControlsOverlayView: ComicViewerControlsOverlayView? = null
    var button_autoPaging: Button? = null
    var button_comment: Button? = null
    var button_dialogAutoPagingStart: Button? = null
    var button_download: Button? = null
    var button_hide: Button? = null
    var button_hint: Button? = null
    var button_nextEpisode: Button? = null
    var button_nextPageBottom: Button? = null
    var button_nextPageRight: Button? = null
    var button_nightMode: Button? = null
    var button_panel: Button? = null
    var button_panelLeftCorner: Button? = null
    var button_previousEpisode: Button? = null
    var button_previousPage: Button? = null
    var button_screenOrientation: Button? = null
    var button_scrollOrientation: Button? = null
    var button_selectEpisode: Button? = null
    var button_setting: Button? = null
    var button_share: Button? = null
    var button_twoPageViewMode: Button? = null
    var checkBox_brightnessSystem: CheckBox? = null
    var comicId: String? = null
    var currentPage: Int = 0
    var episodeOrder: Int = 0
    var episodeTotal: Int = 0

    var frameLayout_gestureArea: FrameLayout? = null
    var frameLayout_nightModeMask: FrameLayout? = null
    var gridView_episodeDialog: GridView? = null
    var episodeAdapter: c? = null
    var isLandscape: Boolean = false
    var isVerticalScroll: Boolean = false
    var isSystemBrightness: Boolean = false
    var isNightMode: Boolean = false
    var currentPagingPage: Int = 0
    var totalPagingPages: Int = 0
    var totalPages: Int = 0
    var currentEpisodePagingPage: Int = 0
    var totalEpisodePagingPages: Int = 0
    var currentEpisode: ComicEpisodeObject? = null
    var comicTitle: String? = null
    var autoPagingInterval: Int = 0
    var brightnessValue: Int = 0
    var loadedPageOffset: Int = 0
    var hasMovedPastFirstLoadedPage: Boolean = false
    var isLoading: Boolean = false
    var isVolumeKeyPagingEnabled: Boolean = false
    var shouldRestoreRecordPosition: Boolean = false
    var shouldWarnMobileNetwork: Boolean = false
    var autoPagingTimer: CountDownTimer? = null
    var episodeButtonFadeTimer: CountDownTimer? = null
    var comicPagesCall: Call<GeneralResponse<ComicPagesResponse?>?>? = null
    var leftPanelEnterAnimation: Animation? = null
    var leftPanelExitAnimation: Animation? = null
    var rightPanelEnterAnimation: Animation? = null
    var rightPanelExitAnimation: Animation? = null
    var topPanelEnterAnimation: Animation? = null
    var topPanelExitAnimation: Animation? = null
    var bottomPanelEnterAnimation: Animation? = null
    var bottomPanelExitAnimation: Animation? = null
    var comicStatusChangeListener: com.picacomic.fregata.a_pkg.c? = null
    var episodeListCall: Call<GeneralResponse<ComicEpisodeResponse?>?>? = null
    var panelButtonClickListener: View.OnClickListener? = null
    var nextPageClickListener: View.OnClickListener? = null
    var pagingSeekBarChangeListener: OnSeekBarChangeListener? = null

    /* JADX INFO: renamed from: if, reason: not valid java name */
    var pageList: ArrayList<ComicPageObject?>? = null
    var episodeList: ArrayList<ComicEpisodeObject?>? = null

    var imageButton_back: ImageButton? = null
    var linearLayout_bottomPanel: LinearLayout? = null
    var linearLayout_dialogAutoPaging: LinearLayout? = null
    var linearLayout_horizontalPagingScrollbar: LinearLayout? = null
    var linearLayout_rightPanel: LinearLayout? = null
    var linearLayout_verticalPagingScrollbar: LinearLayout? = null
    var relativeLayout_leftPanel: RelativeLayout? = null
    var relativeLayout_toolbar: RelativeLayout? = null

    var seekBar_dialogAutoPaging: SeekBar? = null
    var seekBar_horizontalPaging: SeekBar? = null
    var seekBar_verticalPaging: SeekBar? = null

    var textView_dialogAutoPagingTitle: TextView? = null
    var textView_horizontalPage: TextView? = null
    var textView_page: TextView? = null
    var textView_title: TextView? = null
    var textView_verticalPage: TextView? = null
    var verticalSeekBar_brightness: VerticalSeekBar? = null
    var batteryLevelText: String = "不明"
    private val ih: BroadcastReceiver? = object : BroadcastReceiver() {
        // from class: com.picacomic.fregata.activities.ComicViewerActivity.1
        // android.content.BroadcastReceiver
        override fun onReceive(context: Context?, intent: Intent) {
            try {
                val intExtra = intent.getIntExtra("level", 0)
                this@ComicViewerActivity.batteryLevelText = intExtra.toString() + "%"
            } catch (e: Exception) {
                e.printStackTrace()
                if (this@ComicViewerActivity != null) {
                    Toast.makeText(this@ComicViewerActivity, "cannot parse battery level.", Toast.LENGTH_SHORT)
                        .show()
                }
            }
        }
    }
    private val ii: MediaPlayer? = null

    // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected override fun onCreate(bundle: Bundle?) {
        super.onCreate(bundle)
        this.binding = ActivityComicViewerBinding.inflate(getLayoutInflater())
        setContentView(this.binding!!.getRoot())

        this.button_autoPaging = this.binding!!.layoutBottomPanel.buttonComicViewerAutoPaging
        this.button_comment = this.binding!!.layoutRightPanel.buttonComicViewerComment
        this.button_dialogAutoPagingStart =
            this.binding!!.layoutAutoPaging.buttonComicViewerDialogAutoPagingStart
        this.button_download = this.binding!!.layoutToolbar.buttonComicViewerDownload
        this.button_hide = findViewById<Button>(R.id.button_comic_viewer_hide)
        this.button_hint = this.binding!!.layoutToolbar.buttonComicViewerHint
        this.button_nextEpisode = findViewById<Button?>(R.id.button_comic_viewer_next_episode)
        this.button_nextPageBottom = findViewById<Button>(R.id.button_comic_viewer_next_page_bottom)
        this.button_nextPageRight = findViewById<Button>(R.id.button_comic_viewer_next_page_right)
        this.button_nightMode = this.binding!!.layoutRightPanel.buttonComicViewerNightMode
        this.button_panel = findViewById<Button>(R.id.button_comic_viewer_panel)
        this.button_panelLeftCorner =
            findViewById<Button>(R.id.button_comic_viewer_panel_left_corner)
        this.button_previousEpisode =
            findViewById<Button?>(R.id.button_comic_viewer_previous_episode)
        this.button_previousPage = findViewById<Button>(R.id.button_comic_viewer_previous_page)
        this.button_screenOrientation =
            findViewById<Button>(R.id.button_comic_viewer_screen_orientation)
        this.button_scrollOrientation =
            findViewById<Button>(R.id.button_comic_viewer_scroll_orientation)
        this.button_selectEpisode = this.binding!!.layoutRightPanel.buttonComicViewerSelectEpisode
        this.button_setting = findViewById<Button>(R.id.button_comic_viewer_setting)
        this.button_share = this.binding!!.layoutToolbar.buttonComicViewerShare
        this.button_twoPageViewMode =
            findViewById<Button?>(R.id.button_comic_viewer_two_page_view_mode)
        this.checkBox_brightnessSystem =
            this.binding!!.layoutLeftPanel.checkBoxComicViewerSystemBrightness
        this.frameLayout_gestureArea =
            findViewById<FrameLayout>(R.id.frameLayout_comic_viewer_gesture_area)
        this.frameLayout_nightModeMask = this.binding!!.frameLayoutComicViewerNightModeMask
        this.gridView_episodeDialog = this.binding!!.gridViewComicViewerDialogSelectEpisode
        this.imageButton_back = this.binding!!.layoutToolbar.imageButtonComicViewerBack
        this.linearLayout_bottomPanel =
            this.binding!!.layoutBottomPanel.linearLayoutComicViewerBottomPanel
        this.linearLayout_dialogAutoPaging =
            this.binding!!.layoutAutoPaging.linearLayoutComicViewerDialogAutoPaging
        this.linearLayout_horizontalPagingScrollbar =
            findViewById<LinearLayout>(R.id.linearLayout_comic_viewer_horizontal_paging_scrollbar)
        this.linearLayout_rightPanel =
            this.binding!!.layoutRightPanel.linearLayoutComicViewerRightPanel
        this.linearLayout_verticalPagingScrollbar =
            findViewById<LinearLayout>(R.id.linearLayout_comic_viewer_vertical_paging_scrollbar)
        this.relativeLayout_leftPanel =
            this.binding!!.layoutLeftPanel.relativeLayoutComicViewerLeftPanel
        this.relativeLayout_toolbar = this.binding!!.layoutToolbar.relativeLayoutComicViewerToolbar
        this.seekBar_dialogAutoPaging =
            this.binding!!.layoutAutoPaging.seekBarComicViewerDialogAutoPaging
        this.seekBar_horizontalPaging =
            findViewById<SeekBar>(R.id.seekBar_comic_viewer_horizontal_page)
        this.seekBar_verticalPaging = findViewById<SeekBar>(R.id.seekBar_comic_viewer_vertical_page)
        this.textView_dialogAutoPagingTitle =
            this.binding!!.layoutAutoPaging.textViewComicViewerDialogAutoPagingTitle
        this.textView_horizontalPage =
            findViewById<TextView>(R.id.textView_comic_viewer_horizontal_page)
        this.textView_page = this.binding!!.textViewComicViewerPage
        this.textView_title = this.binding!!.layoutToolbar.textViewComicViewerTitle
        this.textView_verticalPage =
            findViewById<TextView>(R.id.textView_comic_viewer_vertical_page)
        this.verticalSeekBar_brightness =
            this.binding!!.layoutLeftPanel.verticalSeekBarComicViewerBrightness

        this.binding!!.layoutToolbar.toolbar.setVisibility(View.GONE)
        this.relativeLayout_toolbar!!.setVisibility(View.GONE)
        if (bundle == null) {
            this.comicViewerHostView = ComicViewerComposeHostView(this)
            findViewById<FrameLayout>(R.id.container).addView(
                this.comicViewerHostView,
                FrameLayout.LayoutParams(
                    FrameLayout.LayoutParams.MATCH_PARENT,
                    FrameLayout.LayoutParams.MATCH_PARENT
                )
            )
            this.comicViewerControlsOverlayView = ComicViewerControlsOverlayView(this)
            this.binding!!.root.addView(
                this.comicViewerControlsOverlayView,
                RelativeLayout.LayoutParams(
                    RelativeLayout.LayoutParams.MATCH_PARENT,
                    RelativeLayout.LayoutParams.MATCH_PARENT
                )
            )
            a(this.comicViewerHostView)
            init()
            bF()
            setupComposeControlsOverlay()
            bL()
            bH()
            return
        }
        finish()
    }

    fun init() {
        this.isVolumeKeyPagingEnabled = e.Q(this)
        this.isLandscape = e.M(this)
        this.isVerticalScroll = e.N(this)
        this.isNightMode = e.L(this)
        this.autoPagingInterval = e.O(this)
        this.hasMovedPastFirstLoadedPage = false
        this.isLoading = false
        this.currentPagingPage = 0
        this.totalPagingPages = 1
        this.currentEpisodePagingPage = 0
        this.totalEpisodePagingPages = 1
        this.loadedPageOffset = 0
        this.shouldRestoreRecordPosition = false
        this.shouldWarnMobileNetwork = true
        this.comicId = getIntent().getStringExtra("EXTRA_KEY_COMIC_ID")
        this.comicTitle = getIntent().getStringExtra("EXTRA_KEY_COMIC_TITLE")
        this.episodeOrder = getIntent().getIntExtra("EXTRA_KEY_LAST_VIEW_EPISODE_ORDER", 1)
        this.episodeTotal = getIntent().getIntExtra("EXTRA_KEY_EPISODE_TOTAL", 1)
        this.currentPage = getIntent().getIntExtra("EXTRA_KEY_LAST_VIEW_PAGE", 0)
        val booleanExtra = getIntent().getBooleanExtra("EXTRA_KEY_VIEW_FROM_RECORD", false)
        val dbComicViewRecordObjectAx = b.ax(this.comicId)
        if (dbComicViewRecordObjectAx != null && booleanExtra) {
            this.loadedPageOffset = dbComicViewRecordObjectAx.getPage()
            this.episodeOrder = dbComicViewRecordObjectAx.getEpisodeOrder()
            this.episodeTotal = dbComicViewRecordObjectAx.getEpisodeTotal()
            this.currentPagingPage = bT()
            this.totalPagingPages = this.currentPagingPage + 1
            this.shouldRestoreRecordPosition = true
        }
        loadPanelAnimations()
        bJ()
    }

    fun bF() {
        setupEpisodeGrid()
        setupToolbarButtons()
        setupReaderOptionButtons()
        setupPanelButtons()
        setupSeekBars()
        setupPagingButtons()
        setupGestureOverlay()
    }

    private fun setupEpisodeGrid() {
        if (this.episodeList == null) {
            this.episodeList = ArrayList<ComicEpisodeObject?>()
        }
        this.episodeAdapter = com.picacomic.fregata.adapters.c(this, this.episodeList)
        this.gridView_episodeDialog!!.setAdapter(this.episodeAdapter as ListAdapter)
        this.gridView_episodeDialog!!.setOnItemClickListener(object : OnItemClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.12
            // android.widget.AdapterView.OnItemClickListener
            override fun onItemClick(adapterView: AdapterView<*>?, view: View?, i: Int, j: Long) {
                if (this@ComicViewerActivity.episodeList == null || this@ComicViewerActivity.episodeList!!.size <= i) {
                    return
                }
                this@ComicViewerActivity.episodeOrder =
                    this@ComicViewerActivity.episodeList!!.get(i)!!.getOrder()
                this@ComicViewerActivity.b(this@ComicViewerActivity.episodeOrder, 0, true)
            }
        })
        this.gridView_episodeDialog!!.setOnScrollListener(object : AbsListView.OnScrollListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.23
            var im: Int = 0

            /* JADX INFO: renamed from: io, reason: collision with root package name */
            var f6io: Int = 0
            var ip: Int = 0

            // android.widget.AbsListView.OnScrollListener
            override fun onScrollStateChanged(absListView: AbsListView?, i: Int) {
                s(i)
            }

            // android.widget.AbsListView.OnScrollListener
            override fun onScroll(absListView: AbsListView?, i: Int, i2: Int, i3: Int) {
                this.im = i
                this.f6io = i2
                this.ip = i3
            }

            fun s(i: Int) {
                if (this.im < this.ip - this.f6io || i != 0) {
                    return
                }
                this@ComicViewerActivity.bN()
            }
        })
    }

    private fun setupToolbarButtons() {
        this.imageButton_back!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.26
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                this@ComicViewerActivity.onBackPressed()
            }
        })
        this.button_hint!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.27
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                this@ComicViewerActivity.setReaderControlsVisibility(View.GONE)
                this@ComicViewerActivity.setGesturePanelState(GesturePanelState.HINT)
                e.c(this@ComicViewerActivity as Context, true)
            }
        })
        this.button_share!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.28
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                Toast.makeText(this@ComicViewerActivity, "Download and Share Image", Toast.LENGTH_SHORT).show()
            }
        })
        this.button_download!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.29
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                Toast.makeText(this@ComicViewerActivity, "Download Current Image", android.widget.Toast.LENGTH_SHORT).show()
            }
        })
    }

    private fun setupReaderOptionButtons() {
        this.button_screenOrientation!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.30
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                if (this@ComicViewerActivity.isLandscape) {
                    this@ComicViewerActivity.isLandscape = false
                    this@ComicViewerActivity.h(false)
                } else {
                    this@ComicViewerActivity.isLandscape = true
                    this@ComicViewerActivity.h(true)
                }
                e.e(this@ComicViewerActivity, this@ComicViewerActivity.isLandscape)
            }
        })
        this.button_scrollOrientation!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.31
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                if (this@ComicViewerActivity.isVerticalScroll) {
                    this@ComicViewerActivity.isVerticalScroll = false
                    this@ComicViewerActivity.i(false)
                } else {
                    this@ComicViewerActivity.isVerticalScroll = true
                    this@ComicViewerActivity.i(true)
                }
                e.f(this@ComicViewerActivity, this@ComicViewerActivity.isVerticalScroll)
            }
        })
    }

    private fun setupPanelButtons() {
        this.button_autoPaging!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.2
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                if (this@ComicViewerActivity.linearLayout_dialogAutoPaging!!.getVisibility() == View.VISIBLE) {
                    this@ComicViewerActivity.linearLayout_dialogAutoPaging!!.setVisibility(View.GONE)
                    return
                }
                if (this@ComicViewerActivity.gridView_episodeDialog!!.getVisibility() == View.VISIBLE) {
                    this@ComicViewerActivity.gridView_episodeDialog!!.setVisibility(View.GONE)
                }
                this@ComicViewerActivity.linearLayout_dialogAutoPaging!!.setVisibility(View.VISIBLE)
            }
        })
        this.button_dialogAutoPagingStart!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.3
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                this@ComicViewerActivity.setReaderControlsVisibility(View.GONE)
                this@ComicViewerActivity.bO()
            }
        })
        this.button_setting!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.4
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                val intent = Intent(this@ComicViewerActivity, PopupActivity::class.java as Class<*>)
                intent.putExtra("EXTRA_KEY_TYPE", "TYPE_KEY_SETTING")
                this@ComicViewerActivity.startActivity(intent)
            }
        })
        this.button_hide!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.5
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                this@ComicViewerActivity.setReaderControlsVisibility(View.GONE)
            }
        })
        this.button_selectEpisode!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.6
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                if (this@ComicViewerActivity.gridView_episodeDialog!!.getVisibility() == View.VISIBLE) {
                    this@ComicViewerActivity.gridView_episodeDialog!!.setVisibility(View.GONE)
                    return
                }
                if (this@ComicViewerActivity.linearLayout_dialogAutoPaging!!.getVisibility() == View.VISIBLE) {
                    this@ComicViewerActivity.linearLayout_dialogAutoPaging!!.setVisibility(View.GONE)
                }
                this@ComicViewerActivity.gridView_episodeDialog!!.setVisibility(View.VISIBLE)
                this@ComicViewerActivity.bN()
            }
        })
        this.button_nightMode!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.7
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                if (this@ComicViewerActivity.isNightMode) {
                    this@ComicViewerActivity.setNightModeEnabled(false)
                } else {
                    this@ComicViewerActivity.setNightModeEnabled(true)
                }
            }
        })
        this.button_comment!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.8
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                if (this@ComicViewerActivity.comicId != null) {
                    val intent =
                        Intent(this@ComicViewerActivity, PopupActivity::class.java as Class<*>)
                    intent.putExtra("EXTRA_KEY_COMIC_ID", this@ComicViewerActivity.comicId)
                    intent.putExtra("EXTRA_KEY_TYPE", "TYPE_KEY_COMMENT")
                    this@ComicViewerActivity.startActivity(intent)
                }
            }
        })
        this.checkBox_brightnessSystem!!.setOnCheckedChangeListener(object :
            CompoundButton.OnCheckedChangeListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.9
            // android.widget.CompoundButton.OnCheckedChangeListener
            override fun onCheckedChanged(compoundButton: CompoundButton, z: Boolean) {
                this@ComicViewerActivity.j(z)
            }
        })
        this.panelButtonClickListener = object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.10
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                this@ComicViewerActivity.setReaderControlsVisibility(View.VISIBLE)
                this@ComicViewerActivity.bP()
            }
        }
        this.button_panel!!.setOnClickListener(this.panelButtonClickListener)
        this.button_panelLeftCorner!!.setOnClickListener(this.panelButtonClickListener)
    }

    private fun setupSeekBars() {
        this.verticalSeekBar_brightness!!.setOnSeekBarChangeListener(object :
            OnSeekBarChangeListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.11
            // android.widget.SeekBar.OnSeekBarChangeListener
            override fun onStartTrackingTouch(seekBar: SeekBar?) {
            }

            // android.widget.SeekBar.OnSeekBarChangeListener
            override fun onStopTrackingTouch(seekBar: SeekBar?) {
            }

            // android.widget.SeekBar.OnSeekBarChangeListener
            override fun onProgressChanged(seekBar: SeekBar?, i: Int, z: Boolean) {
                this@ComicViewerActivity.m(i)
            }
        })
        this.pagingSeekBarChangeListener = object : OnSeekBarChangeListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.13
            var ik: Int = 0

            // android.widget.SeekBar.OnSeekBarChangeListener
            override fun onStartTrackingTouch(seekBar: SeekBar?) {
            }

            // android.widget.SeekBar.OnSeekBarChangeListener
            override fun onStopTrackingTouch(seekBar: SeekBar?) {
            }

            // android.widget.SeekBar.OnSeekBarChangeListener
            override fun onProgressChanged(seekBar: SeekBar?, i: Int, z: Boolean) {
                this.ik = i
                if (z) {
                    this@ComicViewerActivity.currentPage = this.ik
                    this@ComicViewerActivity.comicStatusChangeListener!!.b(this.ik, false)
                    this@ComicViewerActivity.r(this@ComicViewerActivity.currentPage)
                }
            }
        }
        this.seekBar_horizontalPaging!!.setOnSeekBarChangeListener(this.pagingSeekBarChangeListener)
        this.seekBar_verticalPaging!!.setOnSeekBarChangeListener(this.pagingSeekBarChangeListener)
        this.seekBar_dialogAutoPaging!!.setOnSeekBarChangeListener(object :
            OnSeekBarChangeListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.14
            // android.widget.SeekBar.OnSeekBarChangeListener
            override fun onStartTrackingTouch(seekBar: SeekBar?) {
            }

            // android.widget.SeekBar.OnSeekBarChangeListener
            override fun onStopTrackingTouch(seekBar: SeekBar?) {
            }

            // android.widget.SeekBar.OnSeekBarChangeListener
            override fun onProgressChanged(seekBar: SeekBar?, i: Int, z: Boolean) {
                this@ComicViewerActivity.autoPagingInterval = (i * 100) + 1000
                this@ComicViewerActivity.comicViewerControlsOverlayView?.setAutoPagingInterval(
                    this@ComicViewerActivity.autoPagingInterval
                )
                e.b(
                    this@ComicViewerActivity as Context,
                    this@ComicViewerActivity.autoPagingInterval
                )
                val textView = this@ComicViewerActivity.textView_dialogAutoPagingTitle!!
                textView.setText(
                    this@ComicViewerActivity.getResources()
                        .getString(R.string.comic_viewer_setting_panel_auto_paging) + " 【 " + String.format(
                        "%.1f",
                        this@ComicViewerActivity.autoPagingInterval / 1000.0f
                    ) + this@ComicViewerActivity.getResources().getString(R.string.second) + " 】"
                )
            }
        })
    }

    private fun setupPagingButtons() {
        this.nextPageClickListener = object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.15
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                this@ComicViewerActivity.bR()
            }
        }
        this.button_nextPageBottom!!.setOnClickListener(this.nextPageClickListener)
        this.button_nextPageRight!!.setOnClickListener(this.nextPageClickListener)
        this.button_nextEpisode!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.16
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                if (this@ComicViewerActivity.episodeOrder < this@ComicViewerActivity.episodeTotal) {
                    this@ComicViewerActivity.episodeOrder++
                    this@ComicViewerActivity.b(this@ComicViewerActivity.episodeOrder, 0, true)
                } else {
                    this@ComicViewerActivity.p(View.GONE)
                    Toast.makeText(
                        this@ComicViewerActivity,
                        R.string.comic_viewer_no_more_episode,
                        0
                    ).show()
                }
            }
        })
        this.button_previousEpisode!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.17
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                if (this@ComicViewerActivity.episodeOrder > 1) {
                    this@ComicViewerActivity.episodeOrder--
                    this@ComicViewerActivity.b(this@ComicViewerActivity.episodeOrder, 0, true)
                } else {
                    this@ComicViewerActivity.q(View.GONE)
                    Toast.makeText(this@ComicViewerActivity, R.string.comic_viewer_first_episode, 0)
                        .show()
                }
            }
        })
        this.button_previousPage!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.18
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                this@ComicViewerActivity.bS()
            }
        })
    }

    private fun setupGestureOverlay() {
        this.frameLayout_gestureArea!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.19
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                this@ComicViewerActivity.setGesturePanelState(GesturePanelState.TRANSPARENT)
                e.c(this@ComicViewerActivity as Context, false)
            }
        })
    }

    private fun setupComposeControlsOverlay() {
        this.comicViewerControlsOverlayView?.apply {
            setBrightnessValue(this@ComicViewerActivity.brightnessValue)
            setAutoPagingInterval(this@ComicViewerActivity.autoPagingInterval)
            setNightModeValue(this@ComicViewerActivity.isNightMode)
            onHide = {
                this@ComicViewerActivity.setReaderControlsVisibility(View.GONE)
            }
            onScreenOrientation = {
                if (this@ComicViewerActivity.isLandscape) {
                    this@ComicViewerActivity.isLandscape = false
                    this@ComicViewerActivity.h(false)
                } else {
                    this@ComicViewerActivity.isLandscape = true
                    this@ComicViewerActivity.h(true)
                }
                e.e(this@ComicViewerActivity, this@ComicViewerActivity.isLandscape)
            }
            onScrollOrientation = {
                if (this@ComicViewerActivity.isVerticalScroll) {
                    this@ComicViewerActivity.isVerticalScroll = false
                    this@ComicViewerActivity.i(false)
                } else {
                    this@ComicViewerActivity.isVerticalScroll = true
                    this@ComicViewerActivity.i(true)
                }
                e.f(this@ComicViewerActivity, this@ComicViewerActivity.isVerticalScroll)
            }
            onAutoPaging = {
                this@ComicViewerActivity.setReaderControlsVisibility(View.GONE)
                this@ComicViewerActivity.bO()
            }
            onSettings = {
                val intent = Intent(this@ComicViewerActivity, PopupActivity::class.java as Class<*>)
                intent.putExtra("EXTRA_KEY_TYPE", "TYPE_KEY_SETTING")
                this@ComicViewerActivity.startActivity(intent)
            }
            onSelectEpisode = {
                if (this@ComicViewerActivity.gridView_episodeDialog!!.getVisibility() == View.VISIBLE) {
                    this@ComicViewerActivity.gridView_episodeDialog!!.setVisibility(View.GONE)
                } else {
                    this@ComicViewerActivity.linearLayout_dialogAutoPaging!!.setVisibility(View.GONE)
                    this@ComicViewerActivity.gridView_episodeDialog!!.setVisibility(View.VISIBLE)
                    this@ComicViewerActivity.bN()
                }
            }
            onNightMode = {
                this@ComicViewerActivity.setNightModeEnabled(!this@ComicViewerActivity.isNightMode)
            }
            onComment = {
                if (this@ComicViewerActivity.comicId != null) {
                    val intent =
                        Intent(this@ComicViewerActivity, PopupActivity::class.java as Class<*>)
                    intent.putExtra("EXTRA_KEY_COMIC_ID", this@ComicViewerActivity.comicId)
                    intent.putExtra("EXTRA_KEY_TYPE", "TYPE_KEY_COMMENT")
                    this@ComicViewerActivity.startActivity(intent)
                }
            }
            onPageChanged = { page ->
                this@ComicViewerActivity.currentPage = page
                this@ComicViewerActivity.comicStatusChangeListener?.b(page, false)
                this@ComicViewerActivity.r(page)
            }
            onBrightnessChanged = { value ->
                this@ComicViewerActivity.m(value)
            }
        }
    }

    fun bG() {
        this.currentPage = 0
        this.currentPagingPage = 0
        this.totalPagingPages = 1
        this.loadedPageOffset = 0
        this.hasMovedPastFirstLoadedPage = false
        this.shouldRestoreRecordPosition = false
    }

    fun bH() {
        setReaderControlsVisibility(View.GONE)
        h(this.isLandscape)
        i(this.isVerticalScroll)
        setNightModeEnabled(this.isNightMode)
        if (this.autoPagingInterval + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED < 0) {
            this.seekBar_dialogAutoPaging!!.setProgress(0)
        } else {
            this.seekBar_dialogAutoPaging!!.setProgress((this.autoPagingInterval + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED) / 100)
        }
        if (e.K(this)) {
            setReaderControlsVisibility(View.GONE)
            setGesturePanelState(GesturePanelState.HINT)
        } else {
            setReaderControlsVisibility(View.GONE)
            setGesturePanelState(GesturePanelState.TRANSPARENT)
        }
    }

    fun bI() {
        p(View.GONE)
        q(View.GONE)
        n(this.currentPage)
        if (this.currentEpisode != null) {
            this.textView_title!!.setText("〖" + this.currentEpisode!!.getTitle() + "〗 ")
            val spannableString = SpannableString(this.comicTitle)
            spannableString.setSpan(
                ForegroundColorSpan(getResources().getColor(R.color.white)),
                0,
                spannableString.length,
                33
            )
            this.textView_title!!.append(spannableString)
        }
    }

    fun bJ() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.M || Settings.System.canWrite(this)) {
            return
        }
        Toast.makeText(
            this,
            R.string.comic_viewer_setting_panel_brightness_manual,
            Toast.LENGTH_SHORT
        ).show()
        val intent = Intent(Settings.ACTION_MANAGE_WRITE_SETTINGS)
        intent.setData(Uri.parse("package:" + getPackageName()))
        startActivity(intent)
    }

    private fun loadPanelAnimations() {
        this.leftPanelEnterAnimation =
            AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_left_enter)
        this.leftPanelExitAnimation =
            AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_left_exit)
        this.rightPanelEnterAnimation =
            AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_right_enter)
        this.rightPanelExitAnimation =
            AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_right_exit)
        this.topPanelEnterAnimation =
            AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_top_enter)
        this.topPanelExitAnimation =
            AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_top_exit)
        this.bottomPanelEnterAnimation =
            AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_bottom_enter)
        this.bottomPanelExitAnimation =
            AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_bottom_exit)
    }

    private fun ensurePanelAnimationsLoaded() {
        if (this.leftPanelEnterAnimation == null || this.leftPanelExitAnimation == null || this.rightPanelEnterAnimation == null || this.rightPanelExitAnimation == null || this.bottomPanelEnterAnimation == null || this.bottomPanelExitAnimation == null) {
            loadPanelAnimations()
        }
    }

    // com.picacomic.fregata.activities.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected override fun onResume() {
        super.onResume()
        try {
            if (this.ih != null) {
                registerReceiver(this.ih, IntentFilter("android.intent.action.BATTERY_CHANGED"))
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    // com.picacomic.fregata.activities.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected override fun onPause() {
        if (this.currentEpisode != null && this.currentEpisode!!.getTitle() != null) {
            val title = this.currentEpisode!!.getTitle()
            b.a(
                DbComicViewRecordObject(
                    this.comicId,
                    bU() + this.currentPage,
                    title,
                    this.episodeOrder,
                    this.episodeTotal,
                    System.currentTimeMillis()
                )
            )
        }
        try {
            if (this.ih != null) {
                unregisterReceiver(this.ih)
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
        super.onPause()
    }

    // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onSaveInstanceState(bundle: Bundle) {
        var title: String? = ""
        if (this.currentEpisode != null && this.currentEpisode!!.getTitle() != null) {
            title = this.currentEpisode!!.getTitle()
        }
        b.a(
            DbComicViewRecordObject(
                this.comicId,
                bU() + this.currentPage,
                title,
                this.episodeOrder,
                this.episodeTotal,
                System.currentTimeMillis()
            )
        )
        f.D(TAG, "Save View Record: ")
        super.onSaveInstanceState(bundle)
    }

    // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected override fun onStop() {
        bP()
        if (this.comicPagesCall != null) {
            this.comicPagesCall!!.cancel()
        }
        if (this.episodeListCall != null) {
            this.episodeListCall!!.cancel()
        }
        if (this.bottomPanelEnterAnimation != null) {
            this.bottomPanelEnterAnimation!!.cancel()
        }
        if (this.bottomPanelExitAnimation != null) {
            this.bottomPanelExitAnimation!!.cancel()
        }
        if (this.leftPanelEnterAnimation != null) {
            this.leftPanelEnterAnimation!!.cancel()
        }
        if (this.leftPanelExitAnimation != null) {
            this.leftPanelExitAnimation!!.cancel()
        }
        if (this.rightPanelEnterAnimation != null) {
            this.rightPanelEnterAnimation!!.cancel()
        }
        if (this.rightPanelExitAnimation != null) {
            this.rightPanelExitAnimation!!.cancel()
        }
        if (this.topPanelEnterAnimation != null) {
            this.topPanelEnterAnimation!!.cancel()
        }
        if (this.topPanelExitAnimation != null) {
            this.topPanelExitAnimation!!.cancel()
        }
        if (this.episodeButtonFadeTimer != null) {
            this.episodeButtonFadeTimer!!.cancel()
        }
        super.onStop()
    }

    override fun onDestroy() {
        a(null as com.picacomic.fregata.a_pkg.c?)
        this.comicViewerHostView?.release()
        this.comicViewerHostView = null
        this.comicViewerControlsOverlayView = null
        super.onDestroy()
    }

    fun j(i: Int): Boolean {
        val listFind: MutableList<*>? =
            DownloadComicEpisodeObject.find<DownloadComicEpisodeObject?>(
                DownloadComicEpisodeObject::class.java,
                "comic_id = ? and episode_order = ?",
                this.comicId,
                i.toString() + ""
            )
        if (listFind != null && listFind.size > 0) {
            f.D(TAG, "HAVE DOWNLOAD EP")
            return true
        }
        f.D(TAG, "NO DOWNLOAD EP")
        return false
    }

    fun bL() {
        if (j(this.episodeOrder)) {
            c(this.episodeOrder, this.currentPagingPage, false)
        } else {
            d(this.episodeOrder, this.currentPagingPage, false)
        }
    }

    fun b(i: Int, i2: Int, z: Boolean) {
        if (j(i)) {
            c(i, i2, z)
        } else {
            d(i, i2, z)
        }
    }

    @Synchronized
    fun c(i: Int, i2: Int, z: Boolean) {
        if (z) {
            try {
                bG()
                this.pageList!!.clear()
            } catch (th: Throwable) {
                throw th
            }
        }
        val listFind: MutableList<*>? =
            DownloadComicEpisodeObject.find<DownloadComicEpisodeObject?>(
                DownloadComicEpisodeObject::class.java,
                "comic_id = ? and episode_order = ?",
                this.comicId,
                i.toString() + ""
            )
        if (listFind != null && listFind.size > 0) {
            this.currentEpisode =
                (listFind.get(0) as DownloadComicEpisodeObject).getComicEpisodeObject()
            this.totalPages = (listFind.get(0) as DownloadComicEpisodeObject).getTotal()
            if (this.totalPages < hq) {
                this.totalPagingPages = 1
            } else if (this.totalPages % hq == 0) {
                this.totalPagingPages = this.totalPages / hq
            } else {
                this.totalPagingPages = (this.totalPages / hq) + 1
            }
            var listFindWithQuery: MutableList<*>? = null
            if (this.totalPagingPages > i2) {
                listFindWithQuery = DownloadComicPageObject.findWithQuery<DownloadComicPageObject?>(
                    DownloadComicPageObject::class.java,
                    "SELECT * FROM download_comic_page_object WHERE episode_id = ? LIMIT ? OFFSET ?",
                    this.currentEpisode!!.getEpisodeId(),
                    hq.toString() + "",
                    (hq * i2).toString() + ""
                )
                f.D(
                    TAG,
                    "SIZE = " + listFindWithQuery.size + "LIMIT = " + hq + " OFFSET = " + (hq * i2)
                )
                this.currentPagingPage = i2 + 1
            }
            if (this.pageList == null) {
                this.pageList = ArrayList<ComicPageObject?>()
            }
            if (listFindWithQuery != null && listFindWithQuery.size > 0) {
                val arrayList = ArrayList<ComicPageObject?>()
                for (i3 in listFindWithQuery.indices) {
                    val comicPageObject =
                        (listFindWithQuery.get(i3) as DownloadComicPageObject).getComicPageObject()
                    this.pageList!!.add(comicPageObject)
                    arrayList.add(comicPageObject)
                }
                this.comicStatusChangeListener!!.a(
                    arrayList,
                    this.loadedPageOffset,
                    this.shouldRestoreRecordPosition,
                    z
                )
                if (this.shouldRestoreRecordPosition) {
                    this.shouldRestoreRecordPosition = false
                }
                o(this.pageList!!.size)
                bI()
            } else {
                f.D(TAG, "Load DownloadComicPageObjectList DB FAILED")
            }
        } else {
            f.D(TAG, "Load DownloadComicEpisodeObject DB FAILED")
        }
        logPagingState()
    }

    fun d(i: Int, i2: Int, z: Boolean) {
        f.D(TAG, "Call Comic Page ?")
        if (i2 >= this.totalPagingPages || this.isLoading) {
            return
        }
        this.isLoading = true
        C(getResources().getString(R.string.loading_comic_viewer))
        val dVar = com.picacomic.fregata.b.d(this)
        val str: String = TAG
        val sb = StringBuilder()
        sb.append("Call Page api = ")
        sb.append(e.z(this))
        sb.append("  ")
        sb.append(this.comicId)
        sb.append("  ")
        sb.append(i)
        sb.append("  ")
        val i3 = i2 + 1
        sb.append(i3)
        f.D(str, sb.toString())
        this.comicPagesCall = dVar.dO().a(e.z(this), this.comicId, i, i3)
        this.comicPagesCall!!.enqueue(object : Callback<GeneralResponse<ComicPagesResponse?>?> {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.20
            // retrofit2.Callback
            override fun onResponse(
                call: Call<GeneralResponse<ComicPagesResponse?>?>,
                response: Response<GeneralResponse<ComicPagesResponse?>?>
            ) {
                if (response.code() == 200) {
                    f.aA(response.body()!!.data!!.getPages().toString())
                    if (response.body()!!.data != null && response.body()!!.data!!.getPages()
                            .getDocs() != null
                    ) {
                        hq = response.body()!!.data!!.getPages().getLimit()
                        if (z) {
                            this@ComicViewerActivity.bG()
                            this@ComicViewerActivity.pageList!!.clear()
                        }
                        this@ComicViewerActivity.totalPages =
                            response.body()!!.data!!.getPages().getTotal()
                        this@ComicViewerActivity.currentPagingPage =
                            response.body()!!.data!!.getPages().getPage()
                        this@ComicViewerActivity.totalPagingPages =
                            response.body()!!.data!!.getPages().getPages()
                        this@ComicViewerActivity.currentEpisode = response.body()!!.data!!.getEp()
                        if (this@ComicViewerActivity.pageList == null) {
                            this@ComicViewerActivity.pageList = ArrayList<ComicPageObject?>()
                        }
                        for (i4 in response.body()!!.data!!.getPages().getDocs().indices) {
                            this@ComicViewerActivity.pageList!!.add(
                                response.body()!!.data!!.getPages().getDocs().get(i4)
                            )
                        }
                        this@ComicViewerActivity.logPagingState()
                        this@ComicViewerActivity.comicStatusChangeListener!!.a(
                            response.body()!!.data!!.getPages().getDocs(),
                            this@ComicViewerActivity.loadedPageOffset,
                            this@ComicViewerActivity.shouldRestoreRecordPosition,
                            z
                        )
                        if (this@ComicViewerActivity.shouldRestoreRecordPosition) {
                            this@ComicViewerActivity.shouldRestoreRecordPosition = false
                        }
                        this@ComicViewerActivity.o(this@ComicViewerActivity.pageList!!.size)
                        this@ComicViewerActivity.bI()
                    }
                } else {
                    try {
                        com.picacomic.fregata.b.c(
                            this@ComicViewerActivity,
                            response.code(),
                            response.errorBody()!!.string()
                        ).dN()
                    } catch (e: Exception) {
                        e.printStackTrace()
                    }
                }
                this@ComicViewerActivity.isLoading = false
                this@ComicViewerActivity.bC()
            }

            // retrofit2.Callback
            override fun onFailure(
                call: Call<GeneralResponse<ComicPagesResponse?>?>,
                th: Throwable
            ) {
                this@ComicViewerActivity.isLoading = false
                th.printStackTrace()
                this@ComicViewerActivity.bC()
            }
        })
    }

    fun bM() {
        f.D(TAG, "Call Comic Page ?")
        if (bT() <= 0 || this.isLoading) {
            return
        }
        this.isLoading = true
        C(getResources().getString(R.string.loading_comic_viewer))
        this.comicPagesCall =
            com.picacomic.fregata.b.d(this).dO().a(e.z(this), this.comicId, this.episodeOrder, bT())
        this.comicPagesCall!!.enqueue(object : Callback<GeneralResponse<ComicPagesResponse?>?> {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.21
            // retrofit2.Callback
            override fun onResponse(
                call: Call<GeneralResponse<ComicPagesResponse?>?>,
                response: Response<GeneralResponse<ComicPagesResponse?>?>
            ) {
                if (response.code() == 200) {
                    f.aA(response.body()!!.data!!.getPages().toString())
                    if (response.body()!!.data != null && response.body()!!.data!!.getPages()
                            .getDocs() != null
                    ) {
                        hq = response.body()!!.data!!.getPages().getLimit()
                        this@ComicViewerActivity.totalPages =
                            response.body()!!.data!!.getPages().getTotal()
                        this@ComicViewerActivity.pageList!!.addAll(
                            0,
                            response.body()!!.data!!.getPages().getDocs()
                        )
                        this@ComicViewerActivity.loadedPageOffset -= hq
                        this@ComicViewerActivity.logPagingState()
                        this@ComicViewerActivity.comicStatusChangeListener!!.a(
                            response.body()!!.data!!.getPages().getDocs(),
                            this@ComicViewerActivity.loadedPageOffset,
                            false,
                            false
                        )
                        this@ComicViewerActivity.o(this@ComicViewerActivity.pageList!!.size)
                        this@ComicViewerActivity.bI()
                    }
                } else {
                    try {
                        com.picacomic.fregata.b.c(
                            this@ComicViewerActivity,
                            response.code(),
                            response.errorBody()!!.string()
                        ).dN()
                    } catch (e: Exception) {
                        e.printStackTrace()
                    }
                }
                this@ComicViewerActivity.isLoading = false
                this@ComicViewerActivity.bC()
            }

            // retrofit2.Callback
            override fun onFailure(
                call: Call<GeneralResponse<ComicPagesResponse?>?>,
                th: Throwable
            ) {
                this@ComicViewerActivity.isLoading = false
                th.printStackTrace()
                this@ComicViewerActivity.bC()
            }
        })
    }

    private fun logPagingState() {
        f.D(TAG, "current Page = " + this.currentPage)
        f.D(TAG, "Comic Paging Page = " + this.currentPagingPage)
        f.D(TAG, "Comic Paging Page Total = " + this.totalPagingPages)
        f.D(TAG, "jumpingPage = " + this.loadedPageOffset)
        f.D(TAG, "episodeOrder = " + this.episodeOrder)
        f.D(TAG, "episodeTotal = " + this.episodeTotal)
        f.D(TAG, "episodePagingPage = " + this.currentEpisodePagingPage)
        f.D(TAG, "episodePagingPageTotal = " + this.totalEpisodePagingPages)
    }

    fun bN() {
        if (this.currentEpisodePagingPage < this.totalEpisodePagingPages) {
            bA()
            this.episodeListCall = com.picacomic.fregata.b.d(this).dO()
                .b(e.z(this), this.comicId, this.currentEpisodePagingPage + 1)
            this.episodeListCall!!.enqueue(object :
                Callback<GeneralResponse<ComicEpisodeResponse?>?> {
                // from class: com.picacomic.fregata.activities.ComicViewerActivity.22
                // retrofit2.Callback
                override fun onResponse(
                    call: Call<GeneralResponse<ComicEpisodeResponse?>?>,
                    response: Response<GeneralResponse<ComicEpisodeResponse?>?>
                ) {
                    if (response.code() == 200) {
                        if (response.body()!!.data != null && response.body()!!.data!!.getEps() != null && response.body()!!.data!!.getEps()
                                .getDocs() != null && response.body()!!.data!!.getEps()
                                .getDocs().size > 0
                        ) {
                            this@ComicViewerActivity.episodeTotal =
                                response.body()!!.data!!.getEps().getTotal()
                            this@ComicViewerActivity.currentEpisodePagingPage =
                                response.body()!!.data!!.getEps().getPage()
                            this@ComicViewerActivity.totalEpisodePagingPages =
                                response.body()!!.data!!.getEps().getPages()
                            for (i in response.body()!!.data!!.getEps().getDocs().indices) {
                                this@ComicViewerActivity.episodeList!!.add(
                                    response.body()!!.data!!.getEps().getDocs().get(i)
                                )
                            }
                            this@ComicViewerActivity.episodeAdapter!!.notifyDataSetChanged()
                            f.D(TAG, this@ComicViewerActivity.episodeList!!.size.toString() + "")
                        }
                    } else {
                        try {
                            com.picacomic.fregata.b.c(
                                this@ComicViewerActivity,
                                response.code(),
                                response.errorBody()!!.string()
                            ).dN()
                        } catch (e: Exception) {
                            e.printStackTrace()
                        }
                    }
                    this@ComicViewerActivity.bC()
                }

                // retrofit2.Callback
                override fun onFailure(
                    call: Call<GeneralResponse<ComicEpisodeResponse?>?>,
                    th: Throwable
                ) {
                    th.printStackTrace()
                    this@ComicViewerActivity.bC()
                    com.picacomic.fregata.b.c(this@ComicViewerActivity).dN()
                }
            })
        }
    }

    fun h(z: Boolean) {
        if (this.comicStatusChangeListener != null) {
            if (!z) {
                setRequestedOrientation(6)
                if (this.comicStatusChangeListener != null) {
                    this.comicStatusChangeListener!!.M(6)
                    return
                }
                return
            }
            setRequestedOrientation(7)
            if (this.comicStatusChangeListener != null) {
                this.comicStatusChangeListener!!.M(7)
            }
        }
    }

    fun i(z: Boolean) {
        if (this.comicStatusChangeListener != null) {
            this.comicStatusChangeListener!!.B(z)
            if (z) {
                this.button_scrollOrientation!!.setCompoundDrawablesWithIntrinsicBounds(
                    null as Drawable?,
                    ContextCompat.getDrawable(getApplicationContext(), R.drawable.ic_action_flip),
                    null as Drawable?,
                    null as Drawable?
                )
            } else {
                this.button_scrollOrientation!!.setCompoundDrawablesWithIntrinsicBounds(
                    null as Drawable?,
                    ContextCompat.getDrawable(
                        getApplicationContext(),
                        R.drawable.ic_action_flip_vert
                    ),
                    null as Drawable?,
                    null as Drawable?
                )
            }
        }
    }

    fun a(cVar: com.picacomic.fregata.a_pkg.c?) {
        this.comicStatusChangeListener = cVar
    }

    fun setReaderControlsVisibility(visibility: Int) {
        ensurePanelAnimationsLoaded()
        this.relativeLayout_leftPanel!!.setVisibility(View.GONE)
        this.linearLayout_rightPanel!!.setVisibility(View.GONE)
        this.relativeLayout_toolbar!!.setVisibility(View.GONE)
        this.linearLayout_bottomPanel!!.setVisibility(View.GONE)
        this.comicViewerControlsOverlayView?.updateControlsVisible(visibility == View.VISIBLE)
        if (visibility == View.VISIBLE) {
            this.comicViewerControlsOverlayView?.bringToFront()
            setGesturePanelState(GesturePanelState.HIDDEN)
            return
        }
        this.gridView_episodeDialog!!.setVisibility(View.GONE)
        this.linearLayout_dialogAutoPaging!!.setVisibility(View.GONE)
        setGesturePanelState(GesturePanelState.TRANSPARENT)
    }

    private fun setGesturePanelState(state: GesturePanelState?) {
        if (state == GesturePanelState.TRANSPARENT) {
            this.button_nextPageRight!!.setVisibility(View.VISIBLE)
            this.button_nextPageBottom!!.setVisibility(View.VISIBLE)
            this.button_previousPage!!.setVisibility(View.VISIBLE)
            this.button_panel!!.setVisibility(View.VISIBLE)
            this.button_panelLeftCorner!!.setVisibility(View.VISIBLE)
            this.button_nextPageRight!!.setBackgroundColor(getResources().getColor(R.color.transparent))
            this.button_nextPageBottom!!.setBackgroundColor(getResources().getColor(R.color.transparent))
            this.button_previousPage!!.setBackgroundColor(getResources().getColor(R.color.transparent))
            this.button_panel!!.setBackgroundColor(getResources().getColor(R.color.transparent))
            this.button_panelLeftCorner!!.setBackgroundColor(getResources().getColor(R.color.transparent))
            this.button_nextPageRight!!.setText("")
            this.button_nextPageBottom!!.setText("")
            this.button_previousPage!!.setText("")
            this.button_panel!!.setText("")
            this.button_panelLeftCorner!!.setText("")
            this.frameLayout_gestureArea!!.setVisibility(View.GONE)
            return
        }
        if (state == GesturePanelState.HIDDEN) {
            this.button_nextPageRight!!.setVisibility(View.GONE)
            this.button_nextPageBottom!!.setVisibility(View.GONE)
            this.button_previousPage!!.setVisibility(View.GONE)
            this.button_panel!!.setVisibility(View.GONE)
            this.button_panelLeftCorner!!.setVisibility(View.GONE)
            this.button_panel!!.setText("")
            this.button_panelLeftCorner!!.setText("")
            this.button_panel!!.setBackgroundColor(getResources().getColor(R.color.transparent))
            this.button_panelLeftCorner!!.setBackgroundColor(getResources().getColor(R.color.transparent))
            this.frameLayout_gestureArea!!.setVisibility(View.GONE)
            return
        }
        if (state == GesturePanelState.HINT) {
            this.button_nextPageRight!!.setVisibility(View.VISIBLE)
            this.button_nextPageBottom!!.setVisibility(View.VISIBLE)
            this.button_previousPage!!.setVisibility(View.VISIBLE)
            this.button_panel!!.setVisibility(View.VISIBLE)
            this.button_panelLeftCorner!!.setVisibility(View.VISIBLE)
            this.button_nextPageRight!!.setText(getResources().getString(R.string.comic_viewer_setting_panel_next_page_vertical))
            this.button_nextPageBottom!!.setText(getResources().getString(R.string.comic_viewer_setting_panel_next_page))
            this.button_previousPage!!.setText(getResources().getString(R.string.comic_viewer_setting_panel_previous_page_vertical))
            this.button_panel!!.setText(getResources().getString(R.string.comic_viewer_setting_panel_setting_menu))
            this.button_panelLeftCorner!!.setText(getResources().getString(R.string.comic_viewer_setting_panel_setting_menu))
            this.button_nextPageRight!!.setBackgroundColor(getResources().getColor(R.color.colorPrimaryDark))
            this.button_nextPageBottom!!.setBackgroundColor(getResources().getColor(R.color.colorPrimaryDark))
            this.button_previousPage!!.setBackgroundColor(getResources().getColor(R.color.colorPrimaryDark))
            this.button_panel!!.setBackgroundColor(getResources().getColor(R.color.green_transparent_30))
            this.button_panelLeftCorner!!.setBackgroundColor(getResources().getColor(R.color.green_transparent_30))
            this.frameLayout_gestureArea!!.setVisibility(View.VISIBLE)
        }
    }

    fun j(z: Boolean) {
        try {
            if (z) {
                Settings.System.putInt(getContentResolver(), "screen_brightness_mode", 1)
                this.checkBox_brightnessSystem!!.setText(getResources().getString(R.string.comic_viewer_setting_panel_brightness_auto))
            } else {
                Settings.System.putInt(getContentResolver(), "screen_brightness_mode", 0)
                this.checkBox_brightnessSystem!!.setText(getResources().getString(R.string.comic_viewer_setting_panel_brightness_manual))
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
        this.isSystemBrightness = z
    }

    fun m(i: Int) {
        try {
            if (Settings.System.getInt(getContentResolver(), "screen_brightness_mode") == 1) {
                this.checkBox_brightnessSystem!!.setChecked(false)
            }
            Settings.System.putInt(getContentResolver(), "screen_brightness", i)
        } catch (e: Exception) {
            e.printStackTrace()
        }
        this.brightnessValue = i
        this.comicViewerControlsOverlayView?.setBrightnessValue(i)
    }

    fun setNightModeEnabled(enabled: Boolean) {
        if (enabled) {
            this.frameLayout_nightModeMask!!.setVisibility(View.VISIBLE)
            this.button_nightMode!!.setCompoundDrawablesWithIntrinsicBounds(
                null as Drawable?,
                ContextCompat.getDrawable(
                    getApplicationContext(),
                    R.drawable.icon_comicviewer_nightfilter_on
                ),
                null as Drawable?,
                null as Drawable?
            )
            this.button_nightMode!!.setTextColor(ContextCompat.getColor(this, R.color.colorPrimary))
            Toast.makeText(this, R.string.comic_viewer_toast_night_mode_on, 0).show()
        } else {
            this.frameLayout_nightModeMask!!.setVisibility(View.GONE)
            this.button_nightMode!!.setCompoundDrawablesWithIntrinsicBounds(
                null as Drawable?,
                ContextCompat.getDrawable(getApplicationContext(), R.drawable.ic_action_night),
                null as Drawable?,
                null as Drawable?
            )
            this.button_nightMode!!.setTextColor(ContextCompat.getColor(this, R.color.white))
        }
        this.isNightMode = enabled
        this.comicViewerControlsOverlayView?.setNightModeValue(enabled)
        e.d(this, this.isNightMode)
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.picacomic.fregata.activities.ComicViewerActivity$24] */
    fun bO() {
        if (this.autoPagingInterval <= 0) {
            return
        }
        bP()
        this.autoPagingTimer =
            object : CountDownTimer(Long.Companion.MAX_VALUE, this.autoPagingInterval.toLong()) {
                // from class: com.picacomic.fregata.activities.ComicViewerActivity.24
                // android.os.CountDownTimer
                override fun onTick(j: Long) {
                    if (!this@ComicViewerActivity.advanceAutoPagingPage()) {
                        this@ComicViewerActivity.bP()
                    }
                }

                // android.os.CountDownTimer
                override fun onFinish() {
                    this@ComicViewerActivity.bP()
                }
            }.start()
    }

    private fun advanceAutoPagingPage(): Boolean {
        if (this.pageList == null || this.currentPage >= bV()) {
            return false
        }
        this.currentPage++
        this.comicStatusChangeListener!!.b(this.currentPage, false)
        r(this.currentPage)
        return true
    }

    fun bP() {
        if (this.autoPagingTimer != null) {
            this.autoPagingTimer!!.cancel()
            this.autoPagingTimer = null
        }
    }

    // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    override fun onKeyDown(i: Int, keyEvent: KeyEvent?): Boolean {
        if (this.isVolumeKeyPagingEnabled) {
            if (i == 25) {
                bR()
                return true
            }
            if (i == 24) {
                bS()
                return true
            }
        }
        if (i != 4) {
            return false
        }
        onBackPressed()
        return false
    }

    // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    override fun onConfigurationChanged(configuration: Configuration) {
        super.onConfigurationChanged(configuration)
        if (configuration.orientation == 2) {
            this.linearLayout_horizontalPagingScrollbar!!.setVisibility(View.VISIBLE)
            this.linearLayout_verticalPagingScrollbar!!.setVisibility(View.GONE)
        } else if (configuration.orientation == 1) {
            this.linearLayout_horizontalPagingScrollbar!!.setVisibility(View.GONE)
            this.linearLayout_verticalPagingScrollbar!!.setVisibility(View.VISIBLE)
        }
    }

    // com.picacomic.fregata.activities.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public override fun onRequestPermissionsResult(i: Int, strArr: Array<out String>, iArr: IntArray) {
        super.onRequestPermissionsResult(i, strArr, iArr)
        if (i == REQUEST_WRITE_SETTINGS && iArr.size > 0) {
            if (iArr[0] == PackageManager.PERMISSION_GRANTED) {
                j(this.checkBox_brightnessSystem!!.isChecked())
            } else {
                Toast.makeText(
                    this,
                    R.string.comic_viewer_setting_panel_brightness_manual,
                    Toast.LENGTH_SHORT
                ).show()
            }
        }
    }

    fun n(i: Int) {
        val networkStatus = this.networkStatusLabel
        if (this.pageList != null) {
            val i2 = this.totalPages
            if (g.ac(i) + 1 > this.pageList!!.size) {
                this.textView_horizontalPage!!.setText("完/" + i2)
                this.textView_verticalPage!!.setText("完/" + i2)
                this.textView_page!!.setText("完/" + i2 + " " + networkStatus + " 電量:" + this.batteryLevelText)
                this.comicViewerControlsOverlayView?.setPage("完/$i2")
                return
            }
            val pageText = (g.ac(i) + 1 + bU()).toString() + "/" + i2
            this.textView_horizontalPage!!.setText(pageText)
            this.textView_verticalPage!!.setText(pageText)
            this.textView_page!!.setText("P." + (g.ac(i) + 1 + bU()) + "/" + i2 + " " + networkStatus + " 電量:" + this.batteryLevelText)
            this.comicViewerControlsOverlayView?.setPage(pageText)
        }
    }

    private val networkStatusLabel: String
        get() {
            try {
                val connectivityManager =
                    getSystemService(CONNECTIVITY_SERVICE) as ConnectivityManager?
                if (connectivityManager == null) {
                    return ""
                }
                val activeNetwork = connectivityManager.getActiveNetwork()
                val capabilities =
                    connectivityManager.getNetworkCapabilities(activeNetwork)
                if (capabilities == null || !capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)) {
                    return getString(R.string.network_status_no_network)
                }
                if (capabilities.hasTransport(NetworkCapabilities.TRANSPORT_WIFI)) {
                    return getString(R.string.network_status_wifi)
                }
                if (capabilities.hasTransport(NetworkCapabilities.TRANSPORT_CELLULAR)) {
                    if (this.shouldWarnMobileNetwork) {
                        AlertDialogCenter.usingMobileNetwork(this)
                        this.shouldWarnMobileNetwork = false
                    }
                    return getString(R.string.network_status_mobile)
                }
            } catch (e: Exception) {
                e.printStackTrace()
                Toast.makeText(this, "Cannot get NetworkStatus", Toast.LENGTH_SHORT).show()
            }
            return ""
        }

    fun o(i: Int) {
        val iAd = if (this.comicViewerHostView != null) {
            (i - 1).coerceAtLeast(0)
        } else {
            g.ad(i)
        }
        this.seekBar_verticalPaging!!.setMax(iAd)
        this.seekBar_horizontalPaging!!.setMax(iAd)
        this.comicViewerControlsOverlayView?.setPage(
            label = this.textView_page?.text?.toString()?.substringAfter("P.")?.substringBefore(" ") ?: "",
            max = iAd
        )
    }

    fun p(i: Int) {
        this.button_nextEpisode!!.setVisibility(i)
        this.button_nextEpisode!!.setAlpha(1.0f)
        bQ()
    }

    fun q(i: Int) {
        this.button_previousEpisode!!.setVisibility(i)
        this.button_previousEpisode!!.setAlpha(1.0f)
        bQ()
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.picacomic.fregata.activities.ComicViewerActivity$25] */
    fun bQ() {
        if (this.episodeButtonFadeTimer != null) {
            this.episodeButtonFadeTimer!!.cancel()
        }
        this.episodeButtonFadeTimer = object : CountDownTimer(2000L, 2000L) {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.25
            // android.os.CountDownTimer
            override fun onTick(j: Long) {
            }

            // android.os.CountDownTimer
            override fun onFinish() {
                if (this@ComicViewerActivity.button_nextEpisode != null) {
                    this@ComicViewerActivity.button_nextEpisode!!.setAlpha(0.0f)
                }
                if (this@ComicViewerActivity.button_previousEpisode != null) {
                    this@ComicViewerActivity.button_previousEpisode!!.setAlpha(0.0f)
                }
            }
        }.start()
    }

    // com.picacomic.fregata.a_pkg.d
    override fun r(i: Int) {
        f.D(TAG, "Current Page = " + this.currentPage + " pageNumber = " + i)
        if (this.pageList != null) {
            if (this.isLandscape) {
                this.seekBar_verticalPaging!!.setProgress(i)
            } else {
                this.seekBar_horizontalPaging!!.setProgress(i)
            }
            this.comicViewerControlsOverlayView?.setPage(
                label = "",
                progress = i,
                max = bV()
            )
            n(i)
            this.currentPage = i
            if (!this.hasMovedPastFirstLoadedPage && i != 0) {
                this.hasMovedPastFirstLoadedPage = true
            }
            if (this.currentPage >= bV()) {
                bL()
                q(View.GONE)
                if (this.currentPagingPage == this.totalPagingPages) {
                    p(View.VISIBLE)
                    return
                }
                return
            }
            if (this.hasMovedPastFirstLoadedPage && i == 0) {
                if (bT() > 0) {
                    bM()
                    return
                } else {
                    q(View.VISIBLE)
                    p(View.GONE)
                    return
                }
            }
            q(View.GONE)
            p(View.GONE)
        }
    }

    fun bR() {
        if (this.currentPage < bV()) {
            this.currentPage++
            this.comicStatusChangeListener!!.b(this.currentPage, false)
            r(this.currentPage)
        }
    }

    fun bS() {
        if (this.currentPage > 0) {
            this.currentPage--
            this.comicStatusChangeListener!!.b(this.currentPage, false)
            r(this.currentPage)
        }
    }

    fun bT(): Int {
        return this.loadedPageOffset / hq
    }

    fun bU(): Int {
        return (this.loadedPageOffset / hq) * hq
    }

    private fun bV(): Int {
        val size = this.pageList?.size ?: 0
        if (size <= 0) {
            return 0
        }
        return if (this.comicViewerHostView != null) {
            size - 1
        } else {
            g.ad(size)
        }
    }

    companion object {
        const val TAG: String = "ComicViewerActivity"
        private const val REQUEST_WRITE_SETTINGS = 2001
        @JvmField
        var hq: Int = 40
    }
}
