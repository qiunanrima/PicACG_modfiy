package com.picacomic.fregata.objects;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class BaseCommentObject {

    @SerializedName("commentsCount")
    int childsCount;

    @SerializedName("_id")
    String commentId;
    String content;

    @SerializedName("created_at")
    String createdAt;
    boolean isLiked;
    int likesCount;

    @SerializedName("_user")
    UserBasicObject user;

    public String getCommentId() {
        return this.commentId;
    }

    public void setCommentId(String str) {
        this.commentId = str;
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

    public String getCreatedAt() {
        return this.createdAt;
    }

    public void setCreatedAt(String str) {
        this.createdAt = str;
    }

    public int getLikesCount() {
        return this.likesCount;
    }

    public void setLikesCount(int i) {
        this.likesCount = i;
    }

    public int getChildsCount() {
        return this.childsCount;
    }

    public void setChildsCount(int i) {
        this.childsCount = i;
    }

    public boolean isLiked() {
        return this.isLiked;
    }

    public void setLiked(boolean z) {
        this.isLiked = z;
    }
}
