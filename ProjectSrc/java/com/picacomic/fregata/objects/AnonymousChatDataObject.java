package com.picacomic.fregata.objects;

/* JADX INFO: loaded from: classes.dex */
public class AnonymousChatDataObject {
    String id;
    String message;
    String name;
    String roomId;
    String userId;

    public AnonymousChatDataObject(String str, String str2, String str3, String str4, String str5) {
        this.id = str;
        this.userId = str2;
        this.name = str3;
        this.message = str4;
        this.roomId = str5;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String getRoomId() {
        return this.roomId;
    }

    public void setRoomId(String str) {
        this.roomId = str;
    }

    public String toString() {
        return "AnonymousChatDataObject{id='" + this.id + "', userId='" + this.userId + "', name='" + this.name + "', message='" + this.message + "', roomId='" + this.roomId + "'}";
    }
}
