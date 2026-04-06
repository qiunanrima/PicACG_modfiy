package com.picacomic.fregata.compose.views

fun interface OnBooleanChangedListener {
    fun onChanged(value: Boolean)
}

fun interface OnIntChangedListener {
    fun onChanged(value: Int)
}

fun interface OnStringChangedListener {
    fun onChanged(value: String)
}
