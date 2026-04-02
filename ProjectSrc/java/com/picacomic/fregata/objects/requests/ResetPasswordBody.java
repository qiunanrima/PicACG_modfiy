package com.picacomic.fregata.objects.requests;

/* JADX INFO: loaded from: classes.dex */
public class ResetPasswordBody {
    String answer;
    String email;
    int questionNo;

    public ResetPasswordBody(String str, int i, String str2) {
        this.email = str;
        this.questionNo = i;
        this.answer = str2;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public int getQuestionNo() {
        return this.questionNo;
    }

    public void setQuestionNo(int i) {
        this.questionNo = i;
    }

    public String getAnswer() {
        return this.answer;
    }

    public void setAnswer(String str) {
        this.answer = str;
    }

    public String toString() {
        return "ResetPasswordBody{email='" + this.email + "', questionNo=" + this.questionNo + ", answer='" + this.answer + "'}";
    }
}
