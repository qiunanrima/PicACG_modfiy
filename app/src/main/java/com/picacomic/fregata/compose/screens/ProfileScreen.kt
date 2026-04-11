package com.picacomic.fregata.compose.screens

import android.view.View
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
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
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme

/**
 * Profile screen. The legacy XML content (avatar, level, tabs/ViewPager) is embedded
 * via [AndroidView]. A Compose top-bar with Edit button sits above.
 *
 * @param legacyContentView  Inflated [R.layout.layout_profile_compose_content].
 * @param onEdit  Called when the Edit button is tapped.
 */
@Preview
@Composable
fun ProfileScreen(
    onEdit: () -> Unit,
) {
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
                        text = stringResource(R.string.title_profile),
                        style = MaterialTheme.typography.titleLarge
                    )
                    TextButton(onClick = onEdit) {
                        Text(text = stringResource(R.string.edit))
                    }
                }
            }
            Box(modifier = Modifier.weight(1f)) {
                AndroidView(
                    factory = { context ->
                        android.view.LayoutInflater.from(context).inflate(R.layout.layout_profile_compose_content, null, false)
                    },
                    modifier = Modifier.fillMaxSize(),
                    update = { view ->
                        try {
                            val context = view.context
                            
                            // Get all views
                            val avatarView = view.findViewById<de.hdodenhof.circleimageview.CircleImageView>(R.id.imageView_profile_avatar)
                            val avatarBlurView = view.findViewById<android.widget.ImageView>(R.id.imageView_profile_avatar_blur)
                            val characterView = view.findViewById<android.widget.ImageView>(R.id.imageView_profile_character)
                            val verifiedView = view.findViewById<android.widget.ImageView>(R.id.imageView_profile_verified)
                            val levelTextView = view.findViewById<android.widget.TextView>(R.id.textView_profile_level)
                            val nameTextView = view.findViewById<android.widget.TextView>(R.id.textView_profile_name)
                            val honorTextView = view.findViewById<android.widget.TextView>(R.id.textView_profile_honor)
                            val sloganTextView = view.findViewById<android.widget.TextView>(R.id.textView_profile_slogan)
                            val expCircleView = view.findViewById<com.picacomic.fregata.utils.views.ExpCircleView>(R.id.expCircleView_profile)
                            
                            // Load user profile data (only once)
                            if (avatarView?.tag == null) {
                                avatarView?.tag = "loaded"
                                
                                val auth = com.picacomic.fregata.utils.e.z(context)
                                val api = com.picacomic.fregata.b.d(context).dO()
                                
                                api.am(auth).enqueue(object : retrofit2.Callback<com.picacomic.fregata.objects.responses.GeneralResponse<com.picacomic.fregata.objects.responses.UserProfileResponse>> {
                                    override fun onResponse(
                                        call: retrofit2.Call<com.picacomic.fregata.objects.responses.GeneralResponse<com.picacomic.fregata.objects.responses.UserProfileResponse>>,
                                        response: retrofit2.Response<com.picacomic.fregata.objects.responses.GeneralResponse<com.picacomic.fregata.objects.responses.UserProfileResponse>>
                                    ) {
                                        if (response.code() == 200) {
                                            val userProfile = response.body()?.data?.user
                                            if (userProfile != null) {
                                                try {
                                                    // Load avatar
                                                    if (userProfile.avatar != null) {
                                                        com.squareup.picasso.Picasso.with(context)
                                                            .load(com.picacomic.fregata.utils.g.b(userProfile.avatar))
                                                            .into(avatarView)
                                                        // Load blurred avatar
                                                        com.squareup.picasso.Picasso.with(context)
                                                            .load(com.picacomic.fregata.utils.g.b(userProfile.avatar))
                                                            .into(object : com.squareup.picasso.Target {
                                                                override fun onBitmapLoaded(bitmap: android.graphics.Bitmap?, from: com.squareup.picasso.Picasso.LoadedFrom?) {
                                                                    if (bitmap != null) {
                                                                        avatarBlurView?.setImageBitmap(com.picacomic.fregata.utils.g.a(bitmap, 0.5f, 5))
                                                                    }
                                                                }
                                                                override fun onBitmapFailed(errorDrawable: android.graphics.drawable.Drawable?) {}
                                                                override fun onPrepareLoad(placeHolderDrawable: android.graphics.drawable.Drawable?) {}
                                                            })
                                                    }
                                                    
                                                    // Load character if exists
                                                    if (userProfile.character != null) {
                                                        com.squareup.picasso.Picasso.with(context)
                                                            .load(userProfile.character)
                                                            .into(characterView)
                                                        characterView?.visibility = android.view.View.VISIBLE
                                                    } else {
                                                        characterView?.visibility = android.view.View.GONE
                                                    }
                                                    
                                                    // Set verified badge
                                                    verifiedView?.visibility = if (userProfile.isVerified) android.view.View.VISIBLE else android.view.View.GONE
                                                    
                                                    // Set text fields
                                                    levelTextView?.text = "${userProfile.level} (${userProfile.exp}/10000)"
                                                    nameTextView?.text = userProfile.name
                                                    honorTextView?.text = userProfile.title ?: "暂无头衔"
                                                    sloganTextView?.text = userProfile.slogan ?: "这个用户很懒，什么都没写~"
                                                    
                                                    // Set exp circle angle (假设最大经验值为10000)
                                                    if (expCircleView != null) {
                                                        val angle = (userProfile.exp * 360f) / 10000f
                                                        expCircleView.setAngle(angle)
                                                    }
                                                } catch (e: Exception) {
                                                    e.printStackTrace()
                                                }
                                            }
                                        }
                                    }
                                    
                                    override fun onFailure(call: retrofit2.Call<com.picacomic.fregata.objects.responses.GeneralResponse<com.picacomic.fregata.objects.responses.UserProfileResponse>>, t: Throwable) {
                                        t.printStackTrace()
                                    }
                                })
                            }
                        } catch (e: Exception) {
                            e.printStackTrace()
                        }
                    }
                )
            }
        }
    }
}
