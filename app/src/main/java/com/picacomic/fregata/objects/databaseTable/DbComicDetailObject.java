package com.picacomic.fregata.objects.databaseTable;

import com.google.gson.Gson;
import com.orm.SugarRecord;
import com.picacomic.fregata.objects.ComicDetailObject;
import com.picacomic.fregata.objects.CreatorObject;
import com.picacomic.fregata.objects.ThumbnailObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class DbComicDetailObject extends SugarRecord{
    String author;
    String categories;
    String chineseTeam;
    String comicId;
    int commentsCount;
    String createdAt;
    String creatorAvatarFileServer;
    String creatorAvatarOriginalName;
    String creatorAvatarPath;
    String creatorGender;
    String creatorId;
    String creatorName;
    String description;
    int downloadStatus;
    long downloadedAt;
    int episodeCount;
    boolean finished;
    boolean isFavourite;
    boolean isLiked;
    long lastViewTimestamp;
    int likesCount;
    int pagesCount;
    String tags;
    String thumbFileServer;
    String thumbOriginalName;
    String thumbPath;
    String title;
    String updatedAt;
    int viewsCount;

    public DbComicDetailObject() {
    }

    public DbComicDetailObject(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, ArrayList<String> arrayList, ArrayList<String> arrayList2, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3, String str15, String str16, long j) {
        this.comicId = str;
        this.title = str2;
        this.author = str3;
        this.description = str4;
        this.chineseTeam = str5;
        this.creatorId = str6;
        this.creatorName = str7;
        this.creatorGender = str8;
        this.creatorAvatarFileServer = str9;
        this.creatorAvatarPath = str10;
        this.creatorAvatarOriginalName = str11;
        this.thumbFileServer = str12;
        this.thumbPath = str13;
        this.thumbOriginalName = str14;
        Gson gson = new Gson();
        this.categories = gson.toJson(arrayList);
        this.tags = gson.toJson(arrayList2);
        this.commentsCount = i;
        this.pagesCount = i2;
        this.episodeCount = i3;
        this.likesCount = i4;
        this.viewsCount = i5;
        this.finished = z;
        this.isFavourite = z2;
        this.isLiked = z3;
        this.updatedAt = str15;
        this.createdAt = str16;
        this.lastViewTimestamp = j;
    }

    public DbComicDetailObject(ComicDetailObject comicDetailObject) {
        this.comicId = comicDetailObject.getComicId();
        this.title = comicDetailObject.getTitle();
        this.author = comicDetailObject.getAuthor();
        this.description = comicDetailObject.getDescription();
        this.chineseTeam = comicDetailObject.getChineseTeam();
        if (comicDetailObject.getCreator() != null) {
            this.creatorId = comicDetailObject.getCreator().getCreatorId();
            this.creatorName = comicDetailObject.getCreator().getName();
            this.creatorGender = comicDetailObject.getCreator().getGender();
            if (comicDetailObject.getCreator().getAvatar() != null) {
                this.creatorAvatarFileServer = comicDetailObject.getCreator().getAvatar().getFileServer();
                this.creatorAvatarPath = comicDetailObject.getCreator().getAvatar().getPath();
                this.creatorAvatarOriginalName = comicDetailObject.getCreator().getAvatar().getOriginalName();
            }
        }
        if (comicDetailObject.getThumb() != null) {
            this.thumbFileServer = comicDetailObject.getThumb().getFileServer();
            this.thumbPath = comicDetailObject.getThumb().getPath();
            this.thumbOriginalName = comicDetailObject.getThumb().getOriginalName();
        }
        Gson gson = new Gson();
        this.categories = gson.toJson(comicDetailObject.getCategories());
        this.tags = gson.toJson(comicDetailObject.getTags());
        this.commentsCount = comicDetailObject.getCommentsCount();
        this.pagesCount = comicDetailObject.getPagesCount();
        this.episodeCount = comicDetailObject.getEpisodeCount();
        this.likesCount = comicDetailObject.getLikesCount();
        this.viewsCount = comicDetailObject.getViewsCount();
        this.finished = comicDetailObject.isFinished();
        this.isFavourite = comicDetailObject.isFavourite();
        this.isLiked = comicDetailObject.isLiked();
        this.updatedAt = comicDetailObject.getUpdatedAt();
        this.createdAt = comicDetailObject.getCreatedAt();
        this.lastViewTimestamp = System.currentTimeMillis();
    }

    public void updateDbComicDetailObject(DbComicDetailObject dbComicDetailObject) {
        this.comicId = dbComicDetailObject.getComicId();
        this.title = dbComicDetailObject.getTitle();
        this.author = dbComicDetailObject.getAuthor();
        this.description = dbComicDetailObject.getDescription();
        this.chineseTeam = dbComicDetailObject.getChineseTeam();
        this.creatorId = dbComicDetailObject.getCreatorId();
        this.creatorName = dbComicDetailObject.getCreatorName();
        this.creatorGender = dbComicDetailObject.getCreatorGender();
        this.creatorAvatarFileServer = dbComicDetailObject.getCreatorAvatarFileServer();
        this.creatorAvatarPath = dbComicDetailObject.getCreatorAvatarPath();
        this.creatorAvatarOriginalName = dbComicDetailObject.getCreatorAvatarOriginalName();
        this.thumbFileServer = dbComicDetailObject.getThumbFileServer();
        this.thumbPath = dbComicDetailObject.getThumbPath();
        this.thumbOriginalName = dbComicDetailObject.getThumbOriginalName();
        this.categories = dbComicDetailObject.getCategories();
        this.tags = dbComicDetailObject.getTags();
        this.commentsCount = dbComicDetailObject.getCommentsCount();
        this.pagesCount = dbComicDetailObject.getPagesCount();
        this.episodeCount = dbComicDetailObject.getEpisodeCount();
        this.likesCount = dbComicDetailObject.getLikesCount();
        this.viewsCount = dbComicDetailObject.getViewsCount();
        this.finished = dbComicDetailObject.isFinished();
        this.isFavourite = dbComicDetailObject.isFavourite();
        this.isLiked = dbComicDetailObject.isLiked();
        this.updatedAt = dbComicDetailObject.getUpdatedAt();
        this.createdAt = dbComicDetailObject.getCreatedAt();
        this.lastViewTimestamp = dbComicDetailObject.getLastViewTimestamp();
    }

    public ComicDetailObject getComicDetailObject() {
        Gson gson = new Gson();
        return new ComicDetailObject(this.comicId, this.title, this.author, this.description, this.chineseTeam, getCreator(), getThumb(), (ArrayList) gson.fromJson(this.categories, ArrayList.class), (ArrayList) gson.fromJson(this.tags, ArrayList.class), this.commentsCount, this.pagesCount, this.episodeCount, this.likesCount, this.viewsCount, this.finished, this.isFavourite, this.isLiked, false, false, this.updatedAt, this.createdAt);
    }

    public ThumbnailObject getThumb() {
        return new ThumbnailObject(this.thumbFileServer, this.thumbPath, this.thumbOriginalName);
    }

    public void setThumb(ThumbnailObject thumbnailObject) {
        this.thumbFileServer = thumbnailObject.getFileServer();
        this.thumbPath = thumbnailObject.getPath();
        this.thumbOriginalName = thumbnailObject.getOriginalName();
    }

    public CreatorObject getCreator() {
        return new CreatorObject(this.creatorId, this.creatorName, this.creatorGender, new ThumbnailObject(this.creatorAvatarFileServer, this.creatorAvatarPath, this.creatorAvatarOriginalName));
    }

    public void setCreator(CreatorObject creatorObject) {
        this.creatorId = creatorObject.getCreatorId();
        this.creatorName = creatorObject.getName();
        this.creatorGender = creatorObject.getName();
        if (creatorObject.getAvatar() != null) {
            this.creatorAvatarFileServer = creatorObject.getAvatar().getFileServer();
            this.creatorAvatarPath = creatorObject.getAvatar().getPath();
            this.creatorAvatarOriginalName = creatorObject.getAvatar().getOriginalName();
        }
    }

    public int getDownloadStatus() {
        return this.downloadStatus;
    }

    public void setDownloadStatus(int i) {
        this.downloadStatus = i;
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

    public String getCreatorId() {
        return this.creatorId;
    }

    public void setCreatorId(String str) {
        this.creatorId = str;
    }

    public String getCreatorName() {
        return this.creatorName;
    }

    public void setCreatorName(String str) {
        this.creatorName = str;
    }

    public String getCreatorGender() {
        return this.creatorGender;
    }

    public void setCreatorGender(String str) {
        this.creatorGender = str;
    }

    public String getCreatorAvatarFileServer() {
        return this.creatorAvatarFileServer;
    }

    public void setCreatorAvatarFileServer(String str) {
        this.creatorAvatarFileServer = str;
    }

    public String getCreatorAvatarPath() {
        return this.creatorAvatarPath;
    }

    public void setCreatorAvatarPath(String str) {
        this.creatorAvatarPath = str;
    }

    public String getCreatorAvatarOriginalName() {
        return this.creatorAvatarOriginalName;
    }

    public void setCreatorAvatarOriginalName(String str) {
        this.creatorAvatarOriginalName = str;
    }

    public String getThumbFileServer() {
        return this.thumbFileServer;
    }

    public void setThumbFileServer(String str) {
        this.thumbFileServer = str;
    }

    public String getThumbPath() {
        return this.thumbPath;
    }

    public void setThumbPath(String str) {
        this.thumbPath = str;
    }

    public String getThumbOriginalName() {
        return this.thumbOriginalName;
    }

    public void setThumbOriginalName(String str) {
        this.thumbOriginalName = str;
    }

    public String getCategories() {
        return this.categories;
    }

    public void setCategories(String str) {
        this.categories = str;
    }

    public String getTags() {
        return this.tags;
    }

    public void setTags(String str) {
        this.tags = str;
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

    public long getLastViewTimestamp() {
        return this.lastViewTimestamp;
    }

    public void setLastViewTimestamp(long j) {
        this.lastViewTimestamp = j;
    }

    public long getDownloadedAt() {
        return this.downloadedAt;
    }

    public void setDownloadedAt(long j) {
        this.downloadedAt = j;
    }

    public String toString() {
        return "DbComicDetailObject{comicId='" + this.comicId + "', title='" + this.title + "', author='" + this.author + "', description='" + this.description + "', chineseTeam='" + this.chineseTeam + "', creatorId='" + this.creatorId + "', creatorName='" + this.creatorName + "', creatorGender='" + this.creatorGender + "', creatorAvatarFileServer='" + this.creatorAvatarFileServer + "', creatorAvatarPath='" + this.creatorAvatarPath + "', creatorAvatarOriginalName='" + this.creatorAvatarOriginalName + "', thumbFileServer='" + this.thumbFileServer + "', thumbPath='" + this.thumbPath + "', thumbOriginalName='" + this.thumbOriginalName + "', categories='" + this.categories + "', tags='" + this.tags + "', commentsCount='" + this.commentsCount + "', pagesCount='" + this.pagesCount + "', episodeCount='" + this.episodeCount + "', likesCount='" + this.likesCount + "', viewsCount='" + this.viewsCount + "', finished='" + this.finished + "', isFavourite='" + this.isFavourite + "', isLiked='" + this.isLiked + "', updatedAt='" + this.updatedAt + "', createdAt='" + this.createdAt + "', lastViewTimestamp='" + this.lastViewTimestamp + "', downloadStatus='" + this.downloadStatus + "', downloadedAt='" + this.downloadedAt + "'}";
    }
}
