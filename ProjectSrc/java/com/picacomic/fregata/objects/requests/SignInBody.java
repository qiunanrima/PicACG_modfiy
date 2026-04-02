package com.picacomic.fregata.objects.requests;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class SignInBody {

    @SerializedName("email")
    String email;

    @SerializedName("password")
    String password;

    public SignInBody(String str, String str2) {
        this.email = str;
        this.password = str2;
    }

    public SignInBody() {
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String str) {
        this.password = str;
    }
}
