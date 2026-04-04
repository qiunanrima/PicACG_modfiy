package com.picacomic.fregata.objects.responses.DataClass.AnnouncementsResponse;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementsResponse {
    AnnouncementsData announcements;

    public AnnouncementsResponse(AnnouncementsData announcementsData) {
        this.announcements = announcementsData;
    }

    public AnnouncementsData getAnnouncements() {
        return this.announcements;
    }

    public void setAnnouncements(AnnouncementsData announcementsData) {
        this.announcements = announcementsData;
    }
}
