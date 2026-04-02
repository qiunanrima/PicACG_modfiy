package com.picacomic.fregata.utils;

import com.picacomic.fregata.objects.databaseTable.DbComicDetailObject;
import com.picacomic.fregata.objects.databaseTable.DbComicViewRecordObject;
import com.picacomic.fregata.objects.databaseTable.DownloadComicEpisodeObject;
import com.picacomic.fregata.objects.databaseTable.DownloadComicPageObject;
import java.util.List;

/* JADX INFO: compiled from: DBHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class b {
    public static final String TAG = "b";

    public static DbComicDetailObject aw(String str) {
        List listFind = DbComicDetailObject.find(DbComicDetailObject.class, "comic_id = ?", str);
        if (listFind == null || listFind.size() == 0) {
            return null;
        }
        return (DbComicDetailObject) listFind.get(0);
    }

    public static boolean a(DbComicDetailObject dbComicDetailObject) {
        if (dbComicDetailObject == null || dbComicDetailObject.getComicId() == null) {
            return false;
        }
        if (aw(dbComicDetailObject.getComicId()) != null) {
            DbComicDetailObject dbComicDetailObjectAw = aw(dbComicDetailObject.getComicId());
            dbComicDetailObjectAw.updateDbComicDetailObject(dbComicDetailObject);
            dbComicDetailObjectAw.save();
            f.D(TAG, dbComicDetailObjectAw.toString());
            return true;
        }
        dbComicDetailObject.save();
        f.D(TAG, dbComicDetailObject.toString());
        return true;
    }

    public static DbComicViewRecordObject ax(String str) {
        List listFind = DbComicViewRecordObject.find(DbComicViewRecordObject.class, "comic_id = ?", str);
        if (listFind == null || listFind.size() == 0) {
            return null;
        }
        return (DbComicViewRecordObject) listFind.get(0);
    }

    public static boolean a(DbComicViewRecordObject dbComicViewRecordObject) {
        if (dbComicViewRecordObject == null || dbComicViewRecordObject.getComicId() == null) {
            return false;
        }
        if (ax(dbComicViewRecordObject.getComicId()) != null) {
            DbComicViewRecordObject dbComicViewRecordObjectAx = ax(dbComicViewRecordObject.getComicId());
            dbComicViewRecordObjectAx.updateDbComicViewRecordObject(dbComicViewRecordObject);
            dbComicViewRecordObjectAx.save();
            return true;
        }
        dbComicViewRecordObject.save();
        return true;
    }

    public static DownloadComicEpisodeObject ay(String str) {
        List listFind = DownloadComicEpisodeObject.find(DownloadComicEpisodeObject.class, "episode_id = ?", str);
        if (listFind == null || listFind.size() == 0) {
            return null;
        }
        f.E(TAG, "Load Ep DB object size = " + listFind.size());
        return (DownloadComicEpisodeObject) listFind.get(0);
    }

    public static DownloadComicPageObject az(String str) {
        List listFind = DownloadComicPageObject.find(DownloadComicPageObject.class, "comic_page_id = ?", str);
        if (listFind == null || listFind.size() == 0) {
            return null;
        }
        f.E(TAG, "Load Page DB object size = " + listFind.size());
        return (DownloadComicPageObject) listFind.get(0);
    }

    public static boolean a(DownloadComicPageObject downloadComicPageObject) {
        if (downloadComicPageObject == null || downloadComicPageObject.getComicPageId() == null) {
            return false;
        }
        if (az(downloadComicPageObject.getComicPageId()) != null) {
            DownloadComicPageObject downloadComicPageObjectAz = az(downloadComicPageObject.getComicPageId());
            downloadComicPageObjectAz.updateWithDownloadComicPageObject(downloadComicPageObject);
            downloadComicPageObjectAz.save();
            f.E(TAG, "Update Page: " + downloadComicPageObject);
            return true;
        }
        downloadComicPageObject.save();
        f.E(TAG, "Save Page: " + downloadComicPageObject);
        return true;
    }
}
