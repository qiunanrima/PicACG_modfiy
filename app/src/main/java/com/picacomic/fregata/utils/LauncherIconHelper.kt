package com.picacomic.fregata.utils

import android.content.ComponentName
import android.content.Context
import android.content.pm.PackageManager

object LauncherIconHelper {
    private const val DEFAULT_ALIAS = "com.picacomic.fregata.alias.Default"
    private const val NEON_ALIAS = "com.picacomic.fregata.alias.Neon"

    @JvmStatic
    fun syncLauncherIcon(context: Context, themeIndex: Int = e.al(context)) {
        val packageManager = context.packageManager
        setAliasState(
            packageManager = packageManager,
            context = context,
            aliasName = DEFAULT_ALIAS,
            enabled = themeIndex != 2,
        )
        setAliasState(
            packageManager = packageManager,
            context = context,
            aliasName = NEON_ALIAS,
            enabled = themeIndex == 2,
        )
    }

    private fun setAliasState(
        packageManager: PackageManager,
        context: Context,
        aliasName: String,
        enabled: Boolean,
    ) {
        val componentName = ComponentName(context, aliasName)
        val newState = if (enabled) {
            PackageManager.COMPONENT_ENABLED_STATE_ENABLED
        } else {
            PackageManager.COMPONENT_ENABLED_STATE_DISABLED
        }
        if (packageManager.getComponentEnabledSetting(componentName) != newState) {
            packageManager.setComponentEnabledSetting(
                componentName,
                newState,
                PackageManager.DONT_KILL_APP,
            )
        }
    }
}
