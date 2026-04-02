package com.picacomic.fregata.objects;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CollectionObject {
    ArrayList<ComicListObject> comics;
    String title;

    public CollectionObject(String str, ArrayList<ComicListObject> arrayList) {
        this.title = str;
        this.comics = arrayList;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public ArrayList<ComicListObject> getComics() {
        return this.comics;
    }

    public void setComics(ArrayList<ComicListObject> arrayList) {
        this.comics = arrayList;
    }

    public String toString() {
        return "CollectionObject{title='" + this.title + "', comics=" + this.comics + '}';
    }
}
