package com.picacomic.fregata.objects.responses;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomBlacklistObject {
    String userId;
    String username;

    public ChatroomBlacklistObject(String str, String str2) {
        this.username = str;
        this.userId = str2;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String str) {
        this.username = str;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public String toString() {
        return "ChatroomBlacklistObject{username='" + this.username + "', userId='" + this.userId + "'}";
    }
}
