package com.picacomic.fregata.objects.responses.DataClass.PostCommentResponse;

import com.google.gson.annotations.SerializedName;
import com.picacomic.fregata.objects.UserBasicObject;

/* JADX INFO: loaded from: classes.dex */
public class PostCommentData {
    String content;

    @SerializedName("_user")
    UserBasicObject user;

    public PostCommentData() {
    }

    public PostCommentData(String str, UserBasicObject userBasicObject) {
        this.content = str;
        this.user = userBasicObject;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public UserBasicObject getUser() {
        return this.user;
    }

    public void setUser(UserBasicObject userBasicObject) {
        this.user = userBasicObject;
    }

    public String toString() {
        return "PostCommentData{content='" + this.content + "', user=" + this.user + '}';
    }
}
