package com.picacomic.fregata.services;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.picacomic.fregata.R;
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
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
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
    private static final int DOWNLOAD_NOTIFICATION_ID = 2201;
    private static final String DOWNLOAD_CHANNEL_ID = "comic_downloads";
    Call<GeneralResponse<ComicPagesResponse>> hZ;
    private ExecutorService tO;
    private CompletionService<b> tP;
    private LocalBroadcastManager tQ;
    private List<a> tR;
    private final Set<String> tV;
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
        this.tV = Collections.synchronizedSet(new HashSet<String>());
    }

    public DownloadService(String str) {
        super(str);
        this.tS = false;
        this.tT = 4000;
        this.tO = Executors.newFixedThreadPool(1);
        this.tP = new ExecutorCompletionService(this.tO);
        this.tR = new ArrayList();
        this.tV = Collections.synchronizedSet(new HashSet<String>());
    }

    public static void startDownload(Context context, Intent intent) {
        ContextCompat.startForegroundService(context, intent);
    }

    @Override // android.app.IntentService, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        startForeground(DOWNLOAD_NOTIFICATION_ID, createDownloadNotification());
        boolean z = this.tS;
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        String stringExtra = intent.getStringExtra("COMIC_ID");
        String stringExtra2 = intent.getStringExtra("EPISODE_ID");
        if (stringExtra == null || stringExtra2 == null) {
            return;
        }
        DownloadComicEpisodeObject downloadComicEpisodeObjectAy = com.picacomic.fregata.utils.b.ay(stringExtra, stringExtra2);
        if (downloadComicEpisodeObjectAy != null && downloadComicEpisodeObjectAy.getStatus() == 4) {
            f.E(TAG, "Skip downloaded task " + stringExtra2);
            return;
        }
        if (!this.tV.add(stringExtra2)) {
            f.E(TAG, "Skip duplicate running task " + stringExtra2);
            return;
        }
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

    private Notification createDownloadNotification() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationManager notificationManager = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
            NotificationChannel channel = new NotificationChannel(
                    DOWNLOAD_CHANNEL_ID,
                    getString(R.string.download),
                    NotificationManager.IMPORTANCE_LOW
            );
            notificationManager.createNotificationChannel(channel);
        }
        return new NotificationCompat.Builder(this, DOWNLOAD_CHANNEL_ID)
                .setSmallIcon(R.drawable.ic_file_download_black_24dp)
                .setContentTitle(getString(R.string.download))
                .setContentText(getString(R.string.alert_continue_download_comic_title))
                .setOngoing(true)
                .setOnlyAlertOnce(true)
                .setPriority(NotificationCompat.PRIORITY_LOW)
                .build();
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

    public void B(String comicId, String episodeId) throws Exception {
        try {
            var episode = com.picacomic.fregata.utils.b.ay(comicId, episodeId);
            if (episode == null) throw new java.io.IOException("Missing episode " + episodeId);
            if (episode.getStatus() == 4) return;
            episode.setStatus(2);
            episode.save();
            var comic = com.picacomic.fregata.utils.b.aw(comicId);
            String comicTitle = comic == null ? "" : comic.getTitle();
            var api = new d(this).dO();
            int batches = 1;
            int total = 0;
            int downloaded = 0;
            String title = "";
            for (int batch = 1; batch <= batches; batch++) {
                var request = api.e(e.z(this), episodeId, batch);
                this.hZ = request;
                var response = request.execute();
                if (!response.isSuccessful() || response.body() == null || response.body().data == null) {
                    throw new java.io.IOException("Failed to load batch " + batch);
                }
                var data = response.body().data;
                var pages = data.getPages();
                if (pages == null || pages.getDocs() == null || pages.getPages() < batch) {
                    throw new java.io.IOException("Invalid episode batch " + batch);
                }
                if (batch == 1) {
                    total = pages.getTotal();
                    batches = pages.getPages();
                    episode.setTotal(total);
                    episode.save();
                } else if (pages.getTotal() != total || pages.getPages() != batches) {
                    throw new java.io.IOException("Episode changed during download");
                }
                title = data.getEp().getTitle();
                for (ComicPageObject page : pages.getDocs()) {
                    String root = c.ec();
                    File file = new File(root, episodeId + "/" + page.getMedia().getPath());
                    File parent = file.getParentFile();
                    if (!parent.isDirectory() && !parent.mkdirs() && !parent.isDirectory()) {
                        throw new java.io.IOException("Cannot create " + parent);
                    }
                    g.a(g.b(page.getMedia()), file, false);
                    if (!com.picacomic.fregata.utils.b.a(new DownloadComicPageObject(comicId, episodeId, root, page))) {
                        throw new java.io.IOException("Cannot save downloaded page");
                    }
                    downloaded++;
                    if (downloaded < total) a(comicId, episodeId, comicTitle, title, downloaded, total);
                }
            }
            if (downloaded != total) throw new java.io.IOException("Incomplete episode " + episodeId);
            episode.setStatus(4);
            episode.save();
            updateComicDownloadStatus(comicId);
            a(comicId, episodeId, comicTitle, title, downloaded, total);
        } finally {
            this.tV.remove(episodeId);
        }
    }
    private void updateComicDownloadStatus(String str) {
        try {
            DbComicDetailObject dbComicDetailObjectAw = com.picacomic.fregata.utils.b.aw(str);
            if (dbComicDetailObjectAw == null) {
                return;
            }
            List listFind = DownloadComicEpisodeObject.find(DownloadComicEpisodeObject.class, "comic_id = ?", str);
            boolean z = false;
            if (listFind != null) {
                for (Object obj : listFind) {
                    DownloadComicEpisodeObject downloadComicEpisodeObject = (DownloadComicEpisodeObject) obj;
                    if (downloadComicEpisodeObject.getStatus() != 4) {
                        z = true;
                        break;
                    }
                }
            }
            dbComicDetailObjectAw.setDownloadStatus(z ? 1 : 4);
            dbComicDetailObjectAw.setDownloadedAt(System.currentTimeMillis());
            dbComicDetailObjectAw.save();
        } catch (Exception e) {
            e.printStackTrace();
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
