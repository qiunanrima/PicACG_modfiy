package com.picacomic.fregata.objects.requests;

/* JADX INFO: loaded from: classes.dex */
public class UpdateUserTitleBody {
    String title;

    public UpdateUserTitleBody(String str) {
        this.title = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "UpdateUserTitleBody{title='" + this.title + "'}";
    }
}
