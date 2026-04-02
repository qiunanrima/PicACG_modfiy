package com.picacomic.fregata.objects;

/* JADX INFO: loaded from: classes.dex */
public class SingleImageTextViewObject {
    ThumbnailObject image;
    String title;

    public SingleImageTextViewObject() {
    }

    public SingleImageTextViewObject(ThumbnailObject thumbnailObject, String str) {
        this.image = thumbnailObject;
        this.title = str;
    }

    public ThumbnailObject getImage() {
        return this.image;
    }

    public void setImage(ThumbnailObject thumbnailObject) {
        this.image = thumbnailObject;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "ProfileComicImageWithTextViewObject{image=" + this.image + ", title='" + this.title + "'}";
    }
}
