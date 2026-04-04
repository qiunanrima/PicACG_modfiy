package com.picacomic.fregata.objects.responses;

/* JADX INFO: loaded from: classes.dex */
public class PunchInObject {
    String punchInLastDay;
    String status;

    public PunchInObject(String str, String str2) {
        this.status = str;
        this.punchInLastDay = str2;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String getPunchInLastDay() {
        return this.punchInLastDay;
    }

    public void setPunchInLastDay(String str) {
        this.punchInLastDay = str;
    }

    public String toString() {
        return "PunchInObject{status='" + this.status + "', punchInLastDay='" + this.punchInLastDay + "'}";
    }
}
