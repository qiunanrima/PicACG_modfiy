package com.picacomic.fregata.objects;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class CommentObject {

    @SerializedName("commentsCount")
    int childsCount;

    @SerializedName("_comic")
    String comicId;

    @SerializedName("_id")
    String commentId;
    String content;

    @SerializedName("created_at")
    String createdAt;

    @SerializedName("_game")
    String gameId;
    boolean hide;
    boolean isLiked;
    boolean isTop;
    int likesCount;

    @SerializedName("_user")
    UserProfileObject user;

    public CommentObject() {
    }

    public CommentObject(String str, String str2, UserProfileObject userProfileObject, String str3, String str4, String str5, int i, int i2, boolean z, boolean z2, boolean z3) {
        this.commentId = str;
        this.content = str2;
        this.user = userProfileObject;
        this.comicId = str3;
        this.gameId = str4;
        this.createdAt = str5;
        this.likesCount = i;
        this.childsCount = i2;
        this.isLiked = z;
        this.hide = z2;
        this.isTop = z3;
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

    public UserProfileObject getUser() {
        return this.user;
    }

    public void setUser(UserProfileObject userProfileObject) {
        this.user = userProfileObject;
    }

    public String getComicId() {
        return this.comicId;
    }

    public void setComicId(String str) {
        this.comicId = str;
    }

    public String getGameId() {
        return this.gameId;
    }

    public void setGameId(String str) {
        this.gameId = str;
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

    public boolean isTop() {
        return this.isTop;
    }

    public void setTop(boolean z) {
        this.isTop = z;
    }

    public String toString() {
        return "CommentObject{commentId='" + this.commentId + "', content='" + this.content + "', user=" + this.user + ", comicId='" + this.comicId + "', gameId='" + this.gameId + "', createdAt='" + this.createdAt + "', likesCount=" + this.likesCount + ", childsCount=" + this.childsCount + ", isLiked=" + this.isLiked + ", hide=" + this.hide + ", isTop=" + this.isTop + '}';
    }
}
