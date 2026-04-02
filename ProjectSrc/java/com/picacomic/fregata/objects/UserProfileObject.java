package com.picacomic.fregata.objects;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class UserProfileObject implements Parcelable {
    public static final Parcelable.Creator<UserProfileObject> CREATOR = new Parcelable.Creator<UserProfileObject>() { // from class: com.picacomic.fregata.objects.UserProfileObject.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserProfileObject createFromParcel(Parcel parcel) {
            return new UserProfileObject(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserProfileObject[] newArray(int i) {
            return new UserProfileObject[i];
        }
    };

    @SerializedName("activation_date")
    String activationDate;
    ThumbnailObject avatar;
    String birthday;
    String character;
    ArrayList<String> characters;
    String email;
    int exp;
    String gender;
    boolean isPunched;
    int level;
    String name;
    String role;
    String slogan;
    String title;

    @SerializedName("_id")
    String userId;
    boolean verified;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public UserProfileObject() {
    }

    public UserProfileObject(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, ArrayList<String> arrayList, String str10, int i, int i2, boolean z, boolean z2, ThumbnailObject thumbnailObject) {
        this.userId = str;
        this.email = str2;
        this.name = str3;
        this.title = str4;
        this.birthday = str5;
        this.gender = str6;
        this.slogan = str7;
        this.role = str8;
        this.character = str9;
        this.characters = arrayList;
        this.activationDate = str10;
        this.exp = i;
        this.level = i2;
        this.isPunched = z;
        this.verified = z2;
        this.avatar = thumbnailObject;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public void setBirthday(String str) {
        this.birthday = str;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String str) {
        this.gender = str;
    }

    public String getSlogan() {
        return this.slogan;
    }

    public void setSlogan(String str) {
        this.slogan = str;
    }

    public String getRole() {
        return this.role;
    }

    public void setRole(String str) {
        this.role = str;
    }

    public String getCharacter() {
        return this.character;
    }

    public void setCharacter(String str) {
        this.character = str;
    }

    public ArrayList<String> getCharacters() {
        return this.characters;
    }

    public String[] getCharactersStringArray() {
        if (this.characters == null || this.characters.size() <= 0) {
            return null;
        }
        String[] strArr = new String[this.characters.size()];
        for (int i = 0; i < this.characters.size(); i++) {
            strArr[i] = this.characters.get(i);
        }
        return strArr;
    }

    public void setCharacters(ArrayList<String> arrayList) {
        this.characters = arrayList;
    }

    public String getActivationDate() {
        return this.activationDate;
    }

    public void setActivationDate(String str) {
        this.activationDate = str;
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

    public boolean isPunched() {
        return this.isPunched;
    }

    public void setPunched(boolean z) {
        this.isPunched = z;
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
        return "UserProfileObject{userId='" + this.userId + "', email='" + this.email + "', name='" + this.name + "', title='" + this.title + "', birthday='" + this.birthday + "', gender='" + this.gender + "', slogan='" + this.slogan + "', role='" + this.role + "', character='" + this.character + "', characters='" + this.characters + "', activationDate='" + this.activationDate + "', exp=" + this.exp + ", level=" + this.level + ", isPunched=" + this.isPunched + ", verified=" + this.verified + ", avatar=" + this.avatar + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.userId);
        parcel.writeString(this.email);
        parcel.writeString(this.name);
        parcel.writeString(this.title);
        parcel.writeString(this.birthday);
        parcel.writeString(this.gender);
        parcel.writeString(this.slogan);
        parcel.writeString(this.role);
        parcel.writeString(this.character);
        parcel.writeStringList(this.characters);
        parcel.writeString(this.activationDate);
        parcel.writeInt(this.exp);
        parcel.writeInt(this.level);
        parcel.writeByte(this.isPunched ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.verified ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.avatar, i);
    }

    protected UserProfileObject(Parcel parcel) {
        this.userId = parcel.readString();
        this.email = parcel.readString();
        this.name = parcel.readString();
        this.title = parcel.readString();
        this.birthday = parcel.readString();
        this.gender = parcel.readString();
        this.slogan = parcel.readString();
        this.role = parcel.readString();
        this.character = parcel.readString();
        this.characters = parcel.createStringArrayList();
        this.activationDate = parcel.readString();
        this.exp = parcel.readInt();
        this.level = parcel.readInt();
        this.isPunched = parcel.readByte() != 0;
        this.verified = parcel.readByte() != 0;
        this.avatar = (ThumbnailObject) parcel.readParcelable(ThumbnailObject.class.getClassLoader());
    }
}
