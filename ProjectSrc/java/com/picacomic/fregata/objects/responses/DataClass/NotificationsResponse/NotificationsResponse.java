package com.picacomic.fregata.objects.responses.DataClass.NotificationsResponse;

/* JADX INFO: loaded from: classes.dex */
public class NotificationsResponse {
    NotificationsData notifications;

    public NotificationsResponse(NotificationsData notificationsData) {
        this.notifications = notificationsData;
    }

    public NotificationsData getNotifications() {
        return this.notifications;
    }

    public void setNotifications(NotificationsData notificationsData) {
        this.notifications = notificationsData;
    }

    public String toString() {
        return "NotificationsResponse{notifications=" + this.notifications + '}';
    }
}
