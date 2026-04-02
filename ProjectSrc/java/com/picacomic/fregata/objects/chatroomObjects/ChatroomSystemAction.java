package com.picacomic.fregata.objects.chatroomObjects;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomSystemAction {
    public String action;
    public String email;

    public ChatroomSystemAction(String str, String str2) {
        this.action = str;
        this.email = str2;
    }

    public String getAction() {
        return this.action;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public String toString() {
        return "ChatroomSystemAction{action='" + this.action + "', email='" + this.email + "'}";
    }
}
