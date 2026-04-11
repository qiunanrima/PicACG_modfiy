package com.picacomic.fregata.activities

import android.app.AlertDialog
import android.content.Context
import android.os.Bundle
import android.view.LayoutInflater
import android.view.MotionEvent
import android.view.View
import android.view.ViewGroup
import android.widget.EditText
import android.widget.ImageButton
import android.widget.RelativeLayout
import android.widget.TextView
import android.widget.Toast
import androidx.activity.compose.setContent
import androidx.appcompat.app.AppCompatDelegate
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Category
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.SportsEsports
import androidx.compose.material.icons.outlined.Category
import androidx.compose.material.icons.outlined.Home
import androidx.compose.material.icons.outlined.Person
import androidx.compose.material.icons.outlined.Settings
import androidx.compose.material.icons.outlined.SportsEsports
import androidx.compose.material3.Icon
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.viewinterop.AndroidView
import androidx.fragment.app.FragmentContainerView
import com.google.gson.Gson
import com.picacomic.fregata.R
import com.picacomic.fregata.b.d
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.fragments.CategoryFragment
import com.picacomic.fregata.fragments.GameFragment
import com.picacomic.fregata.fragments.HomeFragment
import com.picacomic.fregata.fragments.OneTimeUpdateQAFragment
import com.picacomic.fregata.fragments.ProfileFragment
import com.picacomic.fregata.fragments.SettingFragment
import com.picacomic.fregata.objects.requests.AdjustExpBody
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.InitialResponse
import com.picacomic.fregata.objects.responses.RegisterResponse
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.f
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import kotlin.math.abs

/* JADX INFO: loaded from: classes.dex */
class MainActivity : BaseActivity() {

    // Network states
    private var iF: Call<GeneralResponse<InitialResponse?>?>? = null
    private var iG: Call<RegisterResponse?>? = null
    private var iH: InitialResponse? = null

    // Compose State
    private var selectedTabIndex by mutableIntStateOf(0)
    private var bannerVisible by mutableStateOf(false)
    private var popupVisible by mutableStateOf(false)
    private var expButtonsVisible by mutableStateOf(false)

    // Legacy controls overlay
    private var buttonControlBlock: ImageButton? = null
    private var buttonControlExp: ImageButton? = null
    private var expLayoutParams: RelativeLayout.LayoutParams? = null
    private var iJ = 0
    private var iK = 0
    private var iL: Long = 0

    @JvmField
    var iM: Boolean = false
    var iN: Boolean = false

    override fun onCreate(bundle: Bundle?) {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true)
        super.onCreate(bundle)

        setContent {
            MainScreen(
                selectedIndex = selectedTabIndex,
                onTabSelected = { index ->
                    u(index)
                }
            )
        }

        e.j(this, null as String?)
        e.l(this, null as String?)

        // Start initial setups (Fragment loading moved to LaunchedEffect in MainScreen)
        bX()
        g.av(this)

