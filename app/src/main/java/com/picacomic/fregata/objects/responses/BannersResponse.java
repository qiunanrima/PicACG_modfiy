package com.picacomic.fregata.objects.responses;

import com.picacomic.fregata.objects.BannerObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class BannersResponse {
    ArrayList<BannerObject> banners;

    public BannersResponse(ArrayList<BannerObject> arrayList) {
        this.banners = arrayList;
    }

    public ArrayList<BannerObject> getBanners() {
        return this.banners;
    }

    public void setBanners(ArrayList<BannerObject> arrayList) {
        this.banners = arrayList;
    }
}
