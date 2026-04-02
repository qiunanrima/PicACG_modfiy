package com.picacomic.fregata.objects;

/* JADX INFO: loaded from: classes.dex */
public class ApkObject {
    String fileServer;
    String originalName;
    String path;

    public ApkObject(String str, String str2, String str3) {
        this.originalName = str;
        this.path = str2;
        this.fileServer = str3;
    }

    public String getOriginalName() {
        return this.originalName;
    }

    public void setOriginalName(String str) {
        this.originalName = str;
    }

    public String getPath() {
        return this.path;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public String getFileServer() {
        return this.fileServer;
    }

    public void setFileServer(String str) {
        this.fileServer = str;
    }

    public String toString() {
        return "ApkObject{originalName='" + this.originalName + "', path='" + this.path + "', fileServer='" + this.fileServer + "'}";
    }
}
