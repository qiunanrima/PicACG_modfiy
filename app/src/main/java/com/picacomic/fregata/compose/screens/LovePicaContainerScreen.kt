package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaSecondaryScreen
import com.picacomic.fregata.compose.views.LegacyFragmentHost
import com.picacomic.fregata.fragments.PicaAppContainerFragment

@Composable
fun LovePicaContainerScreen(
    onBack: () -> Unit
) {
    PicaComposeTheme {
        PicaSecondaryScreen(
            title = stringResource(R.string.title_pica_app),
            onBack = onBack
        ) {
            Box(modifier = Modifier.weight(1f)) {
                if (LocalInspectionMode.current) {
                    Box(modifier = Modifier.padding(16.dp)) {
                        PreviewListPanel(
                            title = "Love Pica",
                            items = listOf("聊天室", "哔咔小程序")
                        )
                    }
                } else {
                    LegacyFragmentHost(
                        fragmentTag = PicaAppContainerFragment.TAG,
                        fragmentFactory = { ComposeHostedPicaAppContainerFragment() },
                        modifier = Modifier.fillMaxSize()
                    )
                }
            }
        }
    }
}

class ComposeHostedPicaAppContainerFragment : PicaAppContainerFragment() {
    override fun bH() {
        super.bH()
        view?.findViewById<android.view.View>(R.id.toolbar)?.visibility = android.view.View.GONE
    }
}

@Preview(showBackground = true)
@Composable
private fun LovePicaContainerScreenPreview() {
    LovePicaContainerScreen(onBack = {})
}
