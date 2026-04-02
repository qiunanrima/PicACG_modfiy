package com.picacomic.fregata.objects.responses;

/* JADX INFO: loaded from: classes.dex */
public class PasswordResponse {
    String password;

    public PasswordResponse(String str) {
        this.password = str;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public String toString() {
        return "PasswordResponse{password='" + this.password + "'}";
    }
}
