package com.picacomic.fregata.objects.databaseTable;

import com.orm.SugarRecord;
import com.picacomic.fregata.objects.ComicEpisodeObject;

public class DbComicEpisodeObject extends SugarRecord {
    String comicId;
    String episodeId;
    int episodeOrder;
    String title;
    int total;
    String updatedAt;

    public DbComicEpisodeObject() {
    }

    public DbComicEpisodeObject(String comicId, ComicEpisodeObject comicEpisodeObject) {
        this.comicId = comicId;
        this.episodeId = comicEpisodeObject.getEpisodeId();
        this.title = comicEpisodeObject.getTitle();
        this.episodeOrder = comicEpisodeObject.getOrder();
        this.updatedAt = comicEpisodeObject.getUpdatedAt();
        this.total = 0;
    }

    public void updateDbComicEpisodeObject(DbComicEpisodeObject dbComicEpisodeObject) {
        this.comicId = dbComicEpisodeObject.getComicId();
        this.episodeId = dbComicEpisodeObject.getEpisodeId();
        this.title = dbComicEpisodeObject.getTitle();
        this.episodeOrder = dbComicEpisodeObject.getEpisodeOrder();
        this.total = dbComicEpisodeObject.getTotal();
        this.updatedAt = dbComicEpisodeObject.getUpdatedAt();
    }

    public ComicEpisodeObject getComicEpisodeObject() {
        return new ComicEpisodeObject(this.episodeId, this.title, this.episodeOrder, this.updatedAt);
    }

    public String getComicId() {
        return this.comicId;
    }

    public void setComicId(String comicId) {
        this.comicId = comicId;
    }

    public String getEpisodeId() {
        return this.episodeId;
    }

    public void setEpisodeId(String episodeId) {
        this.episodeId = episodeId;
    }

    public int getEpisodeOrder() {
        return this.episodeOrder;
    }

    public void setEpisodeOrder(int episodeOrder) {
        this.episodeOrder = episodeOrder;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getTotal() {
        return this.total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getUpdatedAt() {
        return this.updatedAt;
    }

    public void setUpdatedAt(String updatedAt) {
        this.updatedAt = updatedAt;
    }

    public String toString() {
        return "DbComicEpisodeObject{episodeId='" + this.episodeId + "', comicId='" + this.comicId + "', title='" + this.title + "', episodeOrder=" + this.episodeOrder + ", total=" + this.total + ", updatedAt='" + this.updatedAt + "'}";
    }
}