        val strY = e.y(this)
        if (!strY.isNullOrEmpty()) {
            bD()
        }
    }

    @Preview
    @Composable
    private fun MainScreen(
        selectedIndex: Int,
        onTabSelected: (Int) -> Unit
    ) {
        PicaComposeTheme {
            Scaffold(
                bottomBar = {
                    NavigationBar {
                        NavigationBar {
                            data class NavItem(
                                val titleRes: Int,
                                val selectedIcon: ImageVector,
                                val unselectedIcon: ImageVector
                            )

                            val items = listOf(
                                NavItem(
                                    R.string.title_home,
                                    Icons.Filled.Home,
                                    Icons.Outlined.Home
                                ),
                                NavItem(
                                    R.string.title_category,
                                    Icons.Filled.Category,
                                    Icons.Outlined.Category
                                ),
                                NavItem(
                                    R.string.title_game_list,
                                    Icons.Filled.SportsEsports,
                                    Icons.Outlined.SportsEsports
                                ),
                                NavItem(
                                    R.string.title_profile,
                                    Icons.Filled.Person,
                                    Icons.Outlined.Person
                                ),
                                NavItem(
                                    R.string.title_setting,
                                    Icons.Filled.Settings,
                                    Icons.Outlined.Settings
                                )
                            )

                            items.forEachIndexed { index, item ->
                                NavigationBarItem(
                                    selected = selectedIndex == index,
                                    onClick = { onTabSelected(index) },
                                    icon = {
                                        Icon(
                                            imageVector = if (selectedIndex == index)
                                                item.selectedIcon else item.unselectedIcon,
                                            contentDescription = stringResource(id = item.titleRes)
                                        )
                                    },
                                    label = { Text(stringResource(id = item.titleRes)) }
                                )
                            }
                        }
                    }
                }
            ) { innerPadding ->
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(innerPadding)
                ) {
                    // Fragment Container
                    AndroidView(
                        modifier = Modifier.fillMaxSize(),
                        factory = { context ->
                            FragmentContainerView(context).apply {
                                id = R.id.container
                                post {
                                    // Trigger initial fragment load once the view is attached
                                    u(selectedTabIndex)
                                }
                            }
                        },
                        update = { _ ->
                            // Update logic if needed when selectedTabIndex changes
                            // But u(selectedIndex) is already called from NavigationBar onClick
                        }
                    )

                    // Banner WebView
                    if (bannerVisible) {
                        AndroidView(
                            modifier = Modifier
                                .fillMaxWidth()
                                .align(androidx.compose.ui.Alignment.BottomCenter),
                            factory = { context ->
                                com.picacomic.fregata.utils.views.BannerWebview(context).apply {
                                    id = R.id.bannerWebview
                                }
                            }
                        )
                    }

                    // Popup WebView
                    if (popupVisible) {
                        AndroidView(
                            modifier = Modifier.fillMaxSize(),
                            factory = { context ->
                                com.picacomic.fregata.utils.views.PopupWebview(context).apply {
                                    id = R.id.popupWebview
                                }
                            }
                        )
                    }

                    // Floating Buttons Overlay
                    if (expButtonsVisible) {
                        AndroidView(
                            modifier = Modifier.fillMaxSize(),
                            factory = { context ->
                                RelativeLayout(context).apply {
                                    // EXP Button
                                    buttonControlExp = ImageButton(context).apply {
                                        id = R.id.imageButton_control_exp
                                        setImageResource(R.drawable.icon_exp_gray)
                                        setBackgroundResource(android.R.color.transparent)
                                        layoutParams = RelativeLayout.LayoutParams(
                                            ViewGroup.LayoutParams.WRAP_CONTENT,
                                            ViewGroup.LayoutParams.WRAP_CONTENT
                                        ).apply {
                                            addRule(RelativeLayout.ALIGN_PARENT_BOTTOM)
                                            addRule(RelativeLayout.ALIGN_PARENT_START)
                                            bottomMargin =
                                                context.resources.getDimensionPixelSize(R.dimen.padding_4)
                                            marginStart =
                                                context.resources.getDimensionPixelSize(R.dimen.padding_4)
                                        }
                                        setOnTouchListener { v, event ->
                                            handleTouch(v, event)
                                            true
                                        }
                                    }
                                    addView(buttonControlExp)

                                    // Block Button
                                    buttonControlBlock = ImageButton(context).apply {
                                        id = R.id.imageButton_control_block
                                        setImageResource(R.drawable.icon_block_gray)
                                        setBackgroundResource(android.R.color.transparent)
                                        layoutParams = RelativeLayout.LayoutParams(
                                            ViewGroup.LayoutParams.WRAP_CONTENT,
                                            ViewGroup.LayoutParams.WRAP_CONTENT
                                        ).apply {
                                            addRule(
                                                RelativeLayout.RIGHT_OF,
                                                R.id.imageButton_control_exp
                                            )
                                            addRule(
                                                RelativeLayout.ALIGN_TOP,
                                                R.id.imageButton_control_exp
                                            )
                                            marginStart =
                                                context.resources.getDimensionPixelSize(R.dimen.padding_1)
                                        }
                                        setOnClickListener {
                                            v(2) // Toggle block mode
                                        }
                                    }
                                    addView(buttonControlBlock)
                                }
                            }
                        )
                    }
                }
            }
        }
    }

    private fun handleTouch(view: View, event: MotionEvent) {
        val x = event.rawX.toInt()
        val y = event.rawY.toInt()
        when (event.action and MotionEvent.ACTION_MASK) {
            MotionEvent.ACTION_DOWN -> {
                val params = view.layoutParams as RelativeLayout.LayoutParams
                iJ = x - params.leftMargin
                iK = y - params.topMargin
            }

            MotionEvent.ACTION_MOVE -> {
                val params = view.layoutParams as RelativeLayout.LayoutParams
                params.leftMargin = x - iJ
                params.topMargin = y - iK
                params.rightMargin = 0
                params.bottomMargin = 0
                view.layoutParams = params
            }

            MotionEvent.ACTION_UP -> {
                if (abs(x - (iJ + (view.layoutParams as RelativeLayout.LayoutParams).leftMargin)) < 5 &&
                    abs(y - (iK + (view.layoutParams as RelativeLayout.LayoutParams).topMargin)) < 5
                ) {
                    v(1) // Toggle exp mode
                }
            }
        }
    }

    override fun onResume() {
        super.onResume()
    }

    override fun onStop() {
        iF?.cancel()
        iG?.cancel()
        super.onStop()
    }

    fun t(i: Int) {
        // Tab visibility toggling omitted for Compose as Scaffold handles it naturally
        // or hides via a state boolean. For now, leave as no-op.
    }

    private fun u(index: Int) {
        val container = findViewById<View>(R.id.container)
        if (container == null) {
            // Container not ready yet, LaunchedEffect will retry or bH will handle it
            return
        }

        selectedTabIndex = index
        val fragmentManager = supportFragmentManager
        fragmentManager.popBackStack()
        val transaction = fragmentManager.beginTransaction()

        when (index) {
            0 -> transaction.replace(R.id.container, HomeFragment(), HomeFragment.TAG)
            1 -> transaction.replace(R.id.container, CategoryFragment(), CategoryFragment.TAG)
            2 -> transaction.replace(R.id.container, GameFragment(), GameFragment.TAG)
            3 -> transaction.replace(R.id.container, ProfileFragment(), ProfileFragment.TAG)
            4 -> transaction.replace(R.id.container, SettingFragment(), SettingFragment.TAG)
        }
        transaction.commitAllowingStateLoss()
    }

    private fun bH() {
        // Legacy bH behavior adjusted: bX and g.av moved to onCreate, 
        // fragment loading moved to LaunchedEffect.
    }

    private fun bX() {
        iF = d(this).dO().ak(e.z(this))
        iF!!.enqueue(object : Callback<GeneralResponse<InitialResponse?>?> {
            override fun onResponse(
                call: Call<GeneralResponse<InitialResponse?>?>,
                response: Response<GeneralResponse<InitialResponse?>?>
            ) {
                if (response.code() == 200) {
                    iH = response.body()?.data
                    val str = iH?.imageServer
                    if (!str.isNullOrEmpty()) {
                        e.q(this@MainActivity, str)
                    }
                } else {
                    try {
                        com.picacomic.fregata.b.c(
                            this@MainActivity,
                            response.code(),
                            response.errorBody()!!.string()
                        ).dN()
                    } catch (e: Exception) {
                        e.printStackTrace()
                    }
                }
                bI()
            }

            override fun onFailure(call: Call<GeneralResponse<InitialResponse?>?>, th: Throwable) {
                th.printStackTrace()
                com.picacomic.fregata.b.c(this@MainActivity).dN()
                bI()
            }
        })
    }

    private fun bI() {
        val appState = iH?.latestApplication ?: return
        f.D(BaseActivity.TAG, appState.toString())

        iH?.notification?.let {
            if (!it.notificationId.equals(e.aj(this), ignoreCase = true)) {
                e.x(this, it.notificationId)
                e.o(this as Context, true)
            } else {
                e.o(this as Context, false)
            }
        } ?: run {
            e.o(this as Context, false)
        }

        e.k(this, Gson().toJson(iH?.categories))
        val version = appState.version
        if (version != null && g.C(this, version)) {
            AlertDialogCenter.showUpdateApkAlertDialog(
                this,
                appState,
                g.D(this, version)
            )
        }
        if (iH?.isIdUpdated == true) {
            return
        }
        if (findViewById<android.view.View>(R.id.container) == null) {
            // Container not ready, fragment manager will be dispatched once it is
            // or we could retry. For now, pop/replace is only safe when attached.
            return
        }
        supportFragmentManager.popBackStack()
        supportFragmentManager.beginTransaction()
            .replace(R.id.container, OneTimeUpdateQAFragment(), OneTimeUpdateQAFragment.TAG)
            .commit()
    }

    // Following exp & block functions preserved for potential future overlay implementations.

    fun a(i: Int, str: String?) {
        iG = d(this).dO().a(e.z(this), AdjustExpBody(i, str))
        iG!!.enqueue(object : Callback<RegisterResponse?> {
            override fun onResponse(
                call: Call<RegisterResponse?>,
                response: Response<RegisterResponse?>
            ) {
                if (response.code() == 200) {
                    Toast.makeText(this@MainActivity, "ADUST SUCCESS", Toast.LENGTH_SHORT).show()
                } else {
                    try {
                        com.picacomic.fregata.b.c(
                            this@MainActivity,
                            response.code(),
                            response.errorBody()!!.string()
                        ).dN()
                    } catch (e: Exception) {
                        e.printStackTrace()
                    }
                }
            }

            override fun onFailure(call: Call<RegisterResponse?>, th: Throwable) {
                th.printStackTrace()
                com.picacomic.fregata.b.c(this@MainActivity).dN()
                bI()
            }
        })
    }

    fun v(i: Int) {
        if (i == 1) {
            if (iM) l(false) else l(true)
            m(false)
            return
        }
        if (i == 2) {
            if (iN) m(false) else m(true)
            l(false)
        }
    }

    fun l(z: Boolean) {
        iM = z
    }

    fun m(z: Boolean) {
        iN = z
    }

    // -------------------------------------------------------------
    // Legacy support functions for Fragment compatibility during migration
    // -------------------------------------------------------------
    fun bV() {
        bannerVisible = false
    }

    fun bY() {
        expButtonsVisible = !expButtonsVisible
    }

    fun i(str: String?, str2: String?) {
        // Shows EXP adjustment dialog
        val viewInflate = (getSystemService("layout_inflater") as LayoutInflater).inflate(
            R.layout.dialog_exp_content_view,
            findViewById<View?>(android.R.id.content) as ViewGroup?,
            false
        )
        val textView = viewInflate.findViewById<TextView>(R.id.textView_exp_content_view_username)
        val editText = viewInflate.findViewById<EditText>(R.id.editText_exp_content_view_exp)
        textView.text = "$str\nID: $str2"
        AlertDialog.Builder(this, R.style.MyAlertDialogStyle).setTitle(str).setView(viewInflate)
            .setPositiveButton(R.string.ok) { dialogInterface, _ ->
                if (!editText?.text.isNullOrEmpty()) {
                    a(editText!!.text.toString().toInt(), str2)
                }
                l(false)
                dialogInterface.dismiss()
            }.setNegativeButton(R.string.cancel) { dialogInterface, _ ->
                l(false)
                dialogInterface.dismiss()
            }.show()
    }
}
