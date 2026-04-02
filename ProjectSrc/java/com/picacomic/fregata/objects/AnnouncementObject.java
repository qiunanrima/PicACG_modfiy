package com.picacomic.fregata.objects;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementObject {

    @SerializedName("_id")
    String announcementId;
    String content;

    @SerializedName("created_at")
    String createdAt;
    ThumbnailObject thumb;
    String title;

    public AnnouncementObject(String str, String str2, String str3, String str4, ThumbnailObject thumbnailObject) {
        this.announcementId = str;
        this.title = str2;
        this.content = str3;
        this.createdAt = str4;
        this.thumb = thumbnailObject;
    }

    public String getAnnouncementId() {
        return this.announcementId;
    }

    public void setAnnouncementId(String str) {
        this.announcementId = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public String getCreatedAt() {
        return this.createdAt;
    }

    public void setCreatedAt(String str) {
        this.createdAt = str;
    }

    public ThumbnailObject getThumb() {
        return this.thumb;
    }

    public void setThumb(ThumbnailObject thumbnailObject) {
        this.thumb = thumbnailObject;
    }
}
