package com.picacomic.fregata.objects.requests;

/* JADX INFO: loaded from: classes.dex */
public class UpdatePicaIdBody {
    String email;
    String name;

    public UpdatePicaIdBody(String str, String str2) {
        this.email = str;
        this.name = str2;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return "UpdatePicaIdBody{email='" + this.email + "', name='" + this.name + "'}";
    }
}
