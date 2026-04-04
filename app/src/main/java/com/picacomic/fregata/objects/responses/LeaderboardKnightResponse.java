package com.picacomic.fregata.objects.responses;

import com.picacomic.fregata.objects.LeaderboardKnightObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class LeaderboardKnightResponse {
    ArrayList<LeaderboardKnightObject> users;

    public LeaderboardKnightResponse(ArrayList<LeaderboardKnightObject> arrayList) {
        this.users = arrayList;
    }

    public ArrayList<LeaderboardKnightObject> getUsers() {
        return this.users;
    }

    public void setUsers(ArrayList<LeaderboardKnightObject> arrayList) {
        this.users = arrayList;
    }

    public String toString() {
        return "LeaderboardKnightResponse{users=" + this.users + '}';
    }
}
