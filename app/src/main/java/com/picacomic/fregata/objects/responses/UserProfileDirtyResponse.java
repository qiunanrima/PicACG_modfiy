package com.picacomic.fregata.objects.responses;

/* JADX INFO: loaded from: classes.dex */
public class UserProfileDirtyResponse {
    boolean dirty;

    public UserProfileDirtyResponse(boolean z) {
        this.dirty = z;
    }

    public boolean isDirty() {
        return this.dirty;
    }

    public void setDirty(boolean z) {
        this.dirty = z;
    }

    public String toString() {
        return "UserProfileDirtyResponse{dirty=" + this.dirty + '}';
    }
}
