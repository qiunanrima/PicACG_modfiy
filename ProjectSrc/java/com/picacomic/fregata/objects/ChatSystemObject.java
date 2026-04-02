package com.picacomic.fregata.objects;

/* JADX INFO: loaded from: classes.dex */
public class ChatSystemObject extends ChatBaseObject {
    String message;

    public ChatSystemObject(String str) {
        this.message = str;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String toString() {
        return "ChatSystemObject{message='" + this.message + "'}";
    }
}
