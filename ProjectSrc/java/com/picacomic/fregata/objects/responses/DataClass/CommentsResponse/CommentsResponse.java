package com.picacomic.fregata.objects.responses.DataClass.CommentsResponse;

import com.picacomic.fregata.objects.CommentObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CommentsResponse {
    CommentsData comments;
    ArrayList<CommentObject> topComments;

    public CommentsResponse(CommentsData commentsData, ArrayList<CommentObject> arrayList) {
        this.comments = commentsData;
        this.topComments = arrayList;
    }

    public CommentsData getComments() {
        return this.comments;
    }

    public void setComments(CommentsData commentsData) {
        this.comments = commentsData;
    }

    public ArrayList<CommentObject> getTopComments() {
        return this.topComments;
    }

    public void setTopComments(ArrayList<CommentObject> arrayList) {
        this.topComments = arrayList;
    }

    public String toString() {
        return "CommentsResponse{comments=" + this.comments + ", topComments=" + this.topComments + '}';
    }
}
