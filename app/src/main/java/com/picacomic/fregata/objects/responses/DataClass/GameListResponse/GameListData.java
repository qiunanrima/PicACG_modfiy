package com.picacomic.fregata.objects.responses.DataClass.GameListResponse;

import com.picacomic.fregata.objects.GameListObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class GameListData {
    ArrayList<GameListObject> docs;
    int limit;
    int page;
    int pages;
    int total;

    public GameListData(int i, int i2, int i3, int i4, ArrayList<GameListObject> arrayList) {
        this.total = i;
        this.limit = i2;
        this.page = i3;
        this.pages = i4;
        this.docs = arrayList;
    }

    public int getTotal() {
        return this.total;
    }

    public void setTotal(int i) {
        this.total = i;
    }

    public int getLimit() {
        return this.limit;
    }

    public void setLimit(int i) {
        this.limit = i;
    }

    public int getPage() {
        return this.page;
    }

    public void setPage(int i) {
        this.page = i;
    }

    public int getPages() {
        return this.pages;
    }

    public void setPages(int i) {
        this.pages = i;
    }

    public ArrayList<GameListObject> getDocs() {
        return this.docs;
    }

    public void setDocs(ArrayList<GameListObject> arrayList) {
        this.docs = arrayList;
    }

    public String toString() {
        return "GameListData{total=" + this.total + ", limit=" + this.limit + ", page=" + this.page + ", pages=" + this.pages + ", docs=" + this.docs + '}';
    }
}
