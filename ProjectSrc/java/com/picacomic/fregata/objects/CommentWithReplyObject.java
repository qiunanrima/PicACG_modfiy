package com.picacomic.fregata.objects;

import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CommentWithReplyObject {
    ArrayList<CommentObject> arrayList;

    @SerializedName("commentsCount")
    int childsCount;

    @SerializedName("_comic")
    CommentComicIdTitleObject comicId;

    @SerializedName("_id")
    String commentId;
    String content;

    @SerializedName("created_at")
    String createdAt;
    int currentPage;

    @SerializedName("_game")
    CommentGameIdTitleObject gameId;
    boolean hide;
    boolean isLiked;
    boolean isTop;
    int likesCount;
    String title;
    int totalPage;

    @SerializedName("_user")
    UserProfileObject user;

    public CommentWithReplyObject() {
        this.currentPage = 0;
        this.totalPage = 1;
    }

    public CommentWithReplyObject(String str, String str2, UserProfileObject userProfileObject, CommentComicIdTitleObject commentComicIdTitleObject, CommentGameIdTitleObject commentGameIdTitleObject, String str3, String str4, int i, int i2, boolean z, boolean z2, boolean z3) {
        this.commentId = str;
        this.content = str2;
        this.user = userProfileObject;
        this.comicId = commentComicIdTitleObject;
        this.gameId = commentGameIdTitleObject;
        this.title = str3;
        this.createdAt = str4;
        this.likesCount = i;
        this.childsCount = i2;
        this.isLiked = z;
        this.hide = z2;
        this.isTop = z3;
        this.currentPage = 0;
        this.totalPage = 1;
    }

    public CommentWithReplyObject(CommentObject commentObject) {
        this.commentId = commentObject.commentId;
        this.content = commentObject.content;
        this.user = commentObject.user;
        this.comicId = new CommentComicIdTitleObject(commentObject.getComicId(), "");
        this.gameId = new CommentGameIdTitleObject(commentObject.getGameId(), "");
        this.createdAt = commentObject.createdAt;
        this.likesCount = commentObject.likesCount;
        this.childsCount = commentObject.childsCount;
        this.isLiked = commentObject.isLiked;
        this.hide = commentObject.hide;
        this.isTop = commentObject.isTop;
        this.currentPage = 0;
        this.totalPage = 1;
    }

    public CommentWithReplyObject(ProfileCommentObject profileCommentObject, UserProfileObject userProfileObject) {
        this.commentId = profileCommentObject.commentId;
        this.content = profileCommentObject.content;
        this.user = userProfileObject;
        this.comicId = profileCommentObject.getCommentComicIdTitleObject();
        this.gameId = profileCommentObject.getCommentGameIdTitleObject();
        this.createdAt = profileCommentObject.createdAt;
        this.likesCount = profileCommentObject.likesCount;
        this.childsCount = profileCommentObject.childsCount;
        this.isLiked = profileCommentObject.isLiked;
        this.hide = profileCommentObject.hide;
        this.isTop = false;
        this.currentPage = 0;
        this.totalPage = 1;
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

    public CommentComicIdTitleObject getComicId() {
        return this.comicId;
    }

    public void setComicId(CommentComicIdTitleObject commentComicIdTitleObject) {
        this.comicId = commentComicIdTitleObject;
    }

    public CommentGameIdTitleObject getGameId() {
        return this.gameId;
    }

    public void setGameId(CommentGameIdTitleObject commentGameIdTitleObject) {
        this.gameId = commentGameIdTitleObject;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
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

    public int getCurrentPage() {
        return this.currentPage;
    }

    public void setCurrentPage(int i) {
        this.currentPage = i;
    }

    public int getTotalPage() {
        return this.totalPage;
    }

    public void setTotalPage(int i) {
        this.totalPage = i;
    }

    public ArrayList<CommentObject> getArrayList() {
        return this.arrayList;
    }

    public void setArrayList(ArrayList<CommentObject> arrayList) {
        this.arrayList = arrayList;
    }

    public String toString() {
        return "CommentWithReplyObject{commentId='" + this.commentId + "', content='" + this.content + "', user='" + this.user + "', comicId='" + this.comicId + "', gameId='" + this.gameId + "', createdAt='" + this.createdAt + "', likesCount='" + this.likesCount + "', childsCount='" + this.childsCount + "', currentPage='" + this.currentPage + "', isLiked='" + this.isLiked + "', totalPage='" + this.totalPage + "', arrayList='" + this.arrayList + "', hide='" + this.hide + "', isTop='" + this.isTop + "'}";
    }
}
