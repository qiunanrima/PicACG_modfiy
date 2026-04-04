package com.picacomic.fregata.objects;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class LatestApplicationObject {
    ApkObject apk;

    @SerializedName("created_at")
    String createdAt;
    String downloadUrl;

    @SerializedName("_id")
    String latestApplicationId;
    String updateContent;

    @SerializedName("updated_at")
    String updatedAt;
    String version;

    public LatestApplicationObject(String str, String str2, String str3, String str4, ApkObject apkObject, String str5, String str6) {
        this.latestApplicationId = str;
        this.version = str2;
        this.updateContent = str3;
        this.downloadUrl = str4;
        this.apk = apkObject;
        this.createdAt = str5;
        this.updatedAt = str6;
    }

    public String getLatestApplicationId() {
        return this.latestApplicationId;
    }

    public void setLatestApplicationId(String str) {
        this.latestApplicationId = str;
    }

    public String getVersion() {
        return this.version;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public String getUpdateContent() {
        return this.updateContent;
    }

    public void setUpdateContent(String str) {
        this.updateContent = str;
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public ApkObject getApk() {
        return this.apk;
    }

    public void setApk(ApkObject apkObject) {
        this.apk = apkObject;
    }

    public String getCreatedAt() {
        return this.createdAt;
    }

    public void setCreatedAt(String str) {
        this.createdAt = str;
    }

    public String getUpdatedAt() {
        return this.updatedAt;
    }

    public void setUpdatedAt(String str) {
        this.updatedAt = str;
    }

    public String toString() {
        return "LatestApplicationData{latestApplicationId='" + this.latestApplicationId + "', version='" + this.version + "', updateContent='" + this.updateContent + "', downloadUrl='" + this.downloadUrl + "', apk=" + this.apk + ", createdAt='" + this.createdAt + "', updatedAt='" + this.updatedAt + "'}";
    }
}
