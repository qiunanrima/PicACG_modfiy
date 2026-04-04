package com.picacomic.fregata.objects.responses;

import com.picacomic.fregata.objects.UserProfileObject;

/* JADX INFO: loaded from: classes.dex */
public class UserProfileResponse {
    UserProfileObject user;

    public UserProfileResponse() {
    }

    public UserProfileResponse(UserProfileObject userProfileObject) {
        this.user = userProfileObject;
    }

    public UserProfileObject getUser() {
        return this.user;
    }

    public void setUser(UserProfileObject userProfileObject) {
        this.user = userProfileObject;
    }

    public String toString() {
        return "UserProfileResponse{user=" + this.user + '}';
    }
}
