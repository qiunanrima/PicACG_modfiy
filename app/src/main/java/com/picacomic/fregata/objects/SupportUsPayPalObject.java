package com.picacomic.fregata.objects;

/* JADX INFO: loaded from: classes.dex */
public class SupportUsPayPalObject {
    public String description;
    public int imageId;
    public String price;
    public String priceUnit;
    public String title;

    public SupportUsPayPalObject(int i, String str, String str2, String str3, String str4) {
        this.imageId = i;
        this.title = str;
        this.priceUnit = str2;
        this.price = str3;
        this.description = str4;
    }

    public int getImageId() {
        return this.imageId;
    }

    public void setImageId(int i) {
        this.imageId = i;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getPriceUnit() {
        return this.priceUnit;
    }

    public void setPriceUnit(String str) {
        this.priceUnit = str;
    }

    public String getPrice() {
        return this.price;
    }

    public void setPrice(String str) {
        this.price = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public String toString() {
        return "SupportUsPayPalObject{imageId=" + this.imageId + ", title='" + this.title + "', priceUnit='" + this.priceUnit + "', price='" + this.price + "', description='" + this.description + "'}";
    }
}
