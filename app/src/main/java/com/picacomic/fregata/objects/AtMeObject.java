package com.picacomic.fregata.objects;

/* JADX INFO: loaded from: classes.dex */
public class AtMeObject {
    int index;
    String name;

    public AtMeObject(String str, int i) {
        this.name = str;
        this.index = i;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public int getIndex() {
        return this.index;
    }

    public void setIndex(int i) {
        this.index = i;
    }

    public void addIndex() {
        this.index++;
    }
}
