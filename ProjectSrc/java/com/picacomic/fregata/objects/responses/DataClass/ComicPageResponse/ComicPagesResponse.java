package com.picacomic.fregata.objects.responses.DataClass.ComicPageResponse;

import com.picacomic.fregata.objects.ComicEpisodeObject;

/* JADX INFO: loaded from: classes.dex */
public class ComicPagesResponse {
    ComicEpisodeObject ep;
    ComicPageData pages;

    public ComicPagesResponse(ComicPageData comicPageData, ComicEpisodeObject comicEpisodeObject) {
        this.pages = comicPageData;
        this.ep = comicEpisodeObject;
    }

    public ComicPageData getPages() {
        return this.pages;
    }

    public void setPages(ComicPageData comicPageData) {
        this.pages = comicPageData;
    }

    public ComicEpisodeObject getEp() {
        return this.ep;
    }

    public void setEp(ComicEpisodeObject comicEpisodeObject) {
        this.ep = comicEpisodeObject;
    }

    public String toString() {
        return "ComicPagesResponse{pages=" + this.pages + ", ep=" + this.ep + '}';
    }
}
