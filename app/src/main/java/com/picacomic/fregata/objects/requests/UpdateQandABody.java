package com.picacomic.fregata.objects.requests;

/* JADX INFO: loaded from: classes.dex */
public class UpdateQandABody {
    String answer1;
    String answer2;
    String answer3;
    String question1;
    String question2;
    String question3;

    public UpdateQandABody(String str, String str2, String str3, String str4, String str5, String str6) {
        this.question1 = str;
        this.question2 = str2;
        this.question3 = str3;
        this.answer1 = str4;
        this.answer2 = str5;
        this.answer3 = str6;
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

    public String getAnswer1() {
        return this.answer1;
    }

    public void setAnswer1(String str) {
        this.answer1 = str;
    }

    public String getAnswer2() {
        return this.answer2;
    }

    public void setAnswer2(String str) {
        this.answer2 = str;
    }

    public String getAnswer3() {
        return this.answer3;
    }

    public void setAnswer3(String str) {
        this.answer3 = str;
    }

    public String toString() {
        return "UpdateQandABody{question1='" + this.question1 + "', question2='" + this.question2 + "', question3='" + this.question3 + "', answer1='" + this.answer1 + "', answer2='" + this.answer2 + "', answer3='" + this.answer3 + "'}";
    }
}
