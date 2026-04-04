package com.picacomic.fregata.objects.chatroomObjects;

/* JADX INFO: loaded from: classes.dex */
public class SetAvatarExtraAction extends ChatroomSystemAction {
    int extra;
    String from;
    String user;
    String user_id;

    public SetAvatarExtraAction(String str, String str2) {
        super(str, str2);
    }

    public SetAvatarExtraAction(String str, String str2, String str3, String str4, String str5, int i) {
        super(str, str2);
        this.user = str3;
        this.user_id = str4;
        this.from = str5;
        this.extra = i;
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

    public int getExtra() {
        return this.extra;
    }

    public void setExtra(int i) {
        this.extra = i;
    }

    @Override // com.picacomic.fregata.objects.chatroomObjects.ChatroomSystemAction
    public String toString() {
        return "HideAvatarAction{action='" + this.action + "', user='" + this.user + "', user_id='" + this.user_id + "', from='" + this.from + "', extra='" + this.extra + "'}";
    }
}
