package com.picacomic.fregata.objects.chatroomObjects;

/* JADX INFO: loaded from: classes.dex */
public class ImageAction extends ChatroomSystemAction {
    String from;
    boolean toggle;

    public ImageAction(String str, String str2) {
        super(str, str2);
    }

    public ImageAction(String str, String str2, boolean z, String str3) {
        super(str, str2);
        this.toggle = z;
        this.from = str3;
    }

    public boolean isToggle() {
        return this.toggle;
    }

    public void setToggle(boolean z) {
        this.toggle = z;
    }

    public String getFrom() {
        return this.from;
    }

    public void setFrom(String str) {
        this.from = str;
    }

    @Override // com.picacomic.fregata.objects.chatroomObjects.ChatroomSystemAction
    public String toString() {
        return "ImageAction{action=" + this.action + ", toggle=" + this.toggle + ", from='" + this.from + "'}";
    }
}
