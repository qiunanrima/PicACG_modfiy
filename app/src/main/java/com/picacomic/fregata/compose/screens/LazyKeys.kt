package com.picacomic.fregata.compose.screens

internal fun stableLazyKey(prefix: String, index: Int, vararg candidates: String?): String {
    val stablePart = candidates.firstNotNullOfOrNull { it?.takeIf(String::isNotBlank) }
        ?: "item"
    return "${prefix}_${stablePart}_$index"
}
