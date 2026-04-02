package com.picacomic.fregata.objects.responses.DataClass;

import com.picacomic.fregata.objects.PicaAppObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class PicaAppsResponse {
    ArrayList<PicaAppObject> apps;

    public PicaAppsResponse(ArrayList<PicaAppObject> arrayList) {
        this.apps = arrayList;
    }

    public ArrayList<PicaAppObject> getApps() {
        return this.apps;
    }

    public void setApps(ArrayList<PicaAppObject> arrayList) {
        this.apps = arrayList;
    }

    public String toString() {
        return "PicaAppsResponse{apps=" + this.apps + '}';
    }
}
