package com.picacomic.fregata.objects.responses;

import com.picacomic.fregata.objects.CategoryObject;
import com.picacomic.fregata.objects.LatestApplicationObject;
import com.picacomic.fregata.objects.NotificationObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class InitialResponse {
    public ArrayList<CategoryObject> categories;
    public String imageServer;
    public boolean isIdUpdated;
    public boolean isPunched;
    public LatestApplicationObject latestApplication;
    public NotificationObject notification;

    public LatestApplicationObject getLatestApplication() {
        return this.latestApplication;
    }

    public void setLatestApplication(LatestApplicationObject latestApplicationObject) {
        this.latestApplication = latestApplicationObject;
    }

    public boolean isPunched() {
        return this.isPunched;
    }

    public void setPunched(boolean z) {
        this.isPunched = z;
    }

    public String getImageServer() {
        return this.imageServer;
    }

    public void setImageServer(String str) {
        this.imageServer = str;
    }

    public ArrayList<CategoryObject> getCategories() {
        return this.categories;
    }

    public void setCategories(ArrayList<CategoryObject> arrayList) {
        this.categories = arrayList;
    }

    public NotificationObject getNotification() {
        return this.notification;
    }

    public void setNotification(NotificationObject notificationObject) {
        this.notification = notificationObject;
    }

    public String toString() {
        return "InitialResponse{latestApplication=" + this.latestApplication + ", isPunched=" + this.isPunched + ", imageServer='" + this.imageServer + "', categories=" + this.categories + ", notification=" + this.notification + ", isIdUpdated=" + this.isIdUpdated + '}';
    }

    public boolean isIdUpdated() {
        return this.isIdUpdated;
    }

    public void setIdUpdated(boolean z) {
        this.isIdUpdated = z;
    }
}
