package com.picacomic.fregata.objects.responses;

/* JADX INFO: loaded from: classes.dex */
public class CommentPostToTopResponse {
    boolean isTop;

    public CommentPostToTopResponse(boolean z) {
        this.isTop = z;
    }

    public boolean isTop() {
        return this.isTop;
    }

    public void setTop(boolean z) {
        this.isTop = z;
    }

    public String toString() {
        return "TopCommentResponse{isTop=" + this.isTop + '}';
    }
}
