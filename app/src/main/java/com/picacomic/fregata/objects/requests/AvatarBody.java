package com.picacomic.fregata.objects.requests;

/* JADX INFO: loaded from: classes.dex */
public class AvatarBody {
    String avatar;

    public AvatarBody(String str) {
        this.avatar = str;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public String toString() {
        return "AvatarBody{avatar='" + this.avatar + "'}";
    }
}
