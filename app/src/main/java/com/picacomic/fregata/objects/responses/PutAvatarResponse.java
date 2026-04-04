package com.picacomic.fregata.objects.responses;

import com.picacomic.fregata.objects.ThumbnailObject;

/* JADX INFO: loaded from: classes.dex */
public class PutAvatarResponse {
    ThumbnailObject avatar;

    public PutAvatarResponse(ThumbnailObject thumbnailObject) {
        this.avatar = thumbnailObject;
    }

    public ThumbnailObject getAvatar() {
        return this.avatar;
    }

    public void setAvatar(ThumbnailObject thumbnailObject) {
        this.avatar = thumbnailObject;
    }

    public String toString() {
        return "PutAvatarResponse{avatar=" + this.avatar + '}';
    }
}
