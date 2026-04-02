package com.picacomic.fregata.objects.responses;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class KeywordsResponse {
    ArrayList<String> keywords;

    public KeywordsResponse(ArrayList<String> arrayList) {
        this.keywords = arrayList;
    }

    public ArrayList<String> getKeywords() {
        return this.keywords;
    }

    public void setKeywords(ArrayList<String> arrayList) {
        this.keywords = arrayList;
    }

    public String toString() {
        return "KeywordsResponse{keywords=" + this.keywords + '}';
    }
}
