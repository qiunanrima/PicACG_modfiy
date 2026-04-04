package com.picacomic.fregata.objects;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class ComicEpisodeObject implements Parcelable {
    public static final Parcelable.Creator<ComicEpisodeObject> CREATOR = new Parcelable.Creator<ComicEpisodeObject>() { // from class: com.picacomic.fregata.objects.ComicEpisodeObject.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComicEpisodeObject createFromParcel(Parcel parcel) {
            return new ComicEpisodeObject(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComicEpisodeObject[] newArray(int i) {
            return new ComicEpisodeObject[i];
        }
    };

    @SerializedName("_id")
    String episodeId;
    int order;
    boolean selected;
    int status;
    String title;

    @SerializedName("updated_at")
    String updatedAt;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ComicEpisodeObject() {
    }

    public ComicEpisodeObject(String str, String str2, int i, String str3) {
        this.episodeId = str;
        this.title = str2;
        this.order = i;
        this.updatedAt = str3;
        this.status = 0;
        this.selected = false;
    }

    public String getEpisodeId() {
        return this.episodeId;
    }

    public void setEpisodeId(String str) {
        this.episodeId = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public int getOrder() {
        return this.order;
    }

    public void setOrder(int i) {
        this.order = i;
    }

    public String getUpdatedAt() {
        return this.updatedAt;
    }

    public void setUpdatedAt(String str) {
        this.updatedAt = str;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setSelected(boolean z) {
        this.selected = z;
    }

    public String toString() {
        return "ComicEpisodeObject{episodeId='" + this.episodeId + "', title='" + this.title + "', order=" + this.order + ", updatedAt='" + this.updatedAt + "', status=" + this.status + ", selected=" + this.selected + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.episodeId);
        parcel.writeString(this.title);
        parcel.writeInt(this.order);
        parcel.writeString(this.updatedAt);
        parcel.writeInt(this.status);
        parcel.writeByte(this.selected ? (byte) 1 : (byte) 0);
    }

    protected ComicEpisodeObject(Parcel parcel) {
        this.episodeId = parcel.readString();
        this.title = parcel.readString();
        this.order = parcel.readInt();
        this.updatedAt = parcel.readString();
        this.status = parcel.readInt();
        this.selected = parcel.readByte() != 0;
    }
}
