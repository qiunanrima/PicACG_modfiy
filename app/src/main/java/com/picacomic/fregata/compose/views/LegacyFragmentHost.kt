package com.picacomic.fregata.compose.views

import android.view.ViewGroup
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.viewinterop.AndroidView
import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentActivity
import androidx.fragment.app.FragmentManager
import androidx.fragment.app.FragmentContainerView
import androidx.compose.ui.platform.LocalContext
import com.picacomic.fregata.R

@Composable
fun LegacyFragmentHost(
    fragmentTag: String,
    fragmentFactory: () -> Fragment,
    modifier: Modifier = Modifier
) {
    val activity = LocalContext.current as? FragmentActivity ?: return

    AndroidView(
        modifier = modifier,
        factory = { context ->
            FragmentContainerView(context).apply {
                id = R.id.container
                layoutParams = ViewGroup.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT
                )
            }
        }
    )

    DisposableEffect(activity, fragmentTag) {
        attachRootFragment(
            activity = activity,
            fragmentTag = fragmentTag,
            fragmentFactory = fragmentFactory
        )

        onDispose {
            clearHostedFragments(activity.supportFragmentManager)
        }
    }
}

private fun attachRootFragment(
    activity: FragmentActivity,
    fragmentTag: String,
    fragmentFactory: () -> Fragment
) {
    val fragmentManager = activity.supportFragmentManager
    if (fragmentManager.findFragmentById(R.id.container) != null) {
        return
    }
    if (fragmentManager.isStateSaved) {
        return
    }

    fragmentManager.beginTransaction()
        .replace(R.id.container, fragmentFactory(), fragmentTag)
        .commitNowAllowingStateLoss()
}

private fun clearHostedFragments(fragmentManager: FragmentManager) {
    if (fragmentManager.isStateSaved) {
        return
    }

    fragmentManager.popBackStackImmediate(null, FragmentManager.POP_BACK_STACK_INCLUSIVE)
    fragmentManager.findFragmentById(R.id.container)?.let { fragment ->
        fragmentManager.beginTransaction()
            .remove(fragment)
            .commitNowAllowingStateLoss()
    }
}
