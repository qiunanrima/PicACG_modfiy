package com.picacomic.fregata.objects.responses;

import com.picacomic.fregata.objects.LeaderboardComicListObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class LeaderboardResponse {
    ArrayList<LeaderboardComicListObject> comics;

    public LeaderboardResponse(ArrayList<LeaderboardComicListObject> arrayList) {
        this.comics = arrayList;
    }

    public ArrayList<LeaderboardComicListObject> getComics() {
        return this.comics;
    }

    public void setComics(ArrayList<LeaderboardComicListObject> arrayList) {
        this.comics = arrayList;
    }

    public String toString() {
        return "LeaderboardResponse{comics=" + this.comics + '}';
    }
}
