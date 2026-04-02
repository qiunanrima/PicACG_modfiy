package com.picacomic.fregata.objects.responses.DataClass.ComicEpisodeResponse;

import com.picacomic.fregata.objects.ComicEpisodeObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ComicEpisodeData {
    ArrayList<ComicEpisodeObject> docs;
    int limit;
    int page;
    int pages;
    int total;

    public ComicEpisodeData() {
    }

    public ComicEpisodeData(ArrayList<ComicEpisodeObject> arrayList, int i, int i2, int i3, int i4) {
        this.docs = arrayList;
        this.total = i;
        this.limit = i2;
        this.page = i3;
        this.pages = i4;
    }

    public ArrayList<ComicEpisodeObject> getDocs() {
        return this.docs;
    }

    public void setDocs(ArrayList<ComicEpisodeObject> arrayList) {
        this.docs = arrayList;
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

    public String toString() {
        return "ComicEpisodeData{docs=" + this.docs + ", total=" + this.total + ", limit=" + this.limit + ", page=" + this.page + ", pages=" + this.pages + '}';
    }
}
