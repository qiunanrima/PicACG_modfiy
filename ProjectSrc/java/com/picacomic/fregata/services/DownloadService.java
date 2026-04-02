package com.picacomic.fregata.services;

import android.app.IntentService;
import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.objects.ComicPageObject;
import com.picacomic.fregata.objects.databaseTable.DbComicDetailObject;
import com.picacomic.fregata.objects.databaseTable.DownloadComicEpisodeObject;
import com.picacomic.fregata.objects.databaseTable.DownloadComicPageObject;
import com.picacomic.fregata.objects.responses.DataClass.ComicPageResponse.ComicPagesResponse;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.utils.c;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletionService;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import retrofit2.Call;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class DownloadService extends IntentService {
    public static final String TAG = "DownloadService";
    public static final String tN = DownloadService.class.getName() + ".progress_update";
    Call<GeneralResponse<ComicPagesResponse>> hZ;
    private ExecutorService tO;
    private CompletionService<b> tP;
    private LocalBroadcastManager tQ;
    private List<a> tR;
    boolean tS;
    int tT;
    long tU;

    public DownloadService() {
        super(TAG);
        this.tS = false;
        this.tT = 4000;
        this.tO = Executors.newFixedThreadPool(1);
        this.tP = new ExecutorCompletionService(this.tO);
        this.tR = new ArrayList();
    }

    public DownloadService(String str) {
        super(str);
        this.tS = false;
        this.tT = 4000;
        this.tO = Executors.newFixedThreadPool(1);
        this.tP = new ExecutorCompletionService(this.tO);
        this.tR = new ArrayList();
    }

    @Override // android.app.IntentService, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        boolean z = this.tS;
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        String stringExtra = intent.getStringExtra("COMIC_ID");
        String stringExtra2 = intent.getStringExtra("EPISODE_ID");
        if (this.tS) {
            a aVar = new a(stringExtra, stringExtra2);
            this.tR.add(aVar);
            f.E(TAG, "Add Intent Task" + stringExtra2 + " Total Task " + this.tR.size());
            this.tP.submit(aVar);
            f.E(TAG, "Submit Intent Task" + stringExtra2 + " Total Task " + this.tR.size());
            dQ();
            f.E(TAG, "Finish intent Tasks - Total:" + this.tR.size());
            return;
        }
        this.tS = true;
        this.tQ = LocalBroadcastManager.getInstance(this);
        this.tR.add(new a(stringExtra, stringExtra2));
        Iterator<a> it = this.tR.iterator();
        while (it.hasNext()) {
            this.tP.submit(it.next());
            f.E(TAG, "Submit Task " + this.tT + " Total Task " + this.tR.size());
        }
        for (int i = 0; i < this.tR.size(); i++) {
            dQ();
        }
        f.E(TAG, "Finish All Tasks - Total:" + this.tR.size());
    }

    public void dQ() {
        try {
            b bVar = this.tP.take().get();
            if (bVar == null || !bVar.tW) {
                return;
            }
            f.E(TAG, "Download Success /" + this.tR.size());
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e2) {
            e2.printStackTrace();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    private class b {
        boolean tW;

        private b(boolean z) {
            this.tW = z;
        }
    }

    private class a implements Callable<b> {
        String comicId;
        String episodeId;

        public a(String str, String str2) {
            this.comicId = str;
            this.episodeId = str2;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: dR, reason: merged with bridge method [inline-methods] */
        public b call() throws Exception {
            DownloadService.this.B(this.comicId, this.episodeId);
            f.E(DownloadService.TAG, "Finish TaskId " + this.episodeId);
            return new b(true);
        }
    }

    @Override // android.app.IntentService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        f.E(TAG, "Run Destroy and ShutDown");
        if (this.hZ != null) {
            this.hZ.cancel();
        }
        this.tO.shutdown();
    }

    public void B(String str, String str2) {
        int i;
        int pages;
        boolean z;
        Response<GeneralResponse<ComicPagesResponse>> responseExecute = null;
        int total = 0;
        int limit = 0;
        String title = "";
        f.D(TAG, "Call Comic Page ?");
        d dVar = new d(this);
        DbComicDetailObject dbComicDetailObjectAw = com.picacomic.fregata.utils.b.aw(str);
        String title2 = dbComicDetailObjectAw != null ? dbComicDetailObjectAw.getTitle() : "";
        DownloadComicEpisodeObject downloadComicEpisodeObjectAy = com.picacomic.fregata.utils.b.ay(str2);
        boolean z2 = false;
        int i2 = 1;
        boolean z3 = false;
        int i3 = 0;
        while (i3 < i2) {
            if (downloadComicEpisodeObjectAy != null) {
                downloadComicEpisodeObjectAy.setStatus(2);
                downloadComicEpisodeObjectAy.save();
            } else {
                f.D(TAG, "DB error, missing DownloadComicEpisodeObject, episodeId = " + str2);
            }
            int i4 = i3 + 1;
            this.hZ = dVar.dO().e(e.z(this), str2, i4);
            try {
                responseExecute = this.hZ.execute();
            } catch (Exception e) {
                e.printStackTrace();
                i = i4;
                pages = i2;
            }
            if (responseExecute == null || responseExecute.code() != 200) {
                i = i4;
                i3 = i;
                z2 = false;
            } else {
                f.F(TAG, responseExecute.body().data.getPages().toString());
                pages = responseExecute.body().data.getPages().getPages();
                try {
                    total = responseExecute.body().data.getPages().getTotal();
                    limit = responseExecute.body().data.getPages().getLimit();
                    title = responseExecute.body().data.getEp().getTitle();
                    if (z3 || downloadComicEpisodeObjectAy == null) {
                        z = z3;
                    } else {
                        try {
                            downloadComicEpisodeObjectAy.setTotal(total);
                            downloadComicEpisodeObjectAy.save();
                            z = true;
                        } catch (Exception e2) {
                            Exception e = e2;
                            z = z3;
                            i = i4;
                            e.printStackTrace();
                            i2 = pages;
                            z3 = z;
                            i3 = i;
                            z2 = false;
                        }
                    }
                } catch (Exception e3) {
                    Exception e = e3;
                    i = i4;
                    z = z3;
                    e.printStackTrace();
                    i2 = pages;
                    z3 = z;
                    i3 = i;
                    z2 = false;
                }
                try {
                    if (responseExecute.body().data == null || responseExecute.body().data.getPages().getDocs() == null) {
                        i = i4;
                    } else {
                        if (downloadComicEpisodeObjectAy != null) {
                            downloadComicEpisodeObjectAy.setStatus(2);
                            downloadComicEpisodeObjectAy.save();
                        } else {
                            f.D(TAG, "DB error, missing DownloadComicEpisodeObject, episodeId = " + str2);
                        }
                        int i5 = 0;
                        while (i5 < responseExecute.body().data.getPages().getDocs().size()) {
                            ComicPageObject comicPageObject = responseExecute.body().data.getPages().getDocs().get(i5);
                            String strEc = c.ec();
                            File file = new File(strEc, str2 + "/" + comicPageObject.getMedia().getPath());
                            if (!file.exists() && !file.getParentFile().exists()) {
                                file.getParentFile().mkdirs();
                            }
                            try {
                                g.a(g.b(comicPageObject.getMedia()), file, z2);
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                            DownloadComicPageObject downloadComicPageObject = new DownloadComicPageObject(str, str2, strEc, comicPageObject);
                            com.picacomic.fregata.utils.b.a(downloadComicPageObject);
                            String str3 = TAG;
                            StringBuilder sb = new StringBuilder();
                            sb.append("Downloaded ");
                            sb.append(str2);
                            sb.append(" Image");
                            int i6 = i5 + 1;
                            sb.append(i6);
                            sb.append("/");
                            sb.append(total);
                            sb.append(": ");
                            sb.append(file.getAbsolutePath());
                            sb.append("\n");
                            sb.append(downloadComicPageObject);
                            f.F(str3, sb.toString());
                            int i7 = total;
                            i = i4;
                            try {
                                a(str, str2, title2, title, (i3 * limit) + i5 + 1, i7);
                                i5 = i6;
                                total = i7;
                                i4 = i;
                                z2 = false;
                            } catch (Exception e5) {
                                Exception e = e5;
                                e.printStackTrace();
                                i2 = pages;
                                z3 = z;
                                i3 = i;
                                z2 = false;
                            }
                        }
                        i = i4;
                        if (downloadComicEpisodeObjectAy != null) {
                            downloadComicEpisodeObjectAy.setStatus(4);
                            downloadComicEpisodeObjectAy.save();
                        } else {
                            f.D(TAG, "DB error, missing DownloadComicEpisodeObject, episodeId = " + str2);
                        }
                    }
                } catch (Exception e6) {
                    Exception e = e6;
                    i = i4;
                    e.printStackTrace();
                    i2 = pages;
                    z3 = z;
                    i3 = i;
                    z2 = false;
                }
                i2 = pages;
                z3 = z;
                i3 = i;
                z2 = false;
            }
        }
    }

    private synchronized void a(String str, String str2, String str3, String str4, int i, int i2) {
        this.tU = System.currentTimeMillis();
        Intent intent = new Intent();
        intent.setAction(tN);
        intent.putExtra("COMIC_ID", str);
        intent.putExtra("EPISODE_ID", str2);
        intent.putExtra("COMIC_NAME", str3);
        intent.putExtra("EPISODE_TITLE", str4);
        intent.putExtra("PROGRESS_CURRENT", i);
        intent.putExtra("PROGRESS_TOTAL", i2);
        this.tQ.sendBroadcast(intent);
    }
}
