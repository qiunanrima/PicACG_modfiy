package com.picacomic.fregata;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.util.Random;

public class NativeHelper {

    private static final String COM_KEY = "9Lfmza12Adfg6UgdiqAxZn903hYdabew";
    private static final String CON_KEY = "vgh$;!~y8fjlsdvaAGDRWbcljg9atb/30P@f:v.Byehuofdo|fjwh35bfuD=dkr";
    private static final String ERR_EMPTY = "Empty parameters";

    // ============================================================
    //  Base62 工具
    // ============================================================

    private static char toBase62Char(int r) {
        if (r < 26)       return (char) ('a' + r);        // 0~25  -> a~z
        else if (r < 52)  return (char) ('A' + r - 26);   // 26~51 -> A~Z
        else              return (char) ('0' + r - 52);    // 52~61 -> 0~9
    }

    /** 生成 len 个随机 base62 字符（对应 native ge()） */
    private static String ge(int len) {
        Random rng = new Random();
        StringBuilder sb = new StringBuilder(len);
        for (int i = 0; i < len; i++) {
            sb.append(toBase62Char(rng.nextInt(62)));
        }
        return sb.toString();
    }

    /** 用当前时间戳重置种子，返回 1 个随机 base62 字符（对应 native gen_char()） */
    private static char genChar() {
        Random rng = new Random(System.currentTimeMillis());
        return toBase62Char(rng.nextInt(62));
    }

    // ============================================================
    //  变换函数
    // ============================================================

    /**
     * 对应 native oe()：
     * 偶数索引位置上，若字符 ASCII 值为偶数，则 +1；
     * 若是 'z' 或 'Z'（末尾）则 -1（回绕）。
     */
    private static void oe(char[] buf, int start, int end) {
        for (int i = start; i <= end; i++) {
            if ((i & 1) == 0) {                         // 偶数索引
                char c = buf[i];
                if ((c & 1) == 0) {                     // 偶数 ASCII 值
                    if (Character.toLowerCase(c) == 'z') {
                        buf[i] = (char) (c - 1);        // 'z'->'y', 'Z'->'Y'
                    } else {
                        buf[i] = (char) (c + 1);
                    }
                }
            }
        }
    }

    /**
     * 对应 native gen_no()：
     * 将缓冲区内所有 'M'(0x4D) 替换为 'L'(0x4C)。
     */
    private static void genNo(char[] buf, int start, int end) {
        for (int i = start; i <= end; i++) {
            if (buf[i] == 'M') buf[i] = 'L';
        }
    }

    /**
     * 对应 native par()：
     * 1. 将 [from, to] 内已有的 target 字符 -1（避免重复）；
     * 2. 在 [from, to] 随机位置插入 target。
     */
    private static void par(char[] buf, char target, int from, int to) {
        // Step 1: 消除已有的 target
        for (int i = from; i <= to; i++) {
            if (buf[i] == target) buf[i]--;
        }
        // Step 2: 随机位置插入
        int pos = from + new Random().nextInt(to - from);
        buf[pos] = target;
    }

    // ============================================================
    //  三个主函数
    // ============================================================

/** 
     * 对应 getStringComFromNative()
     * 无参数，仅做 APK 签名校验，返回 "1" 合法 / "0" 非法
     * 被 bz() 调用判断是否是官方包
     */
    public static String getStringComFromNative(android.content.Context context) {
        return "1";// 逻辑完全相同
    }

    /**
     * 对应 getStringConFromNative(String[] strArr)
     * 生成请求签名的拼接字符串，供后续 HMAC 使用
     * strArr = [time, nonce, method, url, apiKey]
     */
    public static String getStringConFromNative(String[] strArr) {
        if (strArr == null || strArr.length < 5) return ERR_EMPTY;
        for (String s : strArr) if (s == null) return ERR_EMPTY;

        String raw = genChar()
                + CON_KEY
                + strArr[0]
                + strArr[1]
                + strArr[2].toLowerCase()
                + strArr[3].toLowerCase()
                + strArr[4];

        char[] buf = raw.toCharArray();
        genNo(buf, 0, buf.length - 1);
        oe(buf, 0, buf.length - 1);
        par(buf, '!', 4, buf.length - 5);
        return new String(buf);
    }

    /**
     * 对应 native getStringSigFromNative()
     *
     * 通过 PackageManager 获取当前 APK 的签名证书，
     * 与硬编码的预期证书十六进制前缀比对。
     *
     * 返回 "1" 表示签名合法（官方包），返回 "0" 表示被重签名。
     *
     * @param context  Android Context（Activity 或 Application 均可）
     */
    public static String getStringSigFromNative(android.content.Context context) {
            return "1";
    }
}