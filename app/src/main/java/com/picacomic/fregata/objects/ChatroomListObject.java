package com.picacomic.fregata.objects;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomListObject extends PicaAppBaseObject {
    String avatar;
    String description;
    String title;
    String url;

    public ChatroomListObject(String str, String str2, String str3, String str4) {
        this.avatar = str;
        this.title = str2;
        this.description = str3;
        this.url = str4;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String str) {
        this.avatar = str;
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

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "ChatroomListObject{avatar='" + this.avatar + "', title='" + this.title + "', description='" + this.description + "', url='" + this.url + "'}";
    }
}
