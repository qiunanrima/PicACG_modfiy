package com.picacomic.fregata.utils;

import com.picacomic.fregata.MyApplication;
import java.io.File;

/* JADX INFO: compiled from: DirectoryHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class c {
    public static final String TAG = "c";

    public static String eb() {
        return "";
    }

    /**
     * 获取本地根目录。
     * 使用 app-specific 外部目录，无需公共存储权限。
     */
    public static String dY() {
        f.D(TAG, "LOCAL DIRECTORY");
        File externalFilesDir = MyApplication.by().getExternalFilesDir(null);
        if (externalFilesDir != null) {
            if (!externalFilesDir.exists()) {
                externalFilesDir.mkdirs();
            }
            return externalFilesDir.getAbsolutePath();
        }
        return MyApplication.by().getFilesDir().getAbsolutePath();
    }

    /**
     * 获取 /Android/data/<packageName>/files 目录。
     * 使用 getExternalFilesDir，无需 WRITE_EXTERNAL_STORAGE 权限。
     */
    public static String dZ() {
        File externalFilesDir = MyApplication.by().getExternalFilesDir(null);
        if (externalFilesDir != null) {
            if (!externalFilesDir.exists()) {
                externalFilesDir.mkdirs();
            }
            f.D(TAG, "LOCAL DIRECTORY ANDROID/DATA");
            return externalFilesDir.getAbsolutePath();
        }
        return MyApplication.by().getFilesDir().getAbsolutePath();
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
