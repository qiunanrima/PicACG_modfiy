package com.picacomic.fregata.objects.chatroomGameObjects.listens;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomGameEmitConfirm {
    String id;
    String options;

    public ChatroomGameEmitConfirm(String str, String str2) {
        this.id = str;
        this.options = str2;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getOptions() {
        return this.options;
    }

    public void setOptions(String str) {
        this.options = str;
    }

    public String toString() {
        return "ChatroomGameEmitConfirm{id='" + this.id + "', options='" + this.options + "'}";
    }
}
