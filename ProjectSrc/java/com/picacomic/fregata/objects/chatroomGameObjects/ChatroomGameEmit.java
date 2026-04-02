package com.picacomic.fregata.objects.chatroomGameObjects;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomGameEmit<DataClass> {
    String action;
    DataClass data;

    public ChatroomGameEmit(String str) {
        this.action = str;
    }

    public ChatroomGameEmit(String str, DataClass dataclass) {
        this.action = str;
        this.data = dataclass;
    }

    public String getAction() {
        return this.action;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public DataClass getData() {
        return this.data;
    }

    public void setData(DataClass dataclass) {
        this.data = dataclass;
    }

    public String toString() {
        return "ChatroomGameEmit{action='" + this.action + "', data=" + this.data + '}';
    }
}
