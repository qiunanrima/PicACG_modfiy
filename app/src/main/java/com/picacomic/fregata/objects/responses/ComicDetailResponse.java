package com.picacomic.fregata.objects.responses;

import com.picacomic.fregata.objects.ComicDetailObject;

/* JADX INFO: loaded from: classes.dex */
public class ComicDetailResponse {
    ComicDetailObject comic;

    public ComicDetailResponse(ComicDetailObject comicDetailObject) {
        this.comic = comicDetailObject;
    }

    public ComicDetailObject getComic() {
        return this.comic;
    }

    public void setComic(ComicDetailObject comicDetailObject) {
        this.comic = comicDetailObject;
    }

    public String toString() {
        return "ComicDetailResponse{comic=" + this.comic + '}';
    }
}
