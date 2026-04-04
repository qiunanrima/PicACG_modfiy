package com.picacomic.fregata.objects.responses.DataClass.NotificationsResponse;

import com.picacomic.fregata.objects.NotificationObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class NotificationsData {
    ArrayList<NotificationObject> docs;
    int limit;
    int page;
    int pages;
    int total;

    public NotificationsData(int i, int i2, int i3, int i4, ArrayList<NotificationObject> arrayList) {
        this.limit = i;
        this.page = i2;
        this.pages = i3;
        this.total = i4;
        this.docs = arrayList;
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

    public int getTotal() {
        return this.total;
    }

    public void setTotal(int i) {
        this.total = i;
    }

    public ArrayList<NotificationObject> getDocs() {
        return this.docs;
    }

    public void setDocs(ArrayList<NotificationObject> arrayList) {
        this.docs = arrayList;
    }

    public String toString() {
        return "NotificationsData{limit=" + this.limit + ", page=" + this.page + ", pages=" + this.pages + ", total=" + this.total + ", docs=" + this.docs + '}';
    }
}
