package com.picacomic.fregata.objects.responses;

/* JADX INFO: loaded from: classes.dex */
public class ForgotPasswordResponse {
    String question1;
    String question2;
    String question3;

    public ForgotPasswordResponse(String str, String str2, String str3) {
        this.question1 = str;
        this.question2 = str2;
        this.question3 = str3;
    }

    public String getQuestion1() {
        return this.question1;
    }

    public void setQuestion1(String str) {
        this.question1 = str;
    }

    public String getQuestion2() {
        return this.question2;
    }

    public void setQuestion2(String str) {
        this.question2 = str;
    }

    public String getQuestion3() {
        return this.question3;
    }

    public void setQuestion3(String str) {
        this.question3 = str;
    }

    public String toString() {
        return "ForgotPasswordResponse{question1='" + this.question1 + "', question2='" + this.question2 + "', question3='" + this.question3 + "'}";
    }
}
