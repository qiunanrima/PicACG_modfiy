package com.picacomic.fregata.compose.screens

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.tooling.preview.Preview
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
            LegacyFragmentHost(
                fragmentTag = AnonymousChatFragment.TAG,
                fragmentFactory = { AnonymousChatFragment() },
                modifier = Modifier.fillMaxSize()
            )
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
