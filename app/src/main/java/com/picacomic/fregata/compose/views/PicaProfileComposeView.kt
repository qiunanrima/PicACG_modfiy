package com.picacomic.fregata.compose.views

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.widget.ImageView
import android.widget.TextView
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.AbstractComposeView
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.viewpager.widget.ViewPager
import com.google.android.material.tabs.TabLayout
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.utils.views.ExpCircleView
import de.hdodenhof.circleimageview.CircleImageView

class PicaProfileComposeView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : AbstractComposeView(context, attrs, defStyleAttr) {

    private val legacyContentView: View =
        LayoutInflater.from(context).inflate(R.layout.layout_profile_compose_content, this, false)
    private val avatarView: CircleImageView = legacyContentView.findViewById(R.id.imageView_profile_avatar)
    private val avatarBlurView: ImageView = legacyContentView.findViewById(R.id.imageView_profile_avatar_blur)
    private val characterView: ImageView = legacyContentView.findViewById(R.id.imageView_profile_character)
    private val verifiedView: ImageView = legacyContentView.findViewById(R.id.imageView_profile_verified)
    private val expCircleView: ExpCircleView = legacyContentView.findViewById(R.id.expCircleView_profile)
    private val honorTextView: TextView = legacyContentView.findViewById(R.id.textView_profile_honor)
    private val levelTextView: TextView = legacyContentView.findViewById(R.id.textView_profile_level)
    private val nameTextView: TextView = legacyContentView.findViewById(R.id.textView_profile_name)
    private val punchInTextView: TextView = legacyContentView.findViewById(R.id.textView_profile_punch_in)
    private val sloganTextView: TextView = legacyContentView.findViewById(R.id.textView_profile_slogan)
    private val tabLayout: TabLayout = legacyContentView.findViewById(R.id.tabs)
    private val viewPager: ViewPager = legacyContentView.findViewById(R.id.viewPager_profile)

    private var editAction: Runnable? by mutableStateOf(null)
    private var punchInAction: Runnable? by mutableStateOf(null)
    private var avatarAction: Runnable? by mutableStateOf(null)

    init {
        punchInTextView.setOnClickListener { punchInAction?.run() }
        avatarView.setOnClickListener { avatarAction?.run() }
    }

    fun getAvatarView(): CircleImageView = avatarView
    fun getAvatarBlurView(): ImageView = avatarBlurView
    fun getCharacterView(): ImageView = characterView
    fun getVerifiedView(): ImageView = verifiedView
    fun getExpCircleView(): ExpCircleView = expCircleView
    fun getHonorTextView(): TextView = honorTextView
    fun getLevelTextView(): TextView = levelTextView
    fun getNameTextView(): TextView = nameTextView
    fun getPunchInTextView(): TextView = punchInTextView
    fun getSloganTextView(): TextView = sloganTextView
    fun getTabLayout(): TabLayout = tabLayout
    fun getViewPager(): ViewPager = viewPager

    fun setOnEditAction(value: Runnable?) { editAction = value }
    fun setOnPunchInAction(value: Runnable?) { punchInAction = value }
    fun setOnAvatarAction(value: Runnable?) { avatarAction = value }

    @Preview
@Composable
    override fun Content() {
        PicaComposeTheme {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .background(MaterialTheme.colorScheme.background)
            ) {
                Surface(shadowElevation = 2.dp, tonalElevation = 2.dp) {
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 20.dp, vertical = 14.dp),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            text = context.getString(R.string.title_profile),
                            style = MaterialTheme.typography.titleLarge
                        )
                        TextButton(onClick = { editAction?.run() }) {
                            Text(text = context.getString(R.string.edit))
                        }
                    }
                }
                AndroidView(
                    factory = { legacyContentView },
                    modifier = Modifier.fillMaxSize()
                )
            }
        }
    }
}
