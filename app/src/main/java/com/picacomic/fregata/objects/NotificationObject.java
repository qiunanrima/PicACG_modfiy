package com.picacomic.fregata.objects;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class NotificationObject {
    String content;
    ThumbnailObject cover;

    @SerializedName("created_at")
    String createdAt;
    String link;

    @SerializedName("_id")
    String notificationId;

    @SerializedName("_redirectId")
    String redirectId;
    String redirectType;

    @SerializedName("_sender")
    UserProfileObject sender;
    boolean system;
    String title;

    public NotificationObject(String str, String str2, String str3, String str4, String str5, String str6, boolean z, ThumbnailObject thumbnailObject, UserProfileObject userProfileObject, String str7) {
        this.notificationId = str;
        this.title = str2;
        this.content = str3;
        this.redirectId = str4;
        this.redirectType = str5;
        this.link = str6;
        this.system = z;
        this.cover = thumbnailObject;
        this.sender = userProfileObject;
        this.createdAt = str7;
    }

    public String getNotificationId() {
        return this.notificationId;
    }

    public void setNotificationId(String str) {
        this.notificationId = str;
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

    public String getRedirectId() {
        return this.redirectId;
    }

    public void setRedirectId(String str) {
        this.redirectId = str;
    }

    public String getRedirectType() {
        return this.redirectType;
    }

    public void setRedirectType(String str) {
        this.redirectType = str;
    }

    public String getLink() {
        return this.link;
    }

    public void setLink(String str) {
        this.link = str;
    }

    public boolean isSystem() {
        return this.system;
    }

    public void setSystem(boolean z) {
        this.system = z;
    }

    public ThumbnailObject getCover() {
        return this.cover;
    }

    public void setCover(ThumbnailObject thumbnailObject) {
        this.cover = thumbnailObject;
    }

    public UserProfileObject getSender() {
        return this.sender;
    }

    public void setSender(UserProfileObject userProfileObject) {
        this.sender = userProfileObject;
    }

    public String getCreatedAt() {
        return this.createdAt;
    }

    public void setCreatedAt(String str) {
        this.createdAt = str;
    }

    public String toString() {
        return "NotificationObject{notificationId='" + this.notificationId + "', title='" + this.title + "', content='" + this.content + "', redirectId='" + this.redirectId + "', redirectType='" + this.redirectType + "', link='" + this.link + "', system=" + this.system + ", cover=" + this.cover + ", sender=" + this.sender + ", createdAt='" + this.createdAt + "'}";
    }
}
