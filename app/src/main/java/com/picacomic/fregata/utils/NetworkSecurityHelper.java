package com.picacomic.fregata.utils;

import android.content.Context;
import android.util.Log;
import com.picacomic.fregata.b.f;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.OkHttpClient;

public final class NetworkSecurityHelper {
    private static final String TAG = "NetworkSecurityHelper";

    private NetworkSecurityHelper() {
    }

    public static OkHttpClient.Builder applySslPolicy(OkHttpClient.Builder builder, Context context) {
        if (builder == null) {
            builder = new OkHttpClient.Builder();
        }
        if (context != null && e.isSslVerificationDisabled(context)) {
            return applyTrustAllSsl(builder);
        }
        return applySystemTls(builder);
    }

    public static OkHttpClient createClient(Context context) {
        return applySslPolicy(new OkHttpClient.Builder(), context).build();
    }

    public static OkHttpClient.Builder applySystemTls(OkHttpClient.Builder builder) {
        try {
            f fVar = new f();
            builder.sslSocketFactory(fVar, fVar.systemDefaultTrustManager());
        } catch (KeyManagementException | NoSuchAlgorithmException ex) {
            Log.d(TAG, "Failed to create system TLS socket factory", ex);
        }
        return builder;
    }

    public static OkHttpClient.Builder applyTrustAllSsl(OkHttpClient.Builder builder) {
        try {
            TrustAllManager trustAllManager = new TrustAllManager();
            SSLContext sslContext = SSLContext.getInstance("TLS");
            sslContext.init(null, new TrustManager[]{trustAllManager}, new SecureRandom());
            builder.sslSocketFactory(sslContext.getSocketFactory(), trustAllManager);
            builder.hostnameVerifier(new TrustAllHostnameVerifier());
        } catch (Exception ex) {
            throw new RuntimeException("Failed to disable SSL verification", ex);
        }
        return builder;
    }

    private static final class TrustAllManager implements X509TrustManager {
        @Override
        public void checkClientTrusted(X509Certificate[] chain, String authType) {
        }

        @Override
        public void checkServerTrusted(X509Certificate[] chain, String authType) {
        }

        @Override
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    private static final class TrustAllHostnameVerifier implements HostnameVerifier {
        @Override
        public boolean verify(String hostname, SSLSession session) {
            return true;
        }
    }
}
