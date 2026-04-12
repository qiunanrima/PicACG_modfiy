package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.utils.e

class ChangePinViewModel(application: Application) : AndroidViewModel(application) {
    var pin by mutableStateOf("")
        private set

    var pinConfirm by mutableStateOf("")
        private set

    var setSuccessEvent by mutableIntStateOf(0)
        private set

    var clearSuccessEvent by mutableIntStateOf(0)
        private set

    fun updatePin(value: String) {
        pin = value.filter { it.isDigit() }.take(4)
    }

    fun updatePinConfirm(value: String) {
        pinConfirm = value.filter { it.isDigit() }.take(4)
    }

    fun pinErrorRes(): Int? {
        return if (pin.isNotEmpty() && pin.length < 4) R.string.alert_pin_password_length else null
    }

    fun pinConfirmErrorRes(): Int? {
        return if (pinConfirm.isNotEmpty() && pin != pinConfirm) R.string.alert_not_same_password else null
    }

    fun canSubmit(): Boolean {
        return pin.length >= 4 && pin == pinConfirm
    }

    fun clearPin() {
        e.g(getApplication(), "")
        clearSuccessEvent++
    }

    fun savePin() {
        if (!canSubmit()) return
        e.g(getApplication(), pinConfirm)
        setSuccessEvent++
    }
}
