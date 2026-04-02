package com.picacomic.fregata.objects.databaseTable;

/* JADX INFO: loaded from: classes.dex */
public class DbComicEpisodeIndexObject {
    String comicId;
    String episodeId;
    int limit;
    int page;
    int pages;
    int total;

    public DbComicEpisodeIndexObject() {
    }

    public DbComicEpisodeIndexObject(String str, String str2, int i, int i2, int i3, int i4) {
        this.comicId = str;
        this.episodeId = str2;
        this.total = i;
        this.limit = i2;
        this.page = i3;
        this.pages = i4;
    }

    public DbComicEpisodeIndexObject(DbComicEpisodeIndexObject dbComicEpisodeIndexObject) {
        this.comicId = dbComicEpisodeIndexObject.getComicId();
        this.episodeId = dbComicEpisodeIndexObject.getEpisodeId();
        this.total = dbComicEpisodeIndexObject.getTotal();
        this.limit = dbComicEpisodeIndexObject.getLimit();
        this.page = dbComicEpisodeIndexObject.getPage();
        this.pages = dbComicEpisodeIndexObject.getPages();
    }

    public void updateDbComicEpisodeIndexObject(DbComicEpisodeIndexObject dbComicEpisodeIndexObject) {
        this.comicId = dbComicEpisodeIndexObject.getComicId();
        this.episodeId = dbComicEpisodeIndexObject.getEpisodeId();
        this.total = dbComicEpisodeIndexObject.getTotal();
        this.limit = dbComicEpisodeIndexObject.getLimit();
        this.page = dbComicEpisodeIndexObject.getPage();
        this.pages = dbComicEpisodeIndexObject.getPages();
    }

    public String getComicId() {
        return this.comicId;
    }

    public void setComicId(String str) {
        this.comicId = str;
    }

    public String toString() {
        return "DbComicEpisodeIndexObject{comicId='" + this.comicId + "', episodeId='" + this.episodeId + "', total=" + this.total + ", limit=" + this.limit + ", page=" + this.page + ", pages=" + this.pages + '}';
    }

    public String getEpisodeId() {
        return this.episodeId;
    }

    public void setEpisodeId(String str) {
        this.episodeId = str;
    }

    public int getTotal() {
        return this.total;
    }

    public void setTotal(int i) {
        this.total = i;
    }

    public int getLimit() {
        return this.limit;
    }

    public void setLimit(int i) {
        this.limit = i;
    }

    public int getPage() {
        return this.page;
    }

    public void setPage(int i) {
        this.page = i;
    }

    public int getPages() {
        return this.pages;
    }

    public void setPages(int i) {
        this.pages = i;
    }
}
