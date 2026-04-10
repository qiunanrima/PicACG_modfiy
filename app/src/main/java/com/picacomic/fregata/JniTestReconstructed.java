package com.picacomic.fregata.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;

import java.util.Random;

/**
 * 完整还原 libJniTest_reconstructed.cpp 的 Java 实现
 */
public class JniTestReconstructed {

    private static final String API_KEY_0 = "0";
    private static final String API_KEY_1 = "1";
    private static final String COM_KEY = "9Lfmza12Adfg6UgdiqAxZn903hYdabew";
    private static final String CON_KEY = "vgh$;!~y8fjlsdvaAGDRWbcljg9atb/30P@f:v.Byehuofdo|fjwh35bfuD=dkr";
    private static final String ERR_EMPTY = "Empty parameters";

    // APK 签名证书的十六进制字符串（用于签名校验）
    private static final String EXPECTED_CERT_HEX = "19342243308201aca00302010202045816e7ec300d06092a864886f70d01010505003066310d300b06035504061304506";

    private static final Random random = new Random();

    private static char[] ge(int len) {
        char[] buf = new char[len];
        for (int i = 0; i < len; i++) {
            int r = random.nextInt(62);
            char c;
            if (r <= 25) {
                c = (char) (r + 'a');
            } else if (r <= 51) {
                c = (char) (r + 39);
            } else {
                c = (char) (r - 4);
            }
            buf[i] = c;
        }
        return buf;
    }

    private static char gen_char() {
        int r = random.nextInt(62);
        if (r < 26) {
            return (char) (r + 'a');
        } else if (r < 52) {
            return (char) (r + 39);
        } else {
            return (char) (r - 4);
        }
    }

    private static void gen_no(char[] buf, int from, int to) {
        for (int i = from; i <= to; i++) {
            // 将字符串中的 'M'(0x4D) 替换为 'L'(0x4C)
            if (buf[i] == 'M') {
                buf[i] = 'L';
            }
        }
    }

    private static void oe(char[] buf, int start, int end) {
        for (int i = start; i <= end; i++) {
            char c = buf[i];
            if ((i & 1) == 0) { // 偶数位
                if ((c & 1) == 0) { // 偶数 ASCII 值
                    if ((c | 0x20) == 'z') {
                        buf[i] = (char) (c - 1);
                    } else {
                        buf[i] = (char) (c + 1);
                    }
                }
            }
        }
    }

    private static void par(char[] buf, char target, int from, int to) {
        if (from > to) return;
        // Step 1: 避免重复：已有的 target 字符 -1
        for (int i = from; i <= to; i++) {
            if (buf[i] == target) {
                buf[i] = (char) (buf[i] - 1);
            }
        }
        // Step 2: 随机选位置插入
        int range = to - from;
        int pos = (range > 0) ? random.nextInt(range + 1) + from : from;
        buf[pos] = target;
    }

    private static String genKey10(Context ctx) {
        try {
            PackageManager pm = ctx.getPackageManager();
            if (pm == null) return "0";
            String pkgName = ctx.getPackageName();
            if (pkgName == null) return "0";
            PackageInfo pkgInfo = pm.getPackageInfo(pkgName, PackageManager.GET_SIGNATURES);
            if (pkgInfo == null) return "0";
            Signature[] sigs = pkgInfo.signatures;
            if (sigs == null || sigs.length == 0) return "0";
            String sigHex = sigs[0].toCharsString();

            // 与预期证书比对
            if (sigHex.startsWith(EXPECTED_CERT_HEX)) {
                return "1";
            }
        } catch (Exception e) {
            return "0";
        }
        return "0";
    }

    public static String getStringFromNative(String param) {
        if (param == null || param.isEmpty()) {
            return API_KEY_0;
        }
        return API_KEY_1;
    }

    public static String getStringComFromNative(String p1, String p2, String p3, String p4, String p5) {
        if (p1 == null || p2 == null || p3 == null || p4 == null || p5 == null) {
            return ERR_EMPTY;
        }

        String prefix = new String(ge(32));
        StringBuilder builder = new StringBuilder();
        builder.append(prefix);
        builder.append(p1);
        builder.append(COM_KEY);
        builder.append(p2);
        builder.append(p3);
        builder.append(p4);
        builder.append(p5);

        char[] buf = builder.toString().toCharArray();
        int totalLen = buf.length;

        oe(buf, 0, totalLen - 1);
        if (totalLen > 16) {
            par(buf, '#', 8, totalLen - 8);
        }

        return new String(buf);
    }

    public static String getStringConFromNative(String p1, String p2, String p3, String p4, String p5) {
        if (p1 == null || p2 == null || p3 == null || p4 == null || p5 == null) {
            return ERR_EMPTY;
        }

        char prefix = gen_char();
        StringBuilder builder = new StringBuilder();
        builder.append(prefix);
        builder.append(CON_KEY);
        builder.append(p1);
        builder.append(p2);
        builder.append(p3);
        builder.append(p4);
        builder.append(p5);

        char[] buf = builder.toString().toCharArray();
        int totalLen = buf.length;

        gen_no(buf, 0, totalLen - 1);
        oe(buf, 0, totalLen - 1);
        if (totalLen > 8) {
            par(buf, '!', 4, totalLen - 4);
        }

        return new String(buf);
    }

    public static String getStringSigFromNative(Context ctx) {
        return genKey10(ctx);
    }
}
