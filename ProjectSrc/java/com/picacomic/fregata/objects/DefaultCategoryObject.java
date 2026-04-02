package com.picacomic.fregata.objects;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class DefaultCategoryObject {

    @SerializedName("_id")
    String categoryId;
    String description;
    int thumbId;
    String title;

    public DefaultCategoryObject() {
    }

    public DefaultCategoryObject(String str, String str2, String str3, int i) {
        this.categoryId = str;
        this.title = str2;
        this.description = str3;
        this.thumbId = i;
    }

    public String getCategoryId() {
        return this.categoryId;
    }

    public void setCategoryId(String str) {
        this.categoryId = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public int getThumbId() {
        return this.thumbId;
    }

    public void setThumbId(int i) {
        this.thumbId = i;
    }

    public String toString() {
        return "CategoryObject{categoryId='" + this.categoryId + "', title='" + this.title + "', description='" + this.description + "', thumbId=" + this.thumbId + '}';
    }
}
