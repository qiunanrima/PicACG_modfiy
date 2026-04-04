package com.picacomic.fregata.objects;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class BannerObject {
    String bannerId;

    @SerializedName("_comic")
    String comicId;

    @SerializedName("_game")
    String gameId;
    String link;
    String shortDescription;
    ThumbnailObject thumb;
    String title;
    String type;

    public BannerObject(String str, String str2, String str3, String str4, String str5, String str6, String str7, ThumbnailObject thumbnailObject) {
        this.bannerId = str;
        this.title = str2;
        this.type = str3;
        this.shortDescription = str4;
        this.gameId = str5;
        this.comicId = str6;
        this.link = str7;
        this.thumb = thumbnailObject;
    }

    public String getBannerId() {
        return this.bannerId;
    }

    public void setBannerId(String str) {
        this.bannerId = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getShortDescription() {
        return this.shortDescription;
    }

    public void setShortDescription(String str) {
        this.shortDescription = str;
    }

    public String getGameId() {
        return this.gameId;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public String getComicId() {
        return this.comicId;
    }

    public void setComicId(String str) {
        this.comicId = str;
    }

    public String getLink() {
        return this.link;
    }

    public void setLink(String str) {
        this.link = str;
    }

    public ThumbnailObject getThumb() {
        return this.thumb;
    }

    public void setThumb(ThumbnailObject thumbnailObject) {
        this.thumb = thumbnailObject;
    }
}
