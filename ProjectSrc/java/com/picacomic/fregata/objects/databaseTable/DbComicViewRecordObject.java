package com.picacomic.fregata.objects.databaseTable;

import com.orm.d;

/* JADX INFO: loaded from: classes.dex */
public class DbComicViewRecordObject extends d {
    String comicId;
    int episodeOrder;
    String episodeTitle;
    int episodeTotal;
    long lastViewTimestamp;
    int page;

    public DbComicViewRecordObject() {
    }

    public DbComicViewRecordObject(String str, int i, String str2, int i2, int i3, long j) {
        this.comicId = str;
        this.page = i;
        this.episodeTitle = str2;
        this.episodeOrder = i2;
        this.episodeTotal = i3;
        this.lastViewTimestamp = j;
    }

    public void updateDbComicViewRecordObject(DbComicViewRecordObject dbComicViewRecordObject) {
        this.comicId = dbComicViewRecordObject.getComicId();
        this.page = dbComicViewRecordObject.getPage();
        this.episodeTitle = dbComicViewRecordObject.getEpisodeTitle();
        this.episodeOrder = dbComicViewRecordObject.getEpisodeOrder();
        this.episodeTotal = dbComicViewRecordObject.getEpisodeTotal();
        this.lastViewTimestamp = dbComicViewRecordObject.getLastViewTimestamp();
    }

    public String getComicId() {
        return this.comicId;
    }

    public void setComicId(String str) {
        this.comicId = str;
    }

    public int getPage() {
        return this.page;
    }

    public void setPage(int i) {
        this.page = i;
    }

    public String getEpisodeTitle() {
        return this.episodeTitle;
    }

    public void setEpisodeTitle(String str) {
        this.episodeTitle = str;
    }

    public int getEpisodeOrder() {
        return this.episodeOrder;
    }

    public void setEpisodeOrder(int i) {
        this.episodeOrder = i;
    }

    public long getLastViewTimestamp() {
        return this.lastViewTimestamp;
    }

    public void setLastViewTimestamp(long j) {
        this.lastViewTimestamp = j;
    }

    public int getEpisodeTotal() {
        return this.episodeTotal;
    }

    public void setEpisodeTotal(int i) {
        this.episodeTotal = i;
    }

    public String toString() {
        return "DbComicViewRecordObject{comicId='" + this.comicId + "', page=" + this.page + ", episodeTitle=" + this.episodeTitle + ", episodeOrder=" + this.episodeOrder + ", episodeTotal=" + this.episodeTotal + ", lastViewTimestamp=" + this.lastViewTimestamp + '}';
    }
}
