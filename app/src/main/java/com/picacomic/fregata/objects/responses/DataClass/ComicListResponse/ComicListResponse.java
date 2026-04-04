package com.picacomic.fregata.objects.responses.DataClass.ComicListResponse;

/* JADX INFO: loaded from: classes.dex */
public class ComicListResponse {
    ComicListData comics;

    public ComicListResponse(ComicListData comicListData) {
        this.comics = comicListData;
    }

    public ComicListData getComics() {
        return this.comics;
    }

    public void setComics(ComicListData comicListData) {
        this.comics = comicListData;
    }

    public String toString() {
        return "ComicListResponse{, comics=" + this.comics + '}';
    }
}
