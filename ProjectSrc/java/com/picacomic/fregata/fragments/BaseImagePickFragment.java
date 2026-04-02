package com.picacomic.fregata.fragments;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import androidx.core.content.ContextCompat;
import android.util.Log;
import android.view.View;
import com.picacomic.fregata.R;
import com.picacomic.fregata.activities.BaseActivity;
import com.picacomic.fregata.activities.ImageCropActivity;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class BaseImagePickFragment extends BaseFragment {
    private Uri ks;
    Uri kt;
    Uri ku;
    int kv = 2;

    public void K(String str) {
    }

    public void cf() {
        this.ks = null;
        this.kt = null;
        this.ku = null;
        int iCheckSelfPermission = ContextCompat.checkSelfPermission(getActivity(), "android.permission.WRITE_EXTERNAL_STORAGE");
        int iCheckSelfPermission2 = ContextCompat.checkSelfPermission(getActivity(), "android.permission.CAMERA");
        if (iCheckSelfPermission == 0 && iCheckSelfPermission2 == 0) {
            new AlertDialog.Builder(getActivity()).setTitle(R.string.alert_dialog_select_title).setSingleChoiceItems(getActivity().getResources().getStringArray(R.array.alert_dialog_photo_chooser), 0, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.BaseImagePickFragment.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                    if (((AlertDialog) dialogInterface).getListView().getCheckedItemPosition() == 0) {
                        BaseImagePickFragment.this.ch();
                    } else {
                        BaseImagePickFragment.this.cg();
                    }
                }
            }).show();
        } else {
            if (getActivity() == null || !(getActivity() instanceof BaseActivity)) {
                return;
            }
            ((BaseActivity) getActivity()).requestPermission();
        }
    }

    public void cg() {
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setType("image/*");
        startActivityForResult(intent, 100);
    }

    public void ch() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        File file = new File(Environment.getExternalStorageDirectory(), "Pic.jpg");
        intent.putExtra("output", Uri.fromFile(file));
        this.ks = Uri.fromFile(file);
        startActivityForResult(intent, 111);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 100) {
            if (i2 == -1) {
                this.kt = intent.getData();
                Log.e(TAG, "SELECT_PHOTO imageResultUri = " + this.kt.toString());
                Intent intent2 = new Intent(getActivity(), (Class<?>) ImageCropActivity.class);
                intent2.putExtra("KEY_ACTION_TYPE", this.kv);
                intent2.putExtra("KEY_IMAGE_URI_STRING", this.kt.toString());
                startActivityForResult(intent2, 222);
                return;
            }
            return;
        }
        if (i == 111) {
            if (i2 == -1) {
                this.kt = this.ks;
                Log.e(TAG, "TAKE_PICTURE imageResultUri = " + this.kt.toString());
                Intent intent3 = new Intent(getActivity(), (Class<?>) ImageCropActivity.class);
                intent3.putExtra("KEY_ACTION_TYPE", this.kv);
                intent3.putExtra("KEY_IMAGE_URI_STRING", this.kt.toString());
                startActivityForResult(intent3, 222);
                return;
            }
            return;
        }
        if (i == 222 && i2 == -1) {
            String stringExtra = intent.getStringExtra("CROP_IMAGE_RESULT_URI");
            Log.e(TAG, "CROP_PHOTO uriString = " + this.kt.toString());
            K(stringExtra);
            Log.e(TAG, "cropImageUriString = " + stringExtra);
            this.ku = Uri.parse(stringExtra);
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, com.picacomic.fregata.a_pkg.i
    public void b(View view) {
        super.b(view);
    }
}
