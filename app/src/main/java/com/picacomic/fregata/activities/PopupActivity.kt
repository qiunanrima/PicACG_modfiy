package com.picacomic.fregata.activities

import android.os.Bundle
import com.picacomic.fregata.R
import com.picacomic.fregata.fragments.CommentFragment
import com.picacomic.fregata.fragments.SettingFragment

/* JADX INFO: loaded from: classes.dex */
class PopupActivity : BaseActivity() {
    // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onCreate(bundle: Bundle?) {
        super.onCreate(bundle)
        setContentView(R.layout.activity_comment)
        val stringExtra = getIntent().getStringExtra("EXTRA_KEY_TYPE")
        if (stringExtra == null) {
            finish()
        }
        if (bundle == null) {
            if (stringExtra.equals("TYPE_KEY_COMMENT", ignoreCase = true)) {
                val stringExtra2 = getIntent().getStringExtra("EXTRA_KEY_COMIC_ID")
                if (stringExtra2 == null) {
                    finish()
                    return
                } else {
                    getSupportFragmentManager().beginTransaction().replace(
                        R.id.container,
                        CommentFragment.l(null, stringExtra2),
                        CommentFragment.TAG
                    ).commit()
                    return
                }
            }
            if (stringExtra.equals("TYPE_KEY_SETTING", ignoreCase = true)) {
                getSupportFragmentManager().beginTransaction()
                    .replace(R.id.container, SettingFragment(), SettingFragment.TAG).commit()
            }
        }
    }

    companion object {
        const val TAG: String = "PopupActivity"
    }
}
