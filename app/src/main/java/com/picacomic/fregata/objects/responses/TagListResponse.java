package com.picacomic.fregata.objects.responses;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class TagListResponse {
    ArrayList<String> tags;

    public TagListResponse(ArrayList<String> arrayList) {
        this.tags = arrayList;
    }

    public ArrayList<String> getTags() {
        return this.tags;
    }

    public void setTags(ArrayList<String> arrayList) {
        this.tags = arrayList;
    }
}
