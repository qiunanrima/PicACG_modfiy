package com.picacomic.fregata.activities;

import android.os.Bundle;
import com.picacomic.fregata.R;
import com.picacomic.fregata.fragments.CommentFragment;
import com.picacomic.fregata.fragments.SettingFragment;

/* JADX INFO: loaded from: classes.dex */
public class PopupActivity extends BaseActivity {
    public static final String TAG = "PopupActivity";

    @Override // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_comment);
        String stringExtra = getIntent().getStringExtra("EXTRA_KEY_TYPE");
        if (stringExtra == null) {
            finish();
        }
        if (bundle == null) {
            if (stringExtra.equalsIgnoreCase("TYPE_KEY_COMMENT")) {
                String stringExtra2 = getIntent().getStringExtra("EXTRA_KEY_COMIC_ID");
                if (stringExtra2 == null) {
                    finish();
                    return;
                } else {
                    getSupportFragmentManager().beginTransaction().replace(R.id.container, CommentFragment.l(null, stringExtra2), CommentFragment.TAG).commit();
                    return;
                }
            }
            if (stringExtra.equalsIgnoreCase("TYPE_KEY_SETTING")) {
                getSupportFragmentManager().beginTransaction().replace(R.id.container, new SettingFragment(), SettingFragment.TAG).commit();
            }
        }
    }
}
