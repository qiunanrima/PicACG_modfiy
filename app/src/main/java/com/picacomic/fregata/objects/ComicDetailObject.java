package com.picacomic.fregata.objects;

import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ComicDetailObject {
    boolean allowComment;
    boolean allowDownload;
    String author;
    ArrayList<String> categories;
    String chineseTeam;

    @SerializedName("_id")
    String comicId;
    int commentsCount;

    @SerializedName("created_at")
    String createdAt;

    @SerializedName("_creator")
    CreatorObject creator;
    String description;

    @SerializedName("epsCount")
    int episodeCount;
    boolean finished;
    boolean isFavourite;
    boolean isLiked;
    int likesCount;
    int pagesCount;
    ArrayList<String> tags;
    ThumbnailObject thumb;
    String title;

    @SerializedName("updated_at")
    String updatedAt;
    int viewsCount;

    public ComicDetailObject() {
    }

    public ComicDetailObject(String str, String str2, String str3, String str4, String str5, CreatorObject creatorObject, ThumbnailObject thumbnailObject, ArrayList<String> arrayList, ArrayList<String> arrayList2, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, String str6, String str7) {
        this.comicId = str;
        this.title = str2;
        this.author = str3;
        this.description = str4;
        this.chineseTeam = str5;
        this.creator = creatorObject;
        this.thumb = thumbnailObject;
        this.categories = arrayList;
        this.tags = arrayList2;
        this.commentsCount = i;
        this.pagesCount = i2;
        this.episodeCount = i3;
        this.likesCount = i4;
        this.viewsCount = i5;
        this.finished = z;
        this.isFavourite = z2;
        this.isLiked = z3;
        this.allowDownload = z4;
        this.allowComment = z5;
        this.updatedAt = str6;
        this.createdAt = str7;
    }

    public void updateWithComicDetailObject(ComicDetailObject comicDetailObject) {
        this.comicId = comicDetailObject.comicId;
        this.title = comicDetailObject.title;
        this.author = comicDetailObject.author;
        this.description = comicDetailObject.description;
        this.chineseTeam = comicDetailObject.chineseTeam;
        this.creator = comicDetailObject.creator;
        this.thumb = comicDetailObject.thumb;
        this.categories = comicDetailObject.categories;
        this.tags = comicDetailObject.tags;
        this.commentsCount = comicDetailObject.commentsCount;
        this.pagesCount = comicDetailObject.pagesCount;
        this.episodeCount = comicDetailObject.episodeCount;
        this.likesCount = comicDetailObject.likesCount;
        this.viewsCount = comicDetailObject.viewsCount;
        this.finished = comicDetailObject.finished;
        this.isFavourite = comicDetailObject.isFavourite;
        this.isLiked = comicDetailObject.isLiked;
        this.allowDownload = comicDetailObject.allowDownload;
        this.allowComment = comicDetailObject.allowComment;
        this.updatedAt = comicDetailObject.updatedAt;
        this.createdAt = comicDetailObject.createdAt;
    }

    public String getComicId() {
        return this.comicId;
    }

    public void setComicId(String str) {
        this.comicId = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public String getChineseTeam() {
        return this.chineseTeam;
    }

    public void setChineseTeam(String str) {
        this.chineseTeam = str;
    }

    public CreatorObject getCreator() {
        return this.creator;
    }

    public void setCreator(CreatorObject creatorObject) {
        this.creator = creatorObject;
    }

    public ThumbnailObject getThumb() {
        return this.thumb;
    }

    public void setThumb(ThumbnailObject thumbnailObject) {
        this.thumb = thumbnailObject;
    }

    public ArrayList<String> getCategories() {
        return this.categories;
    }

    public void setCategories(ArrayList<String> arrayList) {
        this.categories = arrayList;
    }

    public ArrayList<String> getTags() {
        return this.tags;
    }

    public void setTags(ArrayList<String> arrayList) {
        this.tags = arrayList;
    }

    public int getCommentsCount() {
        return this.commentsCount;
    }

    public void setCommentsCount(int i) {
        this.commentsCount = i;
    }

    public int getPagesCount() {
        return this.pagesCount;
    }

    public void setPagesCount(int i) {
        this.pagesCount = i;
    }

    public int getEpisodeCount() {
        return this.episodeCount;
    }

    public void setEpisodeCount(int i) {
        this.episodeCount = i;
    }

    public int getLikesCount() {
        return this.likesCount;
    }

    public void setLikesCount(int i) {
        this.likesCount = i;
    }

    public int getViewsCount() {
        return this.viewsCount;
    }

    public void setViewsCount(int i) {
        this.viewsCount = i;
    }

    public boolean isFinished() {
        return this.finished;
    }

    public void setFinished(boolean z) {
        this.finished = z;
    }

    public boolean isFavourite() {
        return this.isFavourite;
    }

    public void setFavourite(boolean z) {
        this.isFavourite = z;
    }

    public boolean isLiked() {
        return this.isLiked;
    }

    public void setLiked(boolean z) {
        this.isLiked = z;
    }

    public boolean isAllowDownload() {
        return this.allowDownload;
    }

    public void setAllowDownload(boolean z) {
        this.allowDownload = z;
    }

    public boolean isAllowComment() {
        return this.allowComment;
    }

    public void setAllowComment(boolean z) {
        this.allowComment = z;
    }

    public String getUpdatedAt() {
        return this.updatedAt;
    }

    public void setUpdatedAt(String str) {
        this.updatedAt = str;
    }

    public String getCreatedAt() {
        return this.createdAt;
    }

    public void setCreatedAt(String str) {
        this.createdAt = str;
    }

    public String toString() {
        return "ComicDetailObject{comicId='" + this.comicId + "', title='" + this.title + "', author='" + this.author + "', description='" + this.description + "', chineseTeam='" + this.chineseTeam + "', creator=" + this.creator + ", thumb=" + this.thumb + ", categories=" + this.categories + ", tags=" + this.tags + ", commentsCount=" + this.commentsCount + ", pagesCount=" + this.pagesCount + ", episodeCount=" + this.episodeCount + ", likesCount=" + this.likesCount + ", viewsCount=" + this.viewsCount + ", finished=" + this.finished + ", isFavourite=" + this.isFavourite + ", isLiked=" + this.isLiked + ", allowDownload=" + this.allowDownload + ", allowComment=" + this.allowComment + ", updatedAt='" + this.updatedAt + "', createdAt='" + this.createdAt + "'}";
    }
}
