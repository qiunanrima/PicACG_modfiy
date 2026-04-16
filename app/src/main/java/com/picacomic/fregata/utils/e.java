package com.picacomic.fregata.utils;

import android.content.Context;
import java.util.Set;

/* JADX INFO: compiled from: PreferenceHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class e {
    public static final String[] ur = {"KEY_FILTER_ON_OFF_INDEX_FORBIDDEN", "KEY_FILTER_ON_OFF_INDEX_JAPANESE", "KEY_FILTER_ON_OFF_INDEX_BL", "KEY_FILTER_ON_OFF_INDEX_HEAVY", "KEY_FILTER_ON_OFF_INDEX_PURE_LOVE", "KEY_FILTER_ON_OFF_INDEX_FAKE_GIRL", "KEY_FILTER_ON_OFF_INDEX_FUTARI", "KEY_FILTER_ON_OFF_INDEX_WEBTOON"};

    public static String u(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_USER_LOGIN_EMAIL", "");
    }

    public static boolean e(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_USER_LOGIN_EMAIL", str).commit();
    }

    public static String v(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_USER_LOGIN_PASSWORD", "");
    }

    public static boolean f(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_USER_LOGIN_PASSWORD", str).commit();
    }

    public static boolean w(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_COMIC_VIEWER_TESTING_VERSION", false);
    }

    public static boolean a(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_COMIC_VIEWER_TESTING_VERSION", z).commit();
    }

    public static boolean x(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_PERFORMANCE_ENHANCEMENT", true);
    }

    public static boolean b(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_PERFORMANCE_ENHANCEMENT", z).commit();
    }

    public static String y(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_LOCK_PASSWORD", "");
    }

    public static boolean g(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_LOCK_PASSWORD", str).commit();
    }

    public static String z(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_TOKEN", "");
    }

    public static boolean h(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_TOKEN", str).commit();
    }

    public static int A(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getInt("KEY_USER_LEVEL", -1);
    }

    public static boolean a(Context context, int i) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putInt("KEY_USER_LEVEL", i).commit();
    }

    public static String B(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_LOCAL_API_DATA_PROFILE", "");
    }

    public static boolean i(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_LOCAL_API_DATA_PROFILE", str).commit();
    }

    public static String C(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_LOCAL_API_DATA_CATEGORY_LIST", "");
    }

    public static boolean j(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_LOCAL_API_DATA_CATEGORY_LIST", str).commit();
    }

    public static String D(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_LOCAL_API_DATA_SORTING_CATEGORY_LIST", "");
    }

    public static boolean k(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_LOCAL_API_DATA_SORTING_CATEGORY_LIST", str).commit();
    }

    public static String E(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_LOCAL_API_DATA_ANNOUNCEMTN_LIST", "");
    }

    public static boolean l(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_LOCAL_API_DATA_ANNOUNCEMTN_LIST", str).commit();
    }

    public static String F(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_LOCAL_API_DATA_BANNER_LIST", "");
    }

    public static boolean m(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_LOCAL_API_DATA_BANNER_LIST", str).commit();
    }

    public static String G(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_LOCAL_API_DATA_CHATROOM_LIST", "[{\"title\":\"嗶咔聊天室\",\"description\":\"嗶咔聊天室\",\"url\":\"https://chat.picacomic.com\"}]");
    }

    public static boolean n(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_LOCAL_API_DATA_CHATROOM_LIST", str).commit();
    }

    public static String H(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_LOCAL_API_DATA_PICA_APP_LIST", "[]");
    }

    public static boolean o(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_LOCAL_API_DATA_PICA_APP_LIST", str).commit();
    }

    public static String I(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_LAST_ANNOUNCEMENT_ID", "");
    }

    public static boolean p(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_LAST_ANNOUNCEMENT_ID", str).commit();
    }

    public static long J(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getLong("KEY_TIME_DIFFERENCE", 0L);
    }

    public static boolean a(Context context, long j) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putLong("KEY_TIME_DIFFERENCE", j).commit();
    }

    public static boolean K(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_SHOW_HINT_COMIC_VIEWER_SETTING", true);
    }

    public static boolean c(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_SHOW_HINT_COMIC_VIEWER_SETTING", z).commit();
    }

    public static boolean L(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_COMIC_VIEWER_NIGHT_MODE", false);
    }

    public static boolean d(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_COMIC_VIEWER_NIGHT_MODE", z).commit();
    }

    public static boolean M(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_COMIC_VIEWER_VERTICAL_SCREEN_ORIENTATION", true);
    }

    public static boolean e(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_COMIC_VIEWER_VERTICAL_SCREEN_ORIENTATION", z).commit();
    }

    public static boolean N(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_COMIC_VIEWER_VERTICAL_SCROLL_DIRECTION", true);
    }

    public static boolean f(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_COMIC_VIEWER_VERTICAL_SCROLL_DIRECTION", z).commit();
    }

    public static int O(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getInt("KEY_COMIC_VIEWER_AUTO_SCROLL_TIME_INTERVAL", 1000);
    }

    public static boolean b(Context context, int i) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putInt("KEY_COMIC_VIEWER_AUTO_SCROLL_TIME_INTERVAL", i).commit();
    }

    public static long P(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getLong("KEY_LAST_POPUP_ADS_TIMESTAMP", 0L);
    }

    public static boolean b(Context context, long j) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putLong("KEY_LAST_POPUP_ADS_TIMESTAMP", j).commit();
    }

    public static boolean Q(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_COMIC_VIEWER_VOLUME_PAGING_CONTROL", true);
    }

    public static boolean g(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_COMIC_VIEWER_VOLUME_PAGING_CONTROL", z).commit();
    }

    public static int R(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getInt("KEY_COMIC_VIEWER_IMAGE_QUALITY", 2);
    }

    public static boolean c(Context context, int i) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putInt("KEY_COMIC_VIEWER_IMAGE_QUALITY", i).commit();
    }

    public static String S(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_IMAGE_STORAGE", null);
    }

    public static boolean q(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_IMAGE_STORAGE", str).commit();
    }

    public static boolean d(Context context, int i) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean(ur[i], false);
    }

    public static boolean a(Context context, int i, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean(ur[i], z).commit();
    }

    public static boolean T(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_CHATROOM_SETTING_NIGHT_MODE", false);
    }

    public static boolean h(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_CHATROOM_SETTING_NIGHT_MODE", z).commit();
    }

    public static boolean U(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_CHATROOM_SETTING_SHOW_TIMESTAMP", true);
    }

    public static boolean i(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_CHATROOM_SETTING_SHOW_TIMESTAMP", z).commit();
    }

    public static boolean V(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_CHATROOM_SETTING_FIX_IMAGE_SIZE", false);
    }

    public static boolean j(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_CHATROOM_SETTING_FIX_IMAGE_SIZE", z).commit();
    }

    public static int W(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getInt("KEY_CHATROOM_SETTING_MAX_MESSAGE_SIZE", 100);
    }

    public static boolean e(Context context, int i) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putInt("KEY_CHATROOM_SETTING_MAX_MESSAGE_SIZE", i).commit();
    }

    public static int X(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getInt("KEY_CHATROOM_SETTING_ADS_INTERVAL_2", 30);
    }

    public static boolean f(Context context, int i) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putInt("KEY_CHATROOM_SETTING_ADS_INTERVAL_2", i).commit();
    }

    public static boolean Y(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_CHATROOM_SETTING_SPEECH", false);
    }

    public static boolean k(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_CHATROOM_SETTING_SPEECH", z).commit();
    }

    public static boolean Z(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_CHATROOM_SETTING_SPEECH_WITH_NAME", false);
    }

    public static boolean l(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_CHATROOM_SETTING_SPEECH_WITH_NAME", z).commit();
    }

    public static String aa(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_CHATROOM_SETTING_SPEECH_LANGUAGE", "chinese");
    }

    public static boolean r(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_CHATROOM_SETTING_SPEECH_LANGUAGE", str).commit();
    }

    public static String ab(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_CHATROOM_SETTING_CUSTOM_AVATAR", "");
    }

    public static boolean s(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_CHATROOM_SETTING_CUSTOM_AVATAR", str).commit();
    }

    public static String ac(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_CHATROOM_SETTING_CUSTOM_NAME", "");
    }

    public static boolean t(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_CHATROOM_SETTING_CUSTOM_NAME", str).commit();
    }

    public static boolean ad(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_CHATROOM_SETTING_HIDE_ALL_AVATAR", false);
    }

    public static boolean m(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_CHATROOM_SETTING_HIDE_ALL_AVATAR", z).commit();
    }

    public static String ae(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_CHATROOM_SETTING_BLACK_LIST_USER", null);
    }

    public static boolean u(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_CHATROOM_SETTING_BLACK_LIST_USER", str).commit();
    }

    public static int af(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getInt("KEY_CHATROOM_SETTING_COLOR_REVERSE", 70);
    }

    public static boolean g(Context context, int i) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putInt("KEY_CHATROOM_SETTING_COLOR_REVERSE", i).commit();
    }

    public static String ag(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_ANONYMOUS_CHAT_ROOM_ID", null);
    }

    public static boolean v(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_ANONYMOUS_CHAT_ROOM_ID", str).commit();
    }

    public static String ah(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_ANONYMOUS_CHAT_MATCHED_NAME", null);
    }

    public static boolean w(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_ANONYMOUS_CHAT_MATCHED_NAME", str).commit();
    }

    public static boolean ai(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_SHOW_FAQ", true);
    }

    public static boolean n(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_SHOW_FAQ", z).commit();
    }

    public static String aj(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_NOTIFICATION_ID", "");
    }

    public static boolean x(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_NOTIFICATION_ID", str).commit();
    }

    public static boolean ak(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_NOTIFICATION_IS_NEW", false);
    }

    public static boolean o(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_NOTIFICATION_IS_NEW", z).commit();
    }

    public static int al(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getInt("KEY_THEME_COLOR", 0);
    }

    public static boolean h(Context context, int i) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putInt("KEY_THEME_COLOR", i).commit();
    }

    public static String am(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_AD_URL_BASE", "http://pica-juicy.picacomic.com");
    }

    public static boolean y(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_AD_URL_BASE", str).commit();
    }

    public static String an(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getString("KEY_AD_KEYWORD", "wakamoment");
    }

    public static boolean z(Context context, String str) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putString("KEY_AD_KEYWORD", str).commit();
    }

    public static String[] ao(Context context) {
        Set<String> stringSet = context.getSharedPreferences("PICACOMIC_FREGATA", 0).getStringSet("KEY_DNS_IP", null);
        if (stringSet == null) {
            return null;
        }
        return (String[]) stringSet.toArray(new String[stringSet.size()]);
    }

    public static boolean a(Context context, Set<String> set) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putStringSet("KEY_DNS_IP", set).commit();
    }

    public static boolean ap(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_IS_GIRL", false);
    }

    public static boolean p(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_IS_GIRL", z).commit();
    }

    public static int aq(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getInt("KEY_CHANNEL", 1);
    }

    public static boolean i(Context context, int i) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putInt("KEY_CHANNEL", i).commit();
    }

    public static boolean isSslVerificationDisabled(Context context) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).getBoolean("KEY_DISABLE_SSL_VERIFICATION", false);
    }

    public static boolean setSslVerificationDisabled(Context context, boolean z) {
        return context.getSharedPreferences("PICACOMIC_FREGATA", 0).edit().putBoolean("KEY_DISABLE_SSL_VERIFICATION", z).commit();
    }
}
