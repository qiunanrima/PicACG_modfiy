package com.picacomic.fregata.objects;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class CommentComicIdTitleObject {

    @SerializedName("_id")
    String comicId;

    @SerializedName("title")
    String title;

    public CommentComicIdTitleObject(String str, String str2) {
        this.comicId = str;
        this.title = str2;
    }

    public String getComicId() {
        return this.comicId;
    }

    public void setComicId(String str) {
        this.comicId = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "CommentComicObject{comicId='" + this.comicId + "', title='" + this.title + "'}";
    }
}
