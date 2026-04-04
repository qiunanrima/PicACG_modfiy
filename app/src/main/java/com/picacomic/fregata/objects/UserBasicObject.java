package com.picacomic.fregata.objects;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class UserBasicObject implements Parcelable {
    public static final Parcelable.Creator<UserBasicObject> CREATOR = new Parcelable.Creator<UserBasicObject>() { // from class: com.picacomic.fregata.objects.UserBasicObject.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserBasicObject createFromParcel(Parcel parcel) {
            return new UserBasicObject(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserBasicObject[] newArray(int i) {
            return new UserBasicObject[i];
        }
    };
    ThumbnailObject avatar;
    String character;
    int exp;
    String gender;
    int level;
    String name;

    @SerializedName("_id")
    String userId;
    boolean verified;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public UserBasicObject(String str, String str2, String str3, String str4, int i, int i2, boolean z, ThumbnailObject thumbnailObject) {
        this.userId = str;
        this.name = str2;
        this.gender = str3;
        this.character = str4;
        this.exp = i;
        this.level = i2;
        this.verified = z;
        this.avatar = thumbnailObject;
    }

    public UserBasicObject(UserProfileObject userProfileObject) {
        this.userId = userProfileObject.getUserId();
        this.name = userProfileObject.getName();
        this.gender = userProfileObject.getGender();
        this.character = userProfileObject.getCharacter();
        this.exp = userProfileObject.getExp();
        this.level = userProfileObject.getLevel();
        this.verified = userProfileObject.isVerified();
        this.avatar = userProfileObject.getAvatar();
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String str) {
        this.gender = str;
    }

    public String getCharacter() {
        return this.character;
    }

    public void setCharacter(String str) {
        this.character = str;
    }

    public int getExp() {
        return this.exp;
    }

    public void setExp(int i) {
        this.exp = i;
    }

    public int getLevel() {
        return this.level;
    }

    public void setLevel(int i) {
        this.level = i;
    }

    public boolean isVerified() {
        return this.verified;
    }

    public void setVerified(boolean z) {
        this.verified = z;
    }

    public ThumbnailObject getAvatar() {
        return this.avatar;
    }

    public void setAvatar(ThumbnailObject thumbnailObject) {
        this.avatar = thumbnailObject;
    }

    public String toString() {
        return "UserBasicObject{userId='" + this.userId + "', name='" + this.name + "', gender='" + this.gender + "', character='" + this.character + "', exp=" + this.exp + ", level=" + this.level + ", verified=" + this.verified + ", avatar=" + this.avatar + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.userId);
        parcel.writeString(this.name);
        parcel.writeString(this.gender);
        parcel.writeString(this.character);
        parcel.writeInt(this.exp);
        parcel.writeInt(this.level);
        parcel.writeByte(this.verified ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.avatar, i);
    }

    protected UserBasicObject(Parcel parcel) {
        this.userId = parcel.readString();
        this.name = parcel.readString();
        this.gender = parcel.readString();
        this.character = parcel.readString();
        this.exp = parcel.readInt();
        this.level = parcel.readInt();
        this.verified = parcel.readByte() != 0;
        this.avatar = (ThumbnailObject) parcel.readParcelable(ThumbnailObject.class.getClassLoader());
    }
}
