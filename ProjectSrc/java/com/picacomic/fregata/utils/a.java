package com.picacomic.fregata.utils;

import com.picacomic.fregata.MyApplication;

/* JADX INFO: compiled from: AdsLink.java */
/* JADX INFO: loaded from: classes.dex */
public class a {
    public static String dS() {
        if (MyApplication.by() == null) {
            return "http://pica-juicy.picacomic.com/android/font";
        }
        return e.am(MyApplication.by()) + "/android/font";
    }

    public static String getDetail() {
        if (MyApplication.by() == null) {
            return "http://pica-juicy.picacomic.com/android/comic_detail";
        }
        return e.am(MyApplication.by()) + "/android/comic_detail";
    }

    public static String dT() {
        if (MyApplication.by() == null) {
            return "http://pica-juicy.picacomic.com/android/chat";
        }
        return e.am(MyApplication.by()) + "/android/chat";
    }

    public static String dU() {
        if (MyApplication.by() == null) {
            return "http://pica-juicy.picacomic.com/android/cat";
        }
        return e.am(MyApplication.by()) + "/android/cat";
    }
}
