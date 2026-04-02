package com.picacomic.fregata;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.app.LoaderManager;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.provider.ContactsContract;
import androidx.annotation.NonNull;
import com.google.android.material.snackbar.Snackbar;
import androidx.appcompat.app.AppCompatActivity;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.picacomic.fregata.activities.LoginActivity;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DemoLoginActivity extends AppCompatActivity implements LoaderManager.LoaderCallbacks<Cursor> {
    private static final String[] gZ = {"foo@example.com:hello", "bar@example.com:world"};
    private b ha = null;
    private AutoCompleteTextView hb;
    private EditText hc;
    private View hd;
    private View he;

    private interface a {
        public static final String[] hh = {"data1", "is_primary"};
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(Loader<Cursor> loader) {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_demo_login);
        this.hb = (AutoCompleteTextView) findViewById(R.id.email);
        this.hc = (EditText) findViewById(R.id.password);
        this.hc.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.picacomic.fregata.DemoLoginActivity.1
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != R.id.login && i != 0) {
                    return false;
                }
                DemoLoginActivity.this.bu();
                return true;
            }
        });
        ((Button) findViewById(R.id.email_sign_in_button)).setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.DemoLoginActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DemoLoginActivity.this.bu();
            }
        });
        this.he = findViewById(R.id.login_form);
        this.hd = findViewById(R.id.login_progress);
    }

    private void bs() {
        if (bt()) {
            getLoaderManager().initLoader(0, null, this);
        }
    }

    private boolean bt() {
        if (Build.VERSION.SDK_INT < 23 || checkSelfPermission("android.permission.READ_CONTACTS") == 0) {
            return true;
        }
        if (shouldShowRequestPermissionRationale("android.permission.READ_CONTACTS")) {
            Snackbar.make(this.hb, R.string.permission_rationale, -2).setAction(android.R.string.ok, new View.OnClickListener() { // from class: com.picacomic.fregata.DemoLoginActivity.3
                @Override // android.view.View.OnClickListener
                @TargetApi(23)
                public void onClick(View view) {
                    DemoLoginActivity.this.requestPermissions(new String[]{"android.permission.READ_CONTACTS"}, 0);
                }
            });
        } else {
            requestPermissions(new String[]{"android.permission.READ_CONTACTS"}, 0);
        }
        return false;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        if (i == 0 && iArr.length == 1 && iArr[0] == 0) {
            bs();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bu() {
        if (this.ha != null) {
            return;
        }
        EditText editText = null;
        this.hb.setError(null);
        this.hc.setError(null);
        String string = this.hb.getText().toString();
        String string2 = this.hc.getText().toString();
        boolean z = false;
        boolean z2 = true;
        if (!TextUtils.isEmpty(string2) && !B(string2)) {
            this.hc.setError(getString(R.string.error_invalid_password));
            editText = this.hc;
            z = true;
        }
        if (TextUtils.isEmpty(string)) {
            this.hb.setError(getString(R.string.error_field_required));
            editText = this.hb;
        } else if (A(string)) {
            z2 = z;
        } else {
            this.hb.setError(getString(R.string.error_invalid_email));
            editText = this.hb;
        }
        if (z2) {
            editText.requestFocus();
        } else {
            startActivity(new Intent(this, (Class<?>) LoginActivity.class));
            finish();
        }
    }

    private boolean A(String str) {
        return str.contains("@");
    }

    private boolean B(String str) {
        return str.length() > 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(13)
    public void g(final boolean z) {
        if (Build.VERSION.SDK_INT >= 13) {
            int integer = getResources().getInteger(android.R.integer.config_shortAnimTime);
            this.he.setVisibility(z ? 8 : 0);
            long j = integer;
            this.he.animate().setDuration(j).alpha(z ? 0.0f : 1.0f).setListener(new AnimatorListenerAdapter() { // from class: com.picacomic.fregata.DemoLoginActivity.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    DemoLoginActivity.this.he.setVisibility(z ? 8 : 0);
                }
            });
            this.hd.setVisibility(z ? 0 : 8);
            this.hd.animate().setDuration(j).alpha(z ? 1.0f : 0.0f).setListener(new AnimatorListenerAdapter() { // from class: com.picacomic.fregata.DemoLoginActivity.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    DemoLoginActivity.this.hd.setVisibility(z ? 0 : 8);
                }
            });
            return;
        }
        this.hd.setVisibility(z ? 0 : 8);
        this.he.setVisibility(z ? 8 : 0);
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        return new CursorLoader(this, Uri.withAppendedPath(ContactsContract.Profile.CONTENT_URI, "data"), a.hh, "mimetype = ?", new String[]{"vnd.android.cursor.item/email_v2"}, "is_primary DESC");
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        cursor.moveToFirst();
        while (!cursor.isAfterLast()) {
            arrayList.add(cursor.getString(0));
            cursor.moveToNext();
        }
        a(arrayList);
    }

    private void a(List<String> list) {
        this.hb.setAdapter(new ArrayAdapter(this, android.R.layout.simple_dropdown_item_1line, list));
    }

    public class b extends AsyncTask<Void, Void, Boolean> {
        /* synthetic */ DemoLoginActivity hf;
        private String hi;
        private String hj;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Boolean doInBackground(Void... voidArr) {
            try {
                Thread.sleep(2000L);
                for (String str : DemoLoginActivity.gZ) {
                    String[] strArrSplit = str.split(":");
                    if (strArrSplit[0].equals(this.hi)) {
                        return Boolean.valueOf(strArrSplit[1].equals(this.hj));
                    }
                }
                return true;
            } catch (InterruptedException unused) {
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Boolean bool) {
            this.hf.ha = null;
            this.hf.g(false);
            if (!bool.booleanValue()) {
                this.hf.hc.setError(this.hf.getString(R.string.error_incorrect_password));
                this.hf.hc.requestFocus();
            } else {
                this.hf.finish();
            }
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            this.hf.ha = null;
            this.hf.g(false);
        }
    }
}
