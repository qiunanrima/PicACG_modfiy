package com.picacomic.fregata.objects.responses.DataClass.GameDetailResponse;

import com.picacomic.fregata.objects.GameDetailObject;

/* JADX INFO: loaded from: classes.dex */
public class GameDetailResponse {
    GameDetailObject game;

    public GameDetailResponse(GameDetailObject gameDetailObject) {
        this.game = gameDetailObject;
    }

    public GameDetailObject getGame() {
        return this.game;
    }

    public void setGame(GameDetailObject gameDetailObject) {
        this.game = gameDetailObject;
    }

    public String toString() {
        return "GameDetailResponse{game=" + this.game + '}';
    }
}
