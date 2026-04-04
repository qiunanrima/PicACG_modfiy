package com.picacomic.fregata.objects;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class GameListObject {
    boolean adult;

    /* JADX INFO: renamed from: android, reason: collision with root package name */
    boolean f8android;

    @SerializedName("_id")
    String gameId;
    ThumbnailObject icon;
    boolean ios;
    int likesCount;
    String publisher;
    boolean suggest;
    String title;
    String version;

    public GameListObject(String str, String str2, String str3, String str4, int i, boolean z, boolean z2, boolean z3, boolean z4, ThumbnailObject thumbnailObject) {
        this.gameId = str;
        this.title = str2;
        this.version = str3;
        this.publisher = str4;
        this.likesCount = i;
        this.suggest = z;
        this.adult = z2;
        this.ios = z3;
        this.f8android = z4;
        this.icon = thumbnailObject;
    }

    public String getGameId() {
        return this.gameId;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getVersion() {
        return this.version;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public String getPublisher() {
        return this.publisher;
    }

    public void setPublisher(String str) {
        this.publisher = str;
    }

    public int getLikesCount() {
        return this.likesCount;
    }

    public void setLikesCount(int i) {
        this.likesCount = i;
    }

    public boolean isSuggest() {
        return this.suggest;
    }

    public void setSuggest(boolean z) {
        this.suggest = z;
    }

    public boolean isAdult() {
        return this.adult;
    }

    public void setAdult(boolean z) {
        this.adult = z;
    }

    public boolean isIos() {
        return this.ios;
    }

    public void setIos(boolean z) {
        this.ios = z;
    }

    public boolean isAndroid() {
        return this.f8android;
    }

    public void setAndroid(boolean z) {
        this.f8android = z;
    }

    public ThumbnailObject getIcon() {
        return this.icon;
    }

    public void setIcon(ThumbnailObject thumbnailObject) {
        this.icon = thumbnailObject;
    }

    public String toString() {
        return "GameListObject{gameId='" + this.gameId + "', title='" + this.title + "', version='" + this.version + "', publisher='" + this.publisher + "', likesCount=" + this.likesCount + ", suggest=" + this.suggest + ", adult=" + this.adult + ", ios=" + this.ios + ", android=" + this.f8android + ", icon=" + this.icon + '}';
    }
}
