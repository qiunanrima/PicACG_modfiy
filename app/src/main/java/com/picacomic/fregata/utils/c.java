package com.picacomic.fregata.utils;

import android.os.Environment;
import com.picacomic.fregata.MyApplication;
import java.io.File;

/* JADX INFO: compiled from: DirectoryHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class c {
    public static final String TAG = "c";

    public static String eb() {
        return "";
    }

    public static String dY() {
        f.D(TAG, "LOCAL DIRECTORY");
        return Environment.getExternalStorageDirectory().toString();
    }

    public static String dZ() {
        File file = new File(Environment.getExternalStorageDirectory().toString() + "/Android/data/" + MyApplication.by().getPackageName() + "/files");
        if (!file.exists()) {
            file.mkdirs();
        }
        if (file.canWrite()) {
            f.D(TAG, "LOCAL DIRECTORY ANDROID/DATA");
            return Environment.getExternalStorageDirectory().toString() + "/Android/data/" + MyApplication.by().getPackageName() + "/files";
        }
        return dY();
    }

    public static String ea() {
        if (System.getenv("SECONDARY_STORAGE") == null) {
            return "";
        }
        String str = System.getenv("SECONDARY_STORAGE") + "/Android/data/" + MyApplication.by().getPackageName() + "/files";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        f.E(TAG, "getExternalDirectory = " + str);
        return file.canWrite() ? str : "";
    }

    public static String ec() {
        String strEa = ea();
        String strEb = eb();
        return !strEb.equalsIgnoreCase("") ? strEb : strEa.equalsIgnoreCase("") ? dZ() : strEa;
    }
}
