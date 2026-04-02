package com.picacomic.fregata.b;

import android.content.Context;
import com.picacomic.fregata.R;
import com.picacomic.fregata.activities.SplashActivity;
import com.picacomic.fregata.utils.g;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: compiled from: RestWakaClient.java */
/* JADX INFO: loaded from: classes.dex */
public class e {
    public static final String TAG = "e";
    public static String tu;
    public static String tv;
    public static String version;
    private a ty;

    public e(Context context) {
        Retrofit retrofitBuild;
        tu = g.au(context);
        version = context.getString(R.string.app_version);
        tv = context.getString(R.string.app_build_version);
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        new HttpLoggingInterceptor().setLevel(HttpLoggingInterceptor.Level.BODY);
        try {
            TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: com.picacomic.fregata.b.e.1
                @Override // javax.net.ssl.X509TrustManager
                public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                }

                @Override // javax.net.ssl.X509TrustManager
                public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                }

                @Override // javax.net.ssl.X509TrustManager
                public X509Certificate[] getAcceptedIssuers() {
                    return new X509Certificate[0];
                }
            }};
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            builder.sslSocketFactory(sSLContext.getSocketFactory(), (X509TrustManager) trustManagerArr[0]);
            builder.hostnameVerifier(new HostnameVerifier() { // from class: com.picacomic.fregata.b.e.2
                @Override // javax.net.ssl.HostnameVerifier
                public boolean verify(String str, SSLSession sSLSession) {
                    return true;
                }
            });
            OkHttpClient okHttpClientBuild = builder.build();
            if (!SplashActivity.iV) {
                retrofitBuild = new Retrofit.Builder().baseUrl("http://68.183.234.72/").addConverterFactory(GsonConverterFactory.create()).client(okHttpClientBuild).build();
            } else {
                retrofitBuild = new Retrofit.Builder().baseUrl("http://206.189.95.169/").addConverterFactory(GsonConverterFactory.create()).client(okHttpClientBuild).build();
            }
            this.ty = (a) retrofitBuild.create(a.class);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public a dO() {
        return this.ty;
    }
}
