package com.picacomic.fregata.objects.responses.DataClass.ProfileCommentsResponse;

import com.picacomic.fregata.objects.ProfileCommentObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ProfileCommentsData {
    ArrayList<ProfileCommentObject> docs;
    int limit;
    int page;
    int pages;
    int total;

    public ProfileCommentsData(int i, int i2, int i3, int i4, ArrayList<ProfileCommentObject> arrayList) {
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

    public ArrayList<ProfileCommentObject> getDocs() {
        return this.docs;
    }

    public void setDocs(ArrayList<ProfileCommentObject> arrayList) {
        this.docs = arrayList;
    }
}
