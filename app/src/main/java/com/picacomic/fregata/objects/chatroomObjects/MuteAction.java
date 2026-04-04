package com.picacomic.fregata.objects.chatroomObjects;

/* JADX INFO: loaded from: classes.dex */
public class MuteAction extends ChatroomSystemAction {
    String from;
    int minutes;
    String user;
    String user_id;

    public MuteAction(String str, String str2) {
        super(str, str2);
    }

    public MuteAction(String str, String str2, int i, String str3, String str4, String str5) {
        super(str, str2);
        this.minutes = i;
        this.user = str3;
        this.user_id = str4;
        this.from = str5;
    }

    public int getMinutes() {
        return this.minutes;
    }

    public void setMinutes(int i) {
        this.minutes = i;
    }

    public String getUser() {
        return this.user;
    }

    public void setUser(String str) {
        this.user = str;
    }

    public String getUser_id() {
        return this.user_id;
    }

    public void setUser_id(String str) {
        this.user_id = str;
    }

    public String getFrom() {
        return this.from;
    }

    public void setFrom(String str) {
        this.from = str;
    }

    @Override // com.picacomic.fregata.objects.chatroomObjects.ChatroomSystemAction
    public String toString() {
        return "MuteAction{action=" + this.action + ", minutes=" + this.minutes + ", user='" + this.user + "', user_id='" + this.user_id + "', from='" + this.from + "'}";
    }
}
