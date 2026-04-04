package com.picacomic.fregata.objects.databaseTable;

import com.orm.d;
import com.picacomic.fregata.objects.ComicEpisodeObject;

/* JADX INFO: loaded from: classes.dex */
public class DownloadComicEpisodeObject extends d {
    String comicId;
    String episodeId;
    int episodeOrder;
    int status;
    String title;
    int total;
    String updatedAt;

    public DownloadComicEpisodeObject() {
    }

    public DownloadComicEpisodeObject(String str, ComicEpisodeObject comicEpisodeObject) {
        this.comicId = str;
        this.episodeId = comicEpisodeObject.getEpisodeId();
        this.title = comicEpisodeObject.getTitle();
        this.episodeOrder = comicEpisodeObject.getOrder();
        this.updatedAt = comicEpisodeObject.getUpdatedAt();
        this.status = 0;
    }

    public DownloadComicEpisodeObject(String str, ComicEpisodeObject comicEpisodeObject, int i) {
        this.comicId = str;
        this.episodeId = comicEpisodeObject.getEpisodeId();
        this.title = comicEpisodeObject.getTitle();
        this.episodeOrder = comicEpisodeObject.getOrder();
        this.updatedAt = comicEpisodeObject.getUpdatedAt();
        this.status = i;
    }

    public ComicEpisodeObject getComicEpisodeObject() {
        return new ComicEpisodeObject(this.episodeId, this.title, this.episodeOrder, this.updatedAt);
    }

    public String getComicId() {
        return this.comicId;
    }

    public void setComicId(String str) {
        this.comicId = str;
    }

    public String getEpisodeId() {
        return this.episodeId;
    }

    public void setEpisodeId(String str) {
        this.episodeId = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getUpdatedAt() {
        return this.updatedAt;
    }

    public void setUpdatedAt(String str) {
        this.updatedAt = str;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public int getEpisodeOrder() {
        return this.episodeOrder;
    }

    public void setEpisodeOrder(int i) {
        this.episodeOrder = i;
    }

    public int getTotal() {
        return this.total;
    }

    public void setTotal(int i) {
        this.total = i;
    }

    public String toString() {
        return "DownloadComicEpisodeObject{episodeId='" + this.episodeId + "', comicId='" + this.comicId + "', title='" + this.title + "', episodeOrder=" + this.episodeOrder + ", total=" + this.total + ", updatedAt='" + this.updatedAt + "', status=" + this.status + '}';
    }
}
