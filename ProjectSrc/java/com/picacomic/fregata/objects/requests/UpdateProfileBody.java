package com.picacomic.fregata.objects.requests;

/* JADX INFO: loaded from: classes.dex */
public class UpdateProfileBody {
    String slogan;

    public UpdateProfileBody(String str) {
        this.slogan = str;
    }

    public String getSlogan() {
        return this.slogan;
    }

    public void setSlogan(String str) {
        this.slogan = str;
    }

    public String toString() {
        return "UpdateProfileBody{slogan='" + this.slogan + "'}";
    }
}
