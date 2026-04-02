package com.picacomic.fregata.objects.responses;

import com.picacomic.fregata.objects.ComicListObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ComicRandomListResponse {
    ArrayList<ComicListObject> comics;

    public ComicRandomListResponse(ArrayList<ComicListObject> arrayList) {
        this.comics = arrayList;
    }

    public ArrayList<ComicListObject> getComics() {
        return this.comics;
    }

    public void setComics(ArrayList<ComicListObject> arrayList) {
        this.comics = arrayList;
    }
}
