package com.picacomic.fregata.objects;

/* JADX INFO: loaded from: classes.dex */
public class NetworkErrorObject {
    int code;
    String detail;
    String error;
    String message;

    public NetworkErrorObject(int i, String str, String str2, String str3) {
        this.code = i;
        this.error = str;
        this.message = str2;
        this.detail = str3;
    }

    public NetworkErrorObject() {
    }

    public int getCode() {
        return this.code;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public String getError() {
        return this.error;
    }

    public void setError(String str) {
        this.error = str;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String getDetail() {
        return this.detail;
    }

    public void setDetail(String str) {
        this.detail = str;
    }

    public String toString() {
        return "NetworkErrorObject{code=" + this.code + ", error='" + this.error + "', message='" + this.message + "', detail='" + this.detail + "'}";
    }
}
