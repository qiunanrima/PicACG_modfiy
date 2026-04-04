package com.a.a;

import android.net.Uri;
import com.squareup.picasso.Downloader;
import com.squareup.picasso.NetworkPolicy;
import java.io.IOException;
import okhttp3.Cache;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: compiled from: OkHttp3Downloader.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Downloader {
    private final Cache cache;
    private final Call.Factory cj;

    public a(OkHttpClient okHttpClient) {
        this.cj = okHttpClient;
        this.cache = okHttpClient.cache();
    }

    @Override // com.squareup.picasso.Downloader
    public Downloader.Response load(Uri uri, int i) throws IOException {
        CacheControl cacheControlBuild;
        if (i == 0) {
            cacheControlBuild = null;
        } else if (NetworkPolicy.isOfflineOnly(i)) {
            cacheControlBuild = CacheControl.FORCE_CACHE;
        } else {
            CacheControl.Builder builder = new CacheControl.Builder();
            if (!NetworkPolicy.shouldReadFromDiskCache(i)) {
                builder.noCache();
            }
            if (!NetworkPolicy.shouldWriteToDiskCache(i)) {
                builder.noStore();
            }
            cacheControlBuild = builder.build();
        }
        Request.Builder builderUrl = new Request.Builder().url(uri.toString()).header("User-Agent", "okhttp/3.8.1");
        if (cacheControlBuild != null) {
            builderUrl.cacheControl(cacheControlBuild);
        }
        okhttp3.Response responseExecute = this.cj.newCall(builderUrl.build()).execute();
        int iCode = responseExecute.code();
        if (iCode >= 300) {
            responseExecute.body().close();
            throw new Downloader.ResponseException(iCode + " " + responseExecute.message(), i, iCode);
        }
        boolean z = responseExecute.cacheResponse() != null;
        ResponseBody responseBodyBody = responseExecute.body();
        return new Downloader.Response(responseBodyBody.byteStream(), z, responseBodyBody.contentLength());
    }

    @Override // com.squareup.picasso.Downloader
    public void shutdown() {
        if (this.cache != null) {
            try {
                this.cache.close();
            } catch (IOException unused) {
            }
        }
    }
}
