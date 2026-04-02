package com.picacomic.fregata.objects;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class CategoryObject {

    @SerializedName("_id")
    String categoryId;
    String description;
    boolean isWeb;
    String link;
    ThumbnailObject thumb;
    String title;

    public CategoryObject() {
    }

    public CategoryObject(String str, String str2, String str3, ThumbnailObject thumbnailObject, boolean z, String str4) {
        this.categoryId = str;
        this.title = str2;
        this.description = str3;
        this.thumb = thumbnailObject;
        this.isWeb = z;
        this.link = str4;
    }

    public String getCategoryId() {
        return this.categoryId;
    }

    public void setCategoryId(String str) {
        this.categoryId = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public ThumbnailObject getThumb() {
        return this.thumb;
    }

    public void setThumb(ThumbnailObject thumbnailObject) {
        this.thumb = thumbnailObject;
    }

    public boolean isWeb() {
        return this.isWeb;
    }

    public void setWeb(boolean z) {
        this.isWeb = z;
    }

    public String getLink() {
        return this.link;
    }

    public void setLink(String str) {
        this.link = str;
    }

    public String toString() {
        return "CategoryObject{categoryId='" + this.categoryId + "', title='" + this.title + "', description='" + this.description + "', thumb=" + this.thumb + ", isWeb=" + this.isWeb + ", link='" + this.link + "'}";
    }
}
