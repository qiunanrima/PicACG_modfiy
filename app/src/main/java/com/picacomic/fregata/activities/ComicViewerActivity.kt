package com.picacomic.fregata.activities

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.res.Configuration
import android.graphics.drawable.Drawable
import android.media.MediaPlayer
import android.net.ConnectivityManager
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
import androidx.core.app.ActivityCompat
import androidx.core.app.NotificationManagerCompat
import androidx.core.content.ContextCompat
import com.picacomic.fregata.R
import com.picacomic.fregata.adapters.c
import com.picacomic.fregata.databinding.ActivityComicViewerBinding
import com.picacomic.fregata.fragments.ComicViewFragment
import com.picacomic.fregata.fragments.ComicViewerListFragment
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
    var binding: ActivityComicViewerBinding? = null
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
    var hA: c? = null
    var hB: Boolean = false
    var hC: Boolean = false
    var hD: Boolean = false
    var hE: Boolean = false
    var hF: Int = 0
    var hG: Int = 0
    var hH: Int = 0
    var hI: Int = 0
    var hJ: Int = 0
    var hK: ComicEpisodeObject? = null
    var hL: String? = null
    var hM: Int = 0
    var hN: Int = 0
    var hO: Int = 0
    var hP: Int = 0
    var hQ: Boolean = false
    var hR: Boolean = false
    var hS: Boolean = false
    var hT: Boolean = false
    var hU: Boolean = false
    var hV: Boolean = false
    var hX: CountDownTimer? = null
    var hY: CountDownTimer? = null
    var hZ: Call<GeneralResponse<ComicPagesResponse?>?>? = null
    var hr: Animation? = null
    var hs: Animation? = null
    var ht: Animation? = null
    var hu: Animation? = null
    var hv: Animation? = null
    var hw: Animation? = null
    var hx: Animation? = null
    var hy: Animation? = null
    var hz: com.picacomic.fregata.a_pkg.c? = null
    var ia: Call<GeneralResponse<ComicEpisodeResponse?>?>? = null
    var ib: View.OnClickListener? = null
    var ic: View.OnClickListener? = null
    var ie: OnSeekBarChangeListener? = null

    /* JADX INFO: renamed from: if, reason: not valid java name */
    var f1if: ArrayList<ComicPageObject?>? = null
    var ig: ArrayList<ComicEpisodeObject?>? = null

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
    var hW: String = "不明"
    private val ih: BroadcastReceiver? = object : BroadcastReceiver() {
        // from class: com.picacomic.fregata.activities.ComicViewerActivity.1
        // android.content.BroadcastReceiver
        override fun onReceive(context: Context?, intent: Intent) {
            try {
                val intExtra = intent.getIntExtra("level", 0)
                this@ComicViewerActivity.hW = intExtra.toString() + "%"
            } catch (e: Exception) {
                e.printStackTrace()
                if (this@ComicViewerActivity != null) {
                    Toast.makeText(this@ComicViewerActivity, "cannot parse battery level.", 0)
                        .show()
                }
            }
        }
    }
    private val ii: MediaPlayer? = null

    // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onCreate(bundle: Bundle?) {
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

        setSupportActionBar(this.binding!!.layoutToolbar.toolbar)
        this.binding!!.layoutToolbar.toolbar.setTitle("")
        if (getSupportActionBar() != null) {
            getSupportActionBar()!!.setDisplayShowTitleEnabled(false)
        }
        if (bundle == null) {
            if (e.w(this)) {
                getSupportFragmentManager().beginTransaction()
                    .add(R.id.container, ComicViewerListFragment(), ComicViewerListFragment.TAG)
                    .commit()
            } else {
                getSupportFragmentManager().beginTransaction()
                    .add(R.id.container, ComicViewFragment(), ComicViewFragment.TAG).commit()
            }
            init()
            bF()
            bH()
            return
        }
        finish()
    }

    fun init() {
        this.hT = e.Q(this)
        this.hB = e.M(this)
        this.hC = e.N(this)
        this.hE = e.L(this)
        this.hM = e.O(this)
        this.hQ = false
        this.hR = false
        this.hS = false
        this.hF = 0
        this.hG = 1
        this.hI = 0
        this.hJ = 1
        this.hP = 0
        this.hU = false
        this.hV = true
        this.comicId = getIntent().getStringExtra("EXTRA_KEY_COMIC_ID")
        this.hL = getIntent().getStringExtra("EXTRA_KEY_COMIC_TITLE")
        this.episodeOrder = getIntent().getIntExtra("EXTRA_KEY_LAST_VIEW_EPISODE_ORDER", 1)
        this.episodeTotal = getIntent().getIntExtra("EXTRA_KEY_EPISODE_TOTAL", 1)
        this.currentPage = getIntent().getIntExtra("EXTRA_KEY_LAST_VIEW_PAGE", 0)
        val booleanExtra = getIntent().getBooleanExtra("EXTRA_KEY_VIEW_FROM_RECORD", false)
        this.hN = 8
        val dbComicViewRecordObjectAx = b.ax(this.comicId)
        if (dbComicViewRecordObjectAx != null && booleanExtra) {
            this.hP = dbComicViewRecordObjectAx.getPage()
            this.episodeOrder = dbComicViewRecordObjectAx.getEpisodeOrder()
            this.episodeTotal = dbComicViewRecordObjectAx.getEpisodeTotal()
            this.hF = bT()
            this.hG = this.hF + 1
            this.hU = true
        }
        bK()
        bJ()
    }

    fun bF() {
        if (this.ig == null) {
            this.ig = ArrayList<ComicEpisodeObject?>()
        }
        this.hA = com.picacomic.fregata.adapters.c(this, this.ig)
        this.gridView_episodeDialog!!.setAdapter(this.hA as ListAdapter)
        this.gridView_episodeDialog!!.setOnItemClickListener(object : OnItemClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.12
            // android.widget.AdapterView.OnItemClickListener
            override fun onItemClick(adapterView: AdapterView<*>?, view: View?, i: Int, j: Long) {
                if (this@ComicViewerActivity.ig == null || this@ComicViewerActivity.ig!!.size <= i) {
                    return
                }
                this@ComicViewerActivity.episodeOrder =
                    this@ComicViewerActivity.ig!!.get(i)!!.getOrder()
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
                this@ComicViewerActivity.k(8)
                this@ComicViewerActivity.l(0)
                e.c(this@ComicViewerActivity as Context, true)
            }
        })
        this.button_share!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.28
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                Toast.makeText(this@ComicViewerActivity, "Download and Share Image", 0).show()
            }
        })
        this.button_download!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.29
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                Toast.makeText(this@ComicViewerActivity, "Download Current Image", 0).show()
            }
        })
        this.button_screenOrientation!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.30
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                if (this@ComicViewerActivity.hB) {
                    this@ComicViewerActivity.hB = false
                    this@ComicViewerActivity.h(false)
                } else {
                    this@ComicViewerActivity.hB = true
                    this@ComicViewerActivity.h(true)
                }
                e.e(this@ComicViewerActivity, this@ComicViewerActivity.hB)
            }
        })
        this.button_scrollOrientation!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.31
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                if (this@ComicViewerActivity.hC) {
                    this@ComicViewerActivity.hC = false
                    this@ComicViewerActivity.i(false)
                } else {
                    this@ComicViewerActivity.hC = true
                    this@ComicViewerActivity.i(true)
                }
                e.f(this@ComicViewerActivity, this@ComicViewerActivity.hC)
            }
        })
        this.button_autoPaging!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.2
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                if (this@ComicViewerActivity.linearLayout_dialogAutoPaging!!.getVisibility() == 0) {
                    this@ComicViewerActivity.linearLayout_dialogAutoPaging!!.setVisibility(8)
                    return
                }
                if (this@ComicViewerActivity.gridView_episodeDialog!!.getVisibility() == 0) {
                    this@ComicViewerActivity.gridView_episodeDialog!!.setVisibility(8)
                }
                this@ComicViewerActivity.linearLayout_dialogAutoPaging!!.setVisibility(0)
            }
        })
        this.button_dialogAutoPagingStart!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.3
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                this@ComicViewerActivity.k(8)
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
                this@ComicViewerActivity.k(8)
            }
        })
        this.button_selectEpisode!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.6
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                if (this@ComicViewerActivity.gridView_episodeDialog!!.getVisibility() == 0) {
                    this@ComicViewerActivity.gridView_episodeDialog!!.setVisibility(8)
                    return
                }
                if (this@ComicViewerActivity.linearLayout_dialogAutoPaging!!.getVisibility() == 0) {
                    this@ComicViewerActivity.linearLayout_dialogAutoPaging!!.setVisibility(8)
                }
                this@ComicViewerActivity.gridView_episodeDialog!!.setVisibility(0)
                this@ComicViewerActivity.bN()
            }
        })
        this.button_nightMode!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.7
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                if (this@ComicViewerActivity.hE) {
                    this@ComicViewerActivity.k(false)
                } else {
                    this@ComicViewerActivity.k(true)
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
            override fun onCheckedChanged(compoundButton: CompoundButton?, z: Boolean) {
                this@ComicViewerActivity.j(z)
            }
        })
        this.ib = object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.10
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                this@ComicViewerActivity.k(0)
                this@ComicViewerActivity.bP()
            }
        }
        this.button_panel!!.setOnClickListener(this.ib)
        this.button_panelLeftCorner!!.setOnClickListener(this.ib)
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
        this.ie = object : OnSeekBarChangeListener {
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
                    this@ComicViewerActivity.hz!!.b(this.ik, false)
                    this@ComicViewerActivity.r(this@ComicViewerActivity.currentPage)
                }
            }
        }
        this.seekBar_horizontalPaging!!.setOnSeekBarChangeListener(this.ie)
        this.seekBar_verticalPaging!!.setOnSeekBarChangeListener(this.ie)
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
                this@ComicViewerActivity.hM = (i * 100) + 1000
                e.b(this@ComicViewerActivity as Context, this@ComicViewerActivity.hM)
                val textView = this@ComicViewerActivity.textView_dialogAutoPagingTitle!!
                textView.setText(
                    this@ComicViewerActivity.getResources()
                        .getString(R.string.comic_viewer_setting_panel_auto_paging) + " 【 " + String.format(
                        "%.1f",
                        this@ComicViewerActivity.hM / 1000.0f
                    ) + this@ComicViewerActivity.getResources().getString(R.string.second) + " 】"
                )
            }
        })
        this.ic = object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.15
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                this@ComicViewerActivity.bR()
            }
        }
        this.button_nextPageBottom!!.setOnClickListener(this.ic)
        this.button_nextPageRight!!.setOnClickListener(this.ic)
        this.button_nextEpisode!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.16
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                if (this@ComicViewerActivity.episodeOrder < this@ComicViewerActivity.episodeTotal) {
                    this@ComicViewerActivity.episodeOrder++
                    this@ComicViewerActivity.b(this@ComicViewerActivity.episodeOrder, 0, true)
                } else {
                    this@ComicViewerActivity.p(8)
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
                    this@ComicViewerActivity.q(8)
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
        this.frameLayout_gestureArea!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.19
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                this@ComicViewerActivity.l(4)
                e.c(this@ComicViewerActivity as Context, false)
            }
        })
    }

    fun bG() {
        this.currentPage = 0
        this.hF = 0
        this.hG = 1
        this.hP = 0
        this.hS = false
        this.hQ = false
        this.hU = false
    }

    fun bH() {
        k(8)
        h(this.hB)
        i(this.hC)
        k(this.hE)
        if (this.hM + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED < 0) {
            this.seekBar_dialogAutoPaging!!.setProgress(0)
        } else {
            this.seekBar_dialogAutoPaging!!.setProgress((this.hM + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED) / 100)
        }
        if (e.K(this)) {
            k(8)
            l(0)
        } else {
            k(8)
            l(4)
        }
    }

    fun bI() {
        p(8)
        q(8)
        n(this.currentPage)
        if (this.hK != null) {
            this.textView_title!!.setText("〖" + this.hK!!.getTitle() + "〗 ")
            val spannableString = SpannableString(this.hL)
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
        if (Build.VERSION.SDK_INT < 21 || ContextCompat.checkSelfPermission(
                this,
                "android.permission.WRITE_SETTINGS"
            ) == 0
        ) {
            return
        }
        ActivityCompat.requestPermissions(
            this,
            arrayOf<String>("android.permission.WRITE_SETTINGS"),
            2001
        )
        if (ActivityCompat.shouldShowRequestPermissionRationale(
                this,
                "android.permission.WRITE_SETTINGS"
            )
        ) {
            Toast.makeText(this, "To ", 0).show()
        } else {
            ActivityCompat.requestPermissions(
                this,
                arrayOf<String>("android.permission.WRITE_SETTINGS"),
                2001
            )
        }
    }

    fun bK() {
        this.hr = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_left_enter)
        this.hs = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_left_exit)
        this.ht = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_right_enter)
        this.hu = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_right_exit)
        this.hv = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_top_enter)
        this.hw = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_top_exit)
        this.hx = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_bottom_enter)
        this.hy = AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_bottom_exit)
    }

    // com.picacomic.fregata.activities.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onResume() {
        super.onResume()
        bK()
        try {
            if (this.ih != null) {
                registerReceiver(this.ih, IntentFilter("android.intent.action.BATTERY_CHANGED"))
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    // com.picacomic.fregata.activities.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onPause() {
        if (this.hK != null && this.hK!!.getTitle() != null) {
            val title = this.hK!!.getTitle()
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
        if (this.hK != null && this.hK!!.getTitle() != null) {
            title = this.hK!!.getTitle()
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
    override fun onStop() {
        bP()
        if (this.hZ != null) {
            this.hZ!!.cancel()
        }
        if (this.ia != null) {
            this.ia!!.cancel()
        }
        if (this.hx != null) {
            this.hx!!.cancel()
        }
        if (this.hy != null) {
            this.hy!!.cancel()
        }
        if (this.hr != null) {
            this.hr!!.cancel()
        }
        if (this.hs != null) {
            this.hs!!.cancel()
        }
        if (this.ht != null) {
            this.ht!!.cancel()
        }
        if (this.hu != null) {
            this.hu!!.cancel()
        }
        if (this.hv != null) {
            this.hv!!.cancel()
        }
        if (this.hw != null) {
            this.hw!!.cancel()
        }
        if (this.hY != null) {
            this.hY!!.cancel()
        }
        super.onStop()
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
            c(this.episodeOrder, this.hF, false)
        } else {
            d(this.episodeOrder, this.hF, false)
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
                this.f1if!!.clear()
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
            this.hK = (listFind.get(0) as DownloadComicEpisodeObject).getComicEpisodeObject()
            this.hH = (listFind.get(0) as DownloadComicEpisodeObject).getTotal()
            if (this.hH < hq) {
                this.hG = 1
            } else if (this.hH % hq == 0) {
                this.hG = this.hH / hq
            } else {
                this.hG = (this.hH / hq) + 1
            }
            var listFindWithQuery: MutableList<*>? = null
            if (this.hG > i2) {
                listFindWithQuery = DownloadComicPageObject.findWithQuery<DownloadComicPageObject?>(
                    DownloadComicPageObject::class.java,
                    "SELECT * FROM download_comic_page_object WHERE episode_id = ? LIMIT ? OFFSET ?",
                    this.hK!!.getEpisodeId(),
                    hq.toString() + "",
                    (hq * i2).toString() + ""
                )
                f.D(
                    TAG,
                    "SIZE = " + listFindWithQuery.size + "LIMIT = " + hq + " OFFSET = " + (hq * i2)
                )
                this.hF = i2 + 1
            }
            if (this.f1if == null) {
                this.f1if = ArrayList<ComicPageObject?>()
            }
            if (listFindWithQuery != null && listFindWithQuery.size > 0) {
                val arrayList = ArrayList<ComicPageObject?>()
                for (i3 in listFindWithQuery.indices) {
                    val comicPageObject =
                        (listFindWithQuery.get(i3) as DownloadComicPageObject).getComicPageObject()
                    this.f1if!!.add(comicPageObject)
                    arrayList.add(comicPageObject)
                }
                this.hz!!.a(arrayList, this.hP, this.hU, z)
                if (this.hU) {
                    this.hU = false
                }
                o(this.f1if!!.size)
                bI()
            } else {
                f.D(TAG, "Load DownloadComicPageObjectList DB FAILED")
            }
        } else {
            f.D(TAG, "Load DownloadComicEpisodeObject DB FAILED")
        }
        f.D(TAG, "current Page = " + this.currentPage)
        f.D(TAG, "Comic Paging Page = " + this.hF)
        f.D(TAG, "Comic Paging Page Total = " + this.hG)
        f.D(TAG, "jumpingPage = " + this.hP)
        f.D(TAG, "episodeOrder = " + this.episodeOrder)
        f.D(TAG, "episodeTotal = " + this.episodeTotal)
        f.D(TAG, "episodePagingPage = " + this.hI)
        f.D(TAG, "episodePagingPageTotal = " + this.hJ)
    }

    fun d(i: Int, i2: Int, z: Boolean) {
        f.D(TAG, "Call Comic Page ?")
        if (i2 >= this.hG || this.hR) {
            return
        }
        this.hR = true
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
        this.hZ = dVar.dO().a(e.z(this), this.comicId, i, i3)
        this.hZ!!.enqueue(object : Callback<GeneralResponse<ComicPagesResponse?>?> {
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
                            this@ComicViewerActivity.f1if!!.clear()
                        }
                        this@ComicViewerActivity.hH = response.body()!!.data!!.getPages().getTotal()
                        this@ComicViewerActivity.hF = response.body()!!.data!!.getPages().getPage()
                        this@ComicViewerActivity.hG = response.body()!!.data!!.getPages().getPages()
                        this@ComicViewerActivity.hK = response.body()!!.data!!.getEp()
                        if (this@ComicViewerActivity.f1if == null) {
                            this@ComicViewerActivity.f1if = ArrayList<ComicPageObject?>()
                        }
                        for (i4 in response.body()!!.data!!.getPages().getDocs().indices) {
                            this@ComicViewerActivity.f1if!!.add(
                                response.body()!!.data!!.getPages().getDocs().get(i4)
                            )
                        }
                        f.D(TAG, "current Page = " + this@ComicViewerActivity.currentPage)
                        f.D(TAG, "Comic Paging Page = " + this@ComicViewerActivity.hF)
                        f.D(TAG, "Comic Paging Page Total = " + this@ComicViewerActivity.hG)
                        f.D(TAG, "jumpingPage = " + this@ComicViewerActivity.hP)
                        f.D(TAG, "episodeOrder = " + this@ComicViewerActivity.episodeOrder)
                        f.D(TAG, "episodeTotal = " + this@ComicViewerActivity.episodeTotal)
                        f.D(TAG, "episodePagingPage = " + this@ComicViewerActivity.hI)
                        f.D(TAG, "episodePagingPageTotal = " + this@ComicViewerActivity.hJ)
                        this@ComicViewerActivity.hz!!.a(
                            response.body()!!.data!!.getPages().getDocs(),
                            this@ComicViewerActivity.hP,
                            this@ComicViewerActivity.hU,
                            z
                        )
                        if (this@ComicViewerActivity.hU) {
                            this@ComicViewerActivity.hU = false
                        }
                        this@ComicViewerActivity.o(this@ComicViewerActivity.f1if!!.size)
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
                this@ComicViewerActivity.hR = false
                this@ComicViewerActivity.bC()
            }

            // retrofit2.Callback
            override fun onFailure(
                call: Call<GeneralResponse<ComicPagesResponse?>?>,
                th: Throwable
            ) {
                this@ComicViewerActivity.hR = false
                th.printStackTrace()
                this@ComicViewerActivity.bC()
            }
        })
    }

    fun bM() {
        f.D(TAG, "Call Comic Page ?")
        if (bT() <= 0 || this.hR) {
            return
        }
        this.hR = true
        C(getResources().getString(R.string.loading_comic_viewer))
        this.hZ =
            com.picacomic.fregata.b.d(this).dO().a(e.z(this), this.comicId, this.episodeOrder, bT())
        this.hZ!!.enqueue(object : Callback<GeneralResponse<ComicPagesResponse?>?> {
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
                        this@ComicViewerActivity.hH = response.body()!!.data!!.getPages().getTotal()
                        this@ComicViewerActivity.f1if!!.addAll(
                            0,
                            response.body()!!.data!!.getPages().getDocs()
                        )
                        this@ComicViewerActivity.hP -= hq
                        f.D(TAG, "current Page = " + this@ComicViewerActivity.currentPage)
                        f.D(TAG, "Comic Paging Page = " + this@ComicViewerActivity.hF)
                        f.D(TAG, "Comic Paging Page Total = " + this@ComicViewerActivity.hG)
                        f.D(TAG, "jumpingPage = " + this@ComicViewerActivity.hP)
                        f.D(TAG, "episodeOrder = " + this@ComicViewerActivity.episodeOrder)
                        f.D(TAG, "episodeTotal = " + this@ComicViewerActivity.episodeTotal)
                        f.D(TAG, "episodePagingPage = " + this@ComicViewerActivity.hI)
                        f.D(TAG, "episodePagingPageTotal = " + this@ComicViewerActivity.hJ)
                        this@ComicViewerActivity.hz!!.a(
                            response.body()!!.data!!.getPages().getDocs(),
                            this@ComicViewerActivity.hP,
                            false,
                            false
                        )
                        this@ComicViewerActivity.o(this@ComicViewerActivity.f1if!!.size)
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
                this@ComicViewerActivity.hR = false
                this@ComicViewerActivity.bC()
            }

            // retrofit2.Callback
            override fun onFailure(
                call: Call<GeneralResponse<ComicPagesResponse?>?>,
                th: Throwable
            ) {
                this@ComicViewerActivity.hR = false
                th.printStackTrace()
                this@ComicViewerActivity.bC()
            }
        })
    }

    fun bN() {
        if (this.hI < this.hJ) {
            bA()
            this.ia = com.picacomic.fregata.b.d(this).dO().b(e.z(this), this.comicId, this.hI + 1)
            this.ia!!.enqueue(object : Callback<GeneralResponse<ComicEpisodeResponse?>?> {
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
                            this@ComicViewerActivity.hI =
                                response.body()!!.data!!.getEps().getPage()
                            this@ComicViewerActivity.hJ =
                                response.body()!!.data!!.getEps().getPages()
                            for (i in response.body()!!.data!!.getEps().getDocs().indices) {
                                this@ComicViewerActivity.ig!!.add(
                                    response.body()!!.data!!.getEps().getDocs().get(i)
                                )
                            }
                            this@ComicViewerActivity.hA!!.notifyDataSetChanged()
                            f.D(TAG, this@ComicViewerActivity.ig!!.size.toString() + "")
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
        if (this.hz != null) {
            if (!z) {
                setRequestedOrientation(6)
                if (this.hz != null) {
                    this.hz!!.M(6)
                    return
                }
                return
            }
            setRequestedOrientation(7)
            if (this.hz != null) {
                this.hz!!.M(7)
            }
        }
    }

    fun i(z: Boolean) {
        if (this.hz != null) {
            this.hz!!.B(z)
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
        this.hz = cVar
    }

    fun k(i: Int) {
        bK()
        this.relativeLayout_leftPanel!!.setVisibility(i)
        this.linearLayout_rightPanel!!.setVisibility(i)
        this.relativeLayout_toolbar!!.setVisibility(i)
        this.linearLayout_bottomPanel!!.setVisibility(i)
        if (i == 0) {
            if (!e.x(this)) {
                this.relativeLayout_leftPanel!!.startAnimation(this.hr)
                this.linearLayout_rightPanel!!.startAnimation(this.ht)
                this.relativeLayout_toolbar!!.startAnimation(this.hv)
                this.linearLayout_bottomPanel!!.startAnimation(this.hx)
            }
            l(8)
            return
        }
        if (!e.x(this)) {
            this.relativeLayout_leftPanel!!.startAnimation(this.hs)
            this.linearLayout_rightPanel!!.startAnimation(this.hu)
            this.relativeLayout_toolbar!!.startAnimation(this.hw)
            this.linearLayout_bottomPanel!!.startAnimation(this.hy)
        }
        this.gridView_episodeDialog!!.setVisibility(8)
        this.linearLayout_dialogAutoPaging!!.setVisibility(8)
        l(4)
    }

    fun l(i: Int) {
        if (i == 4) {
            this.button_nextPageRight!!.setVisibility(0)
            this.button_nextPageBottom!!.setVisibility(0)
            this.button_previousPage!!.setVisibility(0)
            this.button_panel!!.setVisibility(0)
            this.button_panelLeftCorner!!.setVisibility(0)
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
            this.frameLayout_gestureArea!!.setVisibility(8)
            return
        }
        if (i == 8) {
            this.button_nextPageRight!!.setVisibility(8)
            this.button_nextPageBottom!!.setVisibility(8)
            this.button_previousPage!!.setVisibility(8)
            this.button_panel!!.setVisibility(8)
            this.button_panelLeftCorner!!.setVisibility(8)
            this.button_panel!!.setText("")
            this.button_panelLeftCorner!!.setText("")
            this.button_panel!!.setBackgroundColor(getResources().getColor(R.color.transparent))
            this.button_panelLeftCorner!!.setBackgroundColor(getResources().getColor(R.color.transparent))
            this.frameLayout_gestureArea!!.setVisibility(8)
            return
        }
        if (i == 0) {
            this.button_nextPageRight!!.setVisibility(0)
            this.button_nextPageBottom!!.setVisibility(0)
            this.button_previousPage!!.setVisibility(0)
            this.button_panel!!.setVisibility(0)
            this.button_panelLeftCorner!!.setVisibility(0)
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
            this.frameLayout_gestureArea!!.setVisibility(0)
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
        this.hD = z
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
        this.hO = i
    }

    fun k(z: Boolean) {
        if (z) {
            this.frameLayout_nightModeMask!!.setVisibility(0)
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
            this.frameLayout_nightModeMask!!.setVisibility(8)
            this.button_nightMode!!.setCompoundDrawablesWithIntrinsicBounds(
                null as Drawable?,
                ContextCompat.getDrawable(getApplicationContext(), R.drawable.ic_action_night),
                null as Drawable?,
                null as Drawable?
            )
            this.button_nightMode!!.setTextColor(ContextCompat.getColor(this, R.color.white))
        }
        this.hE = z
        e.d(this, this.hE)
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.picacomic.fregata.activities.ComicViewerActivity$24] */
    fun bO() {
        if (this.hM > 0) {
            this.hX = object : CountDownTimer(this.hM.toLong(), this.hM.toLong()) {
                // from class: com.picacomic.fregata.activities.ComicViewerActivity.24
                // android.os.CountDownTimer
                override fun onTick(j: Long) {
                }

                // android.os.CountDownTimer
                override fun onFinish() {
                    if (this@ComicViewerActivity.currentPage < g.ad(this@ComicViewerActivity.f1if!!.size)) {
                        this@ComicViewerActivity.currentPage++
                        this@ComicViewerActivity.hz!!.b(this@ComicViewerActivity.currentPage, false)
                        this@ComicViewerActivity.r(this@ComicViewerActivity.currentPage)
                        this@ComicViewerActivity.bO()
                    }
                }
            }.start()
        }
    }

    fun bP() {
        if (this.hX != null) {
            this.hX!!.cancel()
            this.hX = null
        }
    }

    // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    override fun onKeyDown(i: Int, keyEvent: KeyEvent?): Boolean {
        if (this.hT) {
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
            this.linearLayout_horizontalPagingScrollbar!!.setVisibility(0)
            this.linearLayout_verticalPagingScrollbar!!.setVisibility(8)
        } else if (configuration.orientation == 1) {
            this.linearLayout_horizontalPagingScrollbar!!.setVisibility(8)
            this.linearLayout_verticalPagingScrollbar!!.setVisibility(0)
        }
    }

    // com.picacomic.fregata.activities.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    override fun onRequestPermissionsResult(i: Int, strArr: Array<String?>, iArr: IntArray) {
        if (i == 2001 && iArr.size > 0) {
            val i2 = iArr[0]
        }
    }

    fun n(i: Int) {
        var string: String?
        val string2: String?
        string = ""
        try {
            val connectivityManager = getSystemService("connectivity") as ConnectivityManager
            val zIsConnectedOrConnecting =
                connectivityManager.getNetworkInfo(0)!!.isConnectedOrConnecting()
            val zIsConnectedOrConnecting2 =
                connectivityManager.getNetworkInfo(1)!!.isConnectedOrConnecting()
            println(zIsConnectedOrConnecting.toString() + " net " + zIsConnectedOrConnecting2)
            if (!zIsConnectedOrConnecting && !zIsConnectedOrConnecting2) {
                string2 = getString(R.string.network_status_no_network)
            } else {
                string =
                    if (zIsConnectedOrConnecting2) getString(R.string.network_status_wifi) else ""
                if (zIsConnectedOrConnecting) {
                    string2 = getString(R.string.network_status_mobile)
                    try {
                        if (this.hV) {
                            AlertDialogCenter.usingMobileNetwork(this)
                            this.hV = false
                        }
                    } catch (e: Exception) {
                        e = e
                        string = string2
                        e.printStackTrace()
                        Toast.makeText(this, "Cannot get NetworkInfo", 0).show()
                    }
                } else {
                    string2 = string
                }
            }
            string = string2
        } catch (e2: Exception) {
            val e = e2
        }
        if (this.f1if != null) {
            val i2 = this.hH
            if (g.ac(i) + 1 > this.f1if!!.size) {
                this.textView_horizontalPage!!.setText("完/" + i2)
                this.textView_verticalPage!!.setText("完/" + i2)
                this.textView_page!!.setText("完/" + i2 + " " + string + " 電量:" + this.hW)
                return
            }
            this.textView_horizontalPage!!.setText((g.ac(i) + 1 + bU()).toString() + "/" + i2)
            this.textView_verticalPage!!.setText((g.ac(i) + 1 + bU()).toString() + "/" + i2)
            this.textView_page!!.setText("P." + (g.ac(i) + 1 + bU()) + "/" + i2 + " " + string + " 電量:" + this.hW)
        }
    }

    fun o(i: Int) {
        val iAd = g.ad(i)
        this.seekBar_verticalPaging!!.setMax(iAd)
        this.seekBar_horizontalPaging!!.setMax(iAd)
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
        if (this.hY != null) {
            this.hY!!.cancel()
        }
        this.hY = object : CountDownTimer(2000L, 2000L) {
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
        if (this.f1if != null) {
            if (this.hB) {
                this.seekBar_verticalPaging!!.setProgress(i)
            } else {
                this.seekBar_horizontalPaging!!.setProgress(i)
            }
            n(i)
            this.currentPage = i
            if (!this.hQ && i != 0) {
                this.hQ = true
            }
            if (this.currentPage == g.ad(this.f1if!!.size)) {
                bL()
                q(8)
                if (this.hF == this.hG) {
                    p(0)
                    return
                }
                return
            }
            if (this.hQ && i == 0) {
                if (bT() > 0) {
                    bM()
                    return
                } else {
                    q(0)
                    p(8)
                    return
                }
            }
            q(8)
            p(8)
        }
    }

    fun bR() {
        if (this.currentPage < g.ad(this.f1if!!.size)) {
            this.currentPage++
            this.hz!!.b(this.currentPage, false)
            r(this.currentPage)
        }
    }

    fun bS() {
        if (this.currentPage > 0) {
            this.currentPage--
            this.hz!!.b(this.currentPage, false)
            r(this.currentPage)
        }
    }

    fun bT(): Int {
        return this.hP / hq
    }

    fun bU(): Int {
        return (this.hP / hq) * hq
    }

    companion object {
        const val TAG: String = "ComicViewerActivity"
        var hq: Int = 40
    }
}
