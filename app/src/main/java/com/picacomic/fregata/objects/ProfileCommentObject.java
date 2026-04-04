package com.picacomic.fregata.objects;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class ProfileCommentObject {

    @SerializedName("commentsCount")
    int childsCount;

    @SerializedName("_comic")
    CommentComicIdTitleObject commentComicIdTitleObject;

    @SerializedName("_game")
    CommentGameIdTitleObject commentGameIdTitleObject;

    @SerializedName("_id")
    String commentId;
    String content;

    @SerializedName("created_at")
    String createdAt;
    boolean hide;
    boolean isLiked;
    int likesCount;

    @SerializedName("_user")
    String user;

    public ProfileCommentObject(String str, String str2, String str3, CommentComicIdTitleObject commentComicIdTitleObject, CommentGameIdTitleObject commentGameIdTitleObject, String str4, int i, int i2, boolean z, boolean z2) {
        this.commentId = str;
        this.content = str2;
        this.user = str3;
        this.commentComicIdTitleObject = commentComicIdTitleObject;
        this.commentGameIdTitleObject = commentGameIdTitleObject;
        this.createdAt = str4;
        this.likesCount = i;
        this.childsCount = i2;
        this.isLiked = z;
        this.hide = z2;
    }

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

    public String getUser() {
        return this.user;
    }

    public void setUser(String str) {
        this.user = str;
    }

    public CommentComicIdTitleObject getCommentComicIdTitleObject() {
        return this.commentComicIdTitleObject;
    }

    public void setCommentComicIdTitleObject(CommentComicIdTitleObject commentComicIdTitleObject) {
        this.commentComicIdTitleObject = commentComicIdTitleObject;
    }

    public CommentGameIdTitleObject getCommentGameIdTitleObject() {
        return this.commentGameIdTitleObject;
    }

    public void setCommentGameIdTitleObject(CommentGameIdTitleObject commentGameIdTitleObject) {
        this.commentGameIdTitleObject = commentGameIdTitleObject;
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

    public boolean isHide() {
        return this.hide;
    }

    public void setHide(boolean z) {
        this.hide = z;
    }

    public String toString() {
        return "ProfileCommentObject{commentId='" + this.commentId + "', content='" + this.content + "', user='" + this.user + "', commentComicIdTitleObject='" + this.commentComicIdTitleObject + "', commentGameIdTitleObject='" + this.commentGameIdTitleObject + "', createdAt='" + this.createdAt + "', likesCount='" + this.likesCount + "', childsCount='" + this.childsCount + "', isLiked='" + this.isLiked + "', hide='" + this.hide + "'}";
    }
}
