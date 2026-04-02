package com.picacomic.fregata.objects.chatroomObjects;

/* JADX INFO: loaded from: classes.dex */
public class ChangeTitleAction extends ChatroomSystemAction {
    String from;
    String title;
    String user;
    String user_id;

    public ChangeTitleAction(String str, String str2) {
        super(str, str2);
    }

    public ChangeTitleAction(String str, String str2, String str3, String str4, String str5, String str6) {
        super(str, str2);
        this.title = str3;
        this.from = str4;
        this.user = str5;
        this.user_id = str6;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getFrom() {
        return this.from;
    }

    public void setFrom(String str) {
        this.from = str;
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

    @Override // com.picacomic.fregata.objects.chatroomObjects.ChatroomSystemAction
    public String toString() {
        return "ChangeTitleAction{action='" + this.action + "', title='" + this.title + "', from='" + this.from + "', user='" + this.user + "', user_id='" + this.user_id + "'}";
    }
}
