package com.picacomic.fregata.utils

import android.content.ComponentName
import android.content.Context
import android.content.pm.PackageManager

object LauncherIconHelper {
    const val PREFS_NAME = "PICACOMIC_FREGATA"
    const val KEY_LAUNCHER_ICON = "KEY_LAUNCHER_ICON"

    private const val DEFAULT_ALIAS = "com.picacomic.fregata.alias.Default"
    private const val NEON_ALIAS = "com.picacomic.fregata.alias.Neon"

    @JvmStatic
    @JvmOverloads
    fun syncLauncherIcon(context: Context, iconIndex: Int = context
        .getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
        .getInt(KEY_LAUNCHER_ICON, 0)
    ) {
        val selectedIndex = iconIndex.coerceIn(0, 1)
        val packageManager = context.packageManager
        setAliasState(
            packageManager = packageManager,
            context = context,
            aliasName = DEFAULT_ALIAS,
            enabled = selectedIndex == 0,
        )
        setAliasState(
            packageManager = packageManager,
            context = context,
            aliasName = NEON_ALIAS,
            enabled = selectedIndex == 1,
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
