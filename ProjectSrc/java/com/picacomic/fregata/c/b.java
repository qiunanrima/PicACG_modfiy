package com.picacomic.fregata.c;

import java.util.Locale;

/* JADX INFO: compiled from: Language.java */
/* JADX INFO: loaded from: classes.dex */
public class b {
    public static String uP;

    public static Locale aD(String str) {
        if (str.equalsIgnoreCase("cantonese")) {
            return new Locale("yue", "HK");
        }
        if (str.equalsIgnoreCase("japanese")) {
            return Locale.JAPANESE;
        }
        if (str.equalsIgnoreCase("english")) {
            return Locale.ENGLISH;
        }
        return Locale.CHINESE;
    }
}
