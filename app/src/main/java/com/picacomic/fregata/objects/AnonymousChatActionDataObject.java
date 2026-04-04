package com.picacomic.fregata.objects;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class AnonymousChatActionDataObject {

    @SerializedName("actionType")
    String actionType;
    AnonymousChatDataObject data;
    String responseType;

    public AnonymousChatActionDataObject(String str, String str2, AnonymousChatDataObject anonymousChatDataObject) {
        this.actionType = str;
        this.responseType = str2;
        this.data = anonymousChatDataObject;
    }

    public String getActionType() {
        return this.actionType;
    }

    public void setActionType(String str) {
        this.actionType = str;
    }

    public String getResponseType() {
        return this.responseType;
    }

    public void setResponseType(String str) {
        this.responseType = str;
    }

    public AnonymousChatDataObject getData() {
        return this.data;
    }

    public void setData(AnonymousChatDataObject anonymousChatDataObject) {
        this.data = anonymousChatDataObject;
    }

    public String toString() {
        return "AnonymousChatActionDataObject{actionType='" + this.actionType + "', responseType='" + this.responseType + "', data=" + this.data + '}';
    }
}
