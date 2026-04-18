package com.picacomic.fregata.compose.screens

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.views.LegacyFragmentHost
import com.picacomic.fregata.fragments.AnonymousChatFragment
import com.picacomic.fregata.utils.views.AlertDialogCenter

@Composable
fun AnonymousChatScreen(
    onBack: () -> Unit
) {
    val context = LocalContext.current

    BackHandler {
        AlertDialogCenter.showCustomAlertDialog(
            context,
            R.drawable.icon_exclamation_error,
            R.string.anonymous_chat_exit_title,
            R.string.anonymous_chat_exit_message,
            android.view.View.OnClickListener {
                onBack()
            },
            null
        )
    }

    PicaComposeTheme {
        Box(modifier = Modifier.fillMaxSize()) {
            if (androidx.compose.ui.platform.LocalInspectionMode.current) {
                Box(modifier = Modifier.padding(16.dp)) {
                    PreviewChatPanel(
                        title = "匿名聊天",
                        messages = listOf(
                            "你好呀" to false,
                            "你好，今天想聊什么？" to true,
                            "先匹配成功再说" to false
                        )
                    )
                }
            } else {
                LegacyFragmentHost(
                    fragmentTag = AnonymousChatFragment.TAG,
                    fragmentFactory = { AnonymousChatFragment() },
                    modifier = Modifier.fillMaxSize()
                )
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun AnonymousChatScreenPreview() {
    PicaComposeTheme {
        Box(modifier = Modifier.fillMaxSize())
    }
}
