package com.picacomic.fregata.objects;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomToObject {
    public String name;
    public String unique_id;
    public String user_id;

    public ChatroomToObject(String str, String str2, String str3) {
        this.name = str;
        this.unique_id = str2;
        this.user_id = str3;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getUnique_id() {
        return this.unique_id;
    }

    public void setUnique_id(String str) {
        this.unique_id = str;
    }

    public String getUserId() {
        return this.user_id;
    }

    public void setUserId(String str) {
        this.user_id = str;
    }

    public String toString() {
        return "ChatroomToObject{name='" + this.name + "', unique_id='" + this.unique_id + "', user_id='" + this.user_id + "'}";
    }
}
