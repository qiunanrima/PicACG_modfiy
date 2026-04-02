package com.picacomic.fregata.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.util.Base64;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.picacomic.fregata.MyApplication;
import com.picacomic.fregata.R;
import com.picacomic.fregata.objects.ThumbnailObject;
import com.picacomic.fregata.objects.databaseTable.DownloadComicEpisodeObject;
import com.picacomic.fregata.services.DownloadService;
import com.picacomic.fregata.utils.views.AlertDialogCenter;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;
import java.util.regex.Pattern;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: compiled from: Tools.java */
/* JADX INFO: loaded from: classes.dex */
public class g {
    public static final String TAG = "g";

    public static int Z(int i) {
        int i2 = (i * 2) - 1;
        return ((i2 * i2) - 1) * 25;
    }

    public static boolean A(String str) {
        return Pattern.compile("^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{2,4}$", 2).matcher(str).matches();
    }

    public static Bitmap a(Bitmap bitmap, float f, int i) {
        int[] iArr;
        int i2 = i;
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, Math.round(bitmap.getWidth() * f), Math.round(bitmap.getHeight() * f), false);
        Bitmap bitmapCopy = bitmapCreateScaledBitmap.copy(bitmapCreateScaledBitmap.getConfig(), true);
        if (i2 < 1) {
            return null;
        }
        int width = bitmapCopy.getWidth();
        int height = bitmapCopy.getHeight();
        int i3 = width * height;
        int[] iArr2 = new int[i3];
        Log.e("pix", width + " " + height + " " + iArr2.length);
        bitmapCopy.getPixels(iArr2, 0, width, 0, 0, width, height);
        int i4 = width + (-1);
        int i5 = height + (-1);
        int i6 = i2 + i2 + 1;
        int[] iArr3 = new int[i3];
        int[] iArr4 = new int[i3];
        int[] iArr5 = new int[i3];
        int[] iArr6 = new int[Math.max(width, height)];
        int i7 = (i6 + 1) >> 1;
        int i8 = i7 * i7;
        int i9 = i8 * 256;
        int[] iArr7 = new int[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            iArr7[i10] = i10 / i8;
        }
        int[][] iArr8 = (int[][]) Array.newInstance((Class<?>) int.class, i6, 3);
        int i11 = i2 + 1;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i12 < height) {
            Bitmap bitmap2 = bitmapCopy;
            int i15 = -i2;
            int i16 = 0;
            int i17 = 0;
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            while (i15 <= i2) {
                int i25 = i5;
                int i26 = height;
                int i27 = iArr2[i13 + Math.min(i4, Math.max(i15, 0))];
                int[] iArr9 = iArr8[i15 + i2];
                iArr9[0] = (i27 & 16711680) >> 16;
                iArr9[1] = (i27 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr9[2] = i27 & 255;
                int iAbs = i11 - Math.abs(i15);
                i16 += iArr9[0] * iAbs;
                i17 += iArr9[1] * iAbs;
                i18 += iArr9[2] * iAbs;
                if (i15 > 0) {
                    i19 += iArr9[0];
                    i20 += iArr9[1];
                    i21 += iArr9[2];
                } else {
                    i22 += iArr9[0];
                    i23 += iArr9[1];
                    i24 += iArr9[2];
                }
                i15++;
                height = i26;
                i5 = i25;
            }
            int i28 = i5;
            int i29 = height;
            int i30 = i2;
            int i31 = 0;
            while (i31 < width) {
                iArr3[i13] = iArr7[i16];
                iArr4[i13] = iArr7[i17];
                iArr5[i13] = iArr7[i18];
                int i32 = i16 - i22;
                int i33 = i17 - i23;
                int i34 = i18 - i24;
                int[] iArr10 = iArr8[((i30 - i2) + i6) % i6];
                int i35 = i22 - iArr10[0];
                int i36 = i23 - iArr10[1];
                int i37 = i24 - iArr10[2];
                if (i12 == 0) {
                    iArr = iArr7;
                    iArr6[i31] = Math.min(i31 + i2 + 1, i4);
                } else {
                    iArr = iArr7;
                }
                int i38 = iArr2[i14 + iArr6[i31]];
                iArr10[0] = (i38 & 16711680) >> 16;
                iArr10[1] = (i38 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr10[2] = i38 & 255;
                int i39 = i19 + iArr10[0];
                int i40 = i20 + iArr10[1];
                int i41 = i21 + iArr10[2];
                i16 = i32 + i39;
                i17 = i33 + i40;
                i18 = i34 + i41;
                i30 = (i30 + 1) % i6;
                int[] iArr11 = iArr8[i30 % i6];
                i22 = i35 + iArr11[0];
                i23 = i36 + iArr11[1];
                i24 = i37 + iArr11[2];
                i19 = i39 - iArr11[0];
                i20 = i40 - iArr11[1];
                i21 = i41 - iArr11[2];
                i13++;
                i31++;
                iArr7 = iArr;
            }
            i14 += width;
            i12++;
            bitmapCopy = bitmap2;
            height = i29;
            i5 = i28;
        }
        Bitmap bitmap3 = bitmapCopy;
        int[] iArr12 = iArr7;
        int i42 = i5;
        int i43 = height;
        int i44 = 0;
        while (i44 < width) {
            int i45 = -i2;
            int i46 = i45 * width;
            int i47 = 0;
            int i48 = 0;
            int i49 = 0;
            int i50 = 0;
            int i51 = 0;
            int i52 = 0;
            int i53 = 0;
            int i54 = 0;
            int i55 = 0;
            while (i45 <= i2) {
                int[] iArr13 = iArr6;
                int iMax = Math.max(0, i46) + i44;
                int[] iArr14 = iArr8[i45 + i2];
                iArr14[0] = iArr3[iMax];
                iArr14[1] = iArr4[iMax];
                iArr14[2] = iArr5[iMax];
                int iAbs2 = i11 - Math.abs(i45);
                i47 += iArr3[iMax] * iAbs2;
                i48 += iArr4[iMax] * iAbs2;
                i49 += iArr5[iMax] * iAbs2;
                if (i45 > 0) {
                    i50 += iArr14[0];
                    i51 += iArr14[1];
                    i52 += iArr14[2];
                } else {
                    i53 += iArr14[0];
                    i54 += iArr14[1];
                    i55 += iArr14[2];
                }
                int i56 = i42;
                if (i45 < i56) {
                    i46 += width;
                }
                i45++;
                i42 = i56;
                iArr6 = iArr13;
            }
            int[] iArr15 = iArr6;
            int i57 = i42;
            int i58 = i51;
            int i59 = i52;
            int i60 = i43;
            int i61 = 0;
            int i62 = i2;
            int i63 = i50;
            int i64 = i49;
            int i65 = i48;
            int i66 = i47;
            int i67 = i44;
            while (i61 < i60) {
                iArr2[i67] = (iArr2[i67] & ViewCompat.MEASURED_STATE_MASK) | (iArr12[i66] << 16) | (iArr12[i65] << 8) | iArr12[i64];
                int i68 = i66 - i53;
                int i69 = i65 - i54;
                int i70 = i64 - i55;
                int[] iArr16 = iArr8[((i62 - i2) + i6) % i6];
                int i71 = i53 - iArr16[0];
                int i72 = i54 - iArr16[1];
                int i73 = i55 - iArr16[2];
                if (i44 == 0) {
                    iArr15[i61] = Math.min(i61 + i11, i57) * width;
                }
                int i74 = iArr15[i61] + i44;
                iArr16[0] = iArr3[i74];
                iArr16[1] = iArr4[i74];
                iArr16[2] = iArr5[i74];
                int i75 = i63 + iArr16[0];
                int i76 = i58 + iArr16[1];
                int i77 = i59 + iArr16[2];
                i66 = i68 + i75;
                i65 = i69 + i76;
                i64 = i70 + i77;
                i62 = (i62 + 1) % i6;
                int[] iArr17 = iArr8[i62];
                i53 = i71 + iArr17[0];
                i54 = i72 + iArr17[1];
                i55 = i73 + iArr17[2];
                i63 = i75 - iArr17[0];
                i58 = i76 - iArr17[1];
                i59 = i77 - iArr17[2];
                i67 += width;
                i61++;
                i2 = i;
            }
            i44++;
            i43 = i60;
            i42 = i57;
            iArr6 = iArr15;
            i2 = i;
        }
        int i78 = i43;
        Log.e("pix", width + " " + i78 + " " + iArr2.length);
        bitmap3.setPixels(iArr2, 0, width, 0, 0, width, i78);
        return bitmap3;
    }

    public static void k(WebView webView) {
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(false);
        settings.setBuiltInZoomControls(false);
        settings.setSupportMultipleWindows(true);
        settings.setCacheMode(2);
        webView.setWebViewClient(new WebViewClient() { // from class: com.picacomic.fregata.utils.g.1
            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView2, int i, String str, String str2) {
                super.onReceivedError(webView2, i, str, str2);
                webView2.loadUrl("file:///android_res/raw/page_not_found.html");
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, WebResourceRequest webResourceRequest) {
                if (Build.VERSION.SDK_INT < 21) {
                    return false;
                }
                f.F(g.TAG, "Version URL = " + webResourceRequest.getUrl().toString());
                if (webResourceRequest.getUrl().toString().contains(e.an(MyApplication.by()))) {
                    return false;
                }
                g.A(MyApplication.by(), webResourceRequest.getUrl().toString());
                return true;
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                f.F(g.TAG, "URL = " + str);
                if (str.contains(e.an(MyApplication.by()))) {
                    return false;
                }
                g.A(MyApplication.by(), str);
                return true;
            }
        });
    }

    public static boolean ar(Context context) {
        try {
            throw new Exception("blah");
        } catch (Exception e) {
            for (StackTraceElement stackTraceElement : e.getStackTrace()) {
                if (stackTraceElement.getClassName().contains("xposed") || stackTraceElement.getMethodName().contains("xposed") || stackTraceElement.getClassName().contains("Xposed") || stackTraceElement.getMethodName().contains("Xposed")) {
                    return false;
                }
            }
            return true;
        }
    }

    public static int a(LinearLayout linearLayout, View[] viewArr, Context context, View view) {
        int width;
        if (linearLayout == null || viewArr == null || context == null) {
            return 0;
        }
        Display defaultDisplay = ((Activity) context).getWindowManager().getDefaultDisplay();
        linearLayout.removeAllViews();
        if (view != null) {
            view.measure(-2, -2);
            width = (defaultDisplay.getWidth() - view.getMeasuredWidth()) - 40;
        } else {
            width = defaultDisplay.getWidth() - 40;
        }
        linearLayout.setOrientation(1);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout2.setGravity(3);
        linearLayout2.setOrientation(0);
        LinearLayout linearLayout3 = linearLayout2;
        int measuredWidth = 0;
        int i = 1;
        for (int i2 = 0; i2 < viewArr.length; i2++) {
            LinearLayout linearLayout4 = new LinearLayout(context);
            linearLayout4.setOrientation(0);
            linearLayout4.setGravity(81);
            linearLayout4.setLayoutParams(new AbsListView.LayoutParams(-2, -2));
            viewArr[i2].measure(0, 0);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(viewArr[i2].getMeasuredWidth(), -2);
            layoutParams.setMargins(5, 10, 5, 0);
            linearLayout4.addView(viewArr[i2], layoutParams);
            linearLayout4.measure(0, 0);
            measuredWidth += viewArr[i2].getMeasuredWidth();
            if (measuredWidth >= width) {
                linearLayout.addView(linearLayout3);
                LinearLayout linearLayout5 = new LinearLayout(context);
                linearLayout5.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                linearLayout5.setOrientation(0);
                linearLayout5.setGravity(3);
                linearLayout5.addView(linearLayout4, new LinearLayout.LayoutParams(linearLayout4.getMeasuredWidth(), linearLayout4.getMeasuredHeight()));
                i++;
                linearLayout3 = linearLayout5;
                measuredWidth = linearLayout4.getMeasuredWidth();
            } else {
                linearLayout3.addView(linearLayout4);
            }
        }
        linearLayout.addView(linearLayout3);
        return i;
    }

    public static String aB(String str) {
        if (str == null || str.equalsIgnoreCase("")) {
            return null;
        }
        File file = new File(str);
        byte[] bArr = new byte[(int) file.length()];
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            bufferedInputStream.read(bArr, 0, bArr.length);
            bufferedInputStream.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return Base64.encodeToString(bArr, 0);
    }

    public static File G(String str, String str2) {
        byte[] bArrDecode = Base64.decode(str, 0);
        File file = new File(str2);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            bufferedOutputStream.write(bArrDecode);
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
            return file;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String f(Bitmap bitmap) {
        if (bitmap == null) {
            return "";
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
        f.D(TAG, "BASE64 = " + strEncodeToString);
        return "data:image/jpeg;base64," + strEncodeToString;
    }

    public static Bitmap a(Context context, Uri uri, int i, int i2) {
        if (uri == null) {
            return null;
        }
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            if (i > 0 && i2 > 0) {
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(BitmapFactory.decodeStream(inputStreamOpenInputStream), i, i2, true);
                f.D(TAG, "Height = " + bitmapCreateScaledBitmap.getHeight() + " Width = " + bitmapCreateScaledBitmap.getWidth());
                return bitmapCreateScaledBitmap;
            }
            return BitmapFactory.decodeStream(inputStreamOpenInputStream);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap b(Context context, Uri uri) {
        return a(context, uri, -1, -1);
    }

    public static Bitmap c(Context context, Uri uri, int i) {
        return a(context, uri, i, i);
    }

    public static int as(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getWidth();
    }

    public static int at(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getHeight();
    }

    public static String b(ThumbnailObject thumbnailObject) {
        if (thumbnailObject == null) {
            return null;
        }
        if (thumbnailObject.getFileServer().equalsIgnoreCase("http://lorempixel.com")) {
            return thumbnailObject.getFileServer() + thumbnailObject.getPath();
        }
        if (MyApplication.bx() != null && e.S(MyApplication.bx()) != null) {
            return e.S(MyApplication.bx()) + thumbnailObject.getPath();
        }
        return thumbnailObject.getFileServer() + "/static/" + thumbnailObject.getPath();
    }

    public static void a(Context context, TextView textView, String str, int i, boolean z) {
        textView.setText(str + "(" + i + "P)");
        if (z) {
            SpannableString spannableString = new SpannableString(context.getResources().getString(R.string.comic_title_ended));
            spannableString.setSpan(new ForegroundColorSpan(context.getResources().getColor(R.color.colorPrimaryDark)), 0, spannableString.length(), 33);
            spannableString.setSpan(new RelativeSizeSpan(0.8f), 0, spannableString.length(), 0);
            textView.append(spannableString);
        }
    }

    public static void A(Context context, String str) {
        if (!str.startsWith("http://") && !str.startsWith("https://")) {
            str = "http://" + str;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public static int ac(int i) {
        return i - ((i + 1) / 21);
    }

    public static int ad(int i) {
        return i + (i / 20);
    }

    public static String B(Context context, String str) {
        if (str == null) {
            return "";
        }
        Calendar calendar = Calendar.getInstance();
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            calendar.setTime(simpleDateFormat.parse(str));
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(13, -60);
            if (calendar2.compareTo(calendar) <= 0) {
                calendar2.add(13, 60);
                return ((calendar2.getTimeInMillis() - calendar.getTimeInMillis()) / 1000) + context.getString(R.string.time_format_second_before);
            }
            Calendar calendar3 = Calendar.getInstance();
            calendar3.add(12, -60);
            if (calendar3.compareTo(calendar) <= 0) {
                calendar3.add(12, 60);
                return ((calendar3.getTimeInMillis() - calendar.getTimeInMillis()) / 60000) + context.getString(R.string.time_format_minute_before);
            }
            Calendar calendar4 = Calendar.getInstance();
            if (calendar4.get(1) == calendar.get(1) && calendar4.get(6) == calendar.get(6)) {
                return context.getString(R.string.time_format_today) + " " + new SimpleDateFormat("HH:mm").format(calendar.getTime());
            }
            Calendar calendar5 = Calendar.getInstance();
            calendar5.add(6, -1);
            if (calendar5.get(1) == calendar.get(1) && calendar5.get(6) == calendar.get(6)) {
                return context.getString(R.string.time_format_yesterday) + " " + new SimpleDateFormat("HH:mm").format(calendar.getTime());
            }
            if (Calendar.getInstance().get(1) == calendar.get(1)) {
                return "" + new SimpleDateFormat("M月d日 HH:mm").format(calendar.getTime());
            }
            return "" + new SimpleDateFormat("yyyy年MM月dd日 HH:mm").format(calendar.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean C(Context context, String str) {
        String[] strArrSplit = context.getString(R.string.app_version).split("\\.");
        if (str == null) {
            return true;
        }
        String[] strArrSplit2 = str.split("\\.");
        if (strArrSplit.length != strArrSplit2.length || strArrSplit2.length < 6) {
            return true;
        }
        try {
            return Integer.parseInt(strArrSplit2[5]) > Integer.parseInt(strArrSplit[5]);
        } catch (Exception unused) {
            return true;
        }
    }

    public static boolean D(Context context, String str) {
        String[] strArrSplit = context.getString(R.string.app_version).split("\\.");
        if (str == null) {
            return true;
        }
        String[] strArrSplit2 = str.split("\\.");
        if (strArrSplit.length != strArrSplit2.length || strArrSplit2.length < 6) {
            return true;
        }
        try {
            return Integer.parseInt(strArrSplit2[4]) > Integer.parseInt(strArrSplit[5]);
        } catch (Exception unused) {
            return true;
        }
    }

    public static String aC(String str) {
        return "http://www.picacomic.com/download/apk/" + (Integer.parseInt(str.substring(str.indexOf("storage") + 7, str.indexOf(".picacomic"))) + 100) + "/";
    }

    public static String au(Context context) {
        return com.picacomic.fregata.c.d.tu;
    }

    public static String ae(int i) {
        return new String(Character.toChars(i));
    }

    public static String a(Context context, Bitmap bitmap) {
        String strInsertImage;
        if (context == null) {
            return null;
        }
        try {
            strInsertImage = MediaStore.Images.Media.insertImage(context.getContentResolver(), bitmap, "pica_" + System.currentTimeMillis(), "Pica Image");
        } catch (Exception e) {
            e.printStackTrace();
            strInsertImage = null;
        }
        f.D(TAG, "ImagePath = " + strInsertImage);
        if (strInsertImage == null) {
            Toast.makeText(context, R.string.alert_save_image_failed, 0).show();
        } else {
            Toast.makeText(context, R.string.alert_save_image_success, 0).show();
        }
        return strInsertImage;
    }

    public static boolean a(String str, File file, boolean z) throws Exception {
        Response responseExecute = new OkHttpClient().newCall(new Request.Builder().url(str).build()).execute();
        if (!responseExecute.isSuccessful()) {
            throw new IOException("Failed to download file: " + responseExecute);
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(responseExecute.body().bytes());
        fileOutputStream.close();
        return false;
    }

    public static void g(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                g(file2);
            }
        }
        file.delete();
    }

    public static void av(final Context context) {
        final List listFind = DownloadComicEpisodeObject.find(DownloadComicEpisodeObject.class, "status != ? and status != ?", "0", "4");
        if (listFind == null || listFind.size() <= 0) {
            return;
        }
        AlertDialogCenter.continueDownloadComic(context, new View.OnClickListener() { // from class: com.picacomic.fregata.utils.g.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                for (int i = 0; i < listFind.size(); i++) {
                    f.E(g.TAG, "Start Download Service");
                    Intent intent = new Intent(context, (Class<?>) DownloadService.class);
                    intent.putExtra("COMIC_ID", ((DownloadComicEpisodeObject) listFind.get(i)).getComicId());
                    intent.putExtra("EPISODE_ID", ((DownloadComicEpisodeObject) listFind.get(i)).getEpisodeId());
                    context.startService(intent);
                }
            }
        });
    }

    public static String af(int i) {
        if (i == 1) {
            return a.dS() + "?color=black";
        }
        return a.dS();
    }

    public static String ag(int i) {
        if (i == 1) {
            return a.getDetail() + "?color=black";
        }
        return a.getDetail();
    }

    public static void aw(Context context) {
        if (Build.VERSION.SDK_INT >= 21) {
            if (e.al(context) == 0) {
                context.setTheme(R.style.AppTheme);
            } else {
                context.setTheme(R.style.AppThemeBlack);
            }
        }
    }

    public static String E(Context context, String str) {
        if (str != null) {
            if (str.equalsIgnoreCase(com.picacomic.fregata.c.a.uN[0])) {
                return context.getString(R.string.gender_m);
            }
            if (str.equalsIgnoreCase(com.picacomic.fregata.c.a.uN[1])) {
                return context.getString(R.string.gender_f);
            }
            if (str.equalsIgnoreCase(com.picacomic.fregata.c.a.uN[2])) {
                return context.getString(R.string.gender_bot);
            }
            return context.getString(R.string.gender_unknown);
        }
        return context.getString(R.string.gender_unknown);
    }

    public static int ax(Context context) {
        return F(context, e.u(context));
    }

    public static int F(Context context, String str) {
        if (str != null && str.endsWith("@picacomic.com")) {
            return str.startsWith("ruff") ? 2 : 1;
        }
        return 0;
    }
}
