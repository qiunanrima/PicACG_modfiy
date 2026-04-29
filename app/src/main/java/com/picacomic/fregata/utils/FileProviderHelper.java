package com.picacomic.fregata.utils;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.FileProvider;
import java.io.File;

/**
 * 统一封装 FileProvider Uri 创建，兼容 Android 7+ 的文件共享限制。
 * Android 7 (API 24) 起直接把 file:// Uri 传给其他 App 会触发 FileUriExposedException；
 * 必须通过 FileProvider 转换为 content:// Uri。
 */
public class FileProviderHelper {

    private static final String AUTHORITY_SUFFIX = ".fileprovider";

    /**
     * 将本地 File 转为可安全跨进程传递的 Uri。
     * - Android 7+: 使用 FileProvider content:// Uri
     * - Android 6 及以下: 使用 file:// Uri（已通过 StrictMode 验证旧设备安全）
     */
    public static Uri getUriForFile(Context context, File file) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            return FileProvider.getUriForFile(
                    context,
                    context.getPackageName() + AUTHORITY_SUFFIX,
                    file
            );
        } else {
            return Uri.fromFile(file);
        }
    }

    /**
     * 获取用于相机拍照的临时文件（存放在 app-specific 外部缓存目录，无需存储权限）。
     */
    public static File getCameraOutputFile(Context context) {
        File cacheDir = context.getExternalCacheDir();
        if (cacheDir == null) {
            cacheDir = context.getCacheDir();
        }
        if (!cacheDir.exists()) {
            cacheDir.mkdirs();
        }
        return new File(cacheDir, "camera_capture.jpg");
    }

    /**
     * 获取用于图片裁剪输出的临时文件（存放在 app 内部缓存目录）。
     */
    public static File getCropOutputFile(Context context) {
        File cacheDir = context.getCacheDir();
        if (!cacheDir.exists()) {
            cacheDir.mkdirs();
        }
        return new File(cacheDir, "cropped_image.jpg");
    }

    /**
     * 获取录音文件（存放在 app-specific 外部文件目录，无需存储权限）。
     */
    public static File getAudioRecordFile(Context context) {
        File filesDir = context.getExternalFilesDir(null);
        if (filesDir == null) {
            filesDir = context.getFilesDir();
        }
        if (!filesDir.exists()) {
            filesDir.mkdirs();
        }
        return new File(filesDir, "audiorecordtest.3gp");
    }
}
