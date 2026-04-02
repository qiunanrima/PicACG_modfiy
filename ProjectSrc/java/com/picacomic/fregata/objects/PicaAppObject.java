package com.picacomic.fregata.objects;

/* JADX INFO: loaded from: classes.dex */
public class PicaAppObject extends PicaAppBaseObject {
    String description;
    String icon;
    String title;
    String url;

    public PicaAppObject(String str, String str2, String str3, String str4) {
        this.title = str;
        this.url = str2;
        this.icon = str3;
        this.description = str4;
    }

    public String toString() {
        return "PicaAppObject{title='" + this.title + "', url='" + this.url + "', icon='" + this.icon + "', description='" + this.description + "'}";
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String getIcon() {
        return this.icon;
    }

    public void setIcon(String str) {
        this.icon = str;
    }
}
