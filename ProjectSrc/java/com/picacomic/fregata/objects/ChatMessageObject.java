package com.picacomic.fregata.objects;

/* JADX INFO: loaded from: classes.dex */
public class ChatMessageObject extends ChatBaseObject {
    public String activation_date;
    public String at;
    public String audio;
    public String avatar;
    public String block_user_id;
    public String character;
    public String[] characters;
    public String email;
    public String[] event_colors;
    public String event_icon;
    public String gender;
    public String image;
    public int level;
    public String message;
    public String name;
    public String platform;
    public String reply;
    public String reply_name;
    public String title;
    public ChatroomToObject to;
    public int type;
    public String unique_id;
    public String user_id;
    public boolean verified;

    public ChatMessageObject() {
    }

    public ChatMessageObject(String str, String str2, int i, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, int i2, boolean z, String str17, String[] strArr, String str18, String[] strArr2) {
        this.user_id = str;
        this.unique_id = str2;
        this.level = i;
        this.email = str3;
        this.avatar = str4;
        this.name = str5;
        this.title = str6;
        this.gender = str7;
        this.platform = str8;
        this.activation_date = str9;
        this.at = str10;
        this.reply_name = str11;
        this.reply = str12;
        this.message = str13;
        this.image = str14;
        this.audio = str15;
        this.block_user_id = str16;
        this.type = i2;
        this.verified = z;
        this.character = str17;
        this.characters = strArr;
        this.event_icon = str18;
        this.event_colors = strArr2;
        this.to = null;
    }

    public ChatMessageObject(String str, String str2, int i, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, int i2, boolean z, String str17, String[] strArr, String str18, String[] strArr2, ChatroomToObject chatroomToObject) {
        this.user_id = str;
        this.unique_id = str2;
        this.level = i;
        this.email = str3;
        this.avatar = str4;
        this.name = str5;
        this.title = str6;
        this.gender = str7;
        this.platform = str8;
        this.activation_date = str9;
        this.at = str10;
        this.reply_name = str11;
        this.reply = str12;
        this.message = str13;
        this.image = str14;
        this.audio = str15;
        this.block_user_id = str16;
        this.type = i2;
        this.verified = z;
        this.character = str17;
        this.characters = strArr;
        this.event_icon = str18;
        this.event_colors = strArr2;
        this.to = chatroomToObject;
    }

    public String getUserId() {
        return this.user_id;
    }

    public void setUserId(String str) {
        this.user_id = str;
    }

    public String getUniqueId() {
        return this.unique_id;
    }

    public void setUniqueId(String str) {
        this.unique_id = str;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String str) {
        this.avatar = str;
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

    public String getGender() {
        return this.gender;
    }

    public void setGender(String str) {
        this.gender = str;
    }

    public String getPlatform() {
        return this.platform;
    }

    public void setPlatform(String str) {
        this.platform = str;
    }

    public String getActivationDate() {
        return this.activation_date;
    }

    public void setActivationDate(String str) {
        this.activation_date = str;
    }

    public int getLevel() {
        return this.level;
    }

    public void setLevel(int i) {
        this.level = i;
    }

    public String getAt() {
        return this.at;
    }

    public void setAt(String str) {
        this.at = str;
    }

    public String getReplyName() {
        return this.reply_name;
    }

    public void setReplyName(String str) {
        this.reply_name = str;
    }

    public String getReply() {
        return this.reply;
    }

    public void setReply(String str) {
        this.reply = str;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String getImage() {
        return this.image;
    }

    public void setImage(String str) {
        this.image = str;
    }

    public String getAudio() {
        return this.audio;
    }

    public void setAudio(String str) {
        this.audio = str;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public boolean isVerified() {
        return this.verified;
    }

    public void setVerified(boolean z) {
        this.verified = z;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public String getReply_name() {
        return this.reply_name;
    }

    public void setReply_name(String str) {
        this.reply_name = str;
    }

    public String getBlockUserId() {
        return this.block_user_id;
    }

    public void setBlockUserId(String str) {
        this.block_user_id = str;
    }

    public String getCharacter() {
        return this.character;
    }

    public void setCharacter(String str) {
        this.character = str;
    }

    public String[] getCharacters() {
        return this.characters;
    }

    public void setCharacters(String[] strArr) {
        this.characters = strArr;
    }

    public String getEventIcon() {
        return this.event_icon;
    }

    public void setEventIcon(String str) {
        this.event_icon = str;
    }

    public String[] getEventColors() {
        return this.event_colors;
    }

    public void setEventColors(String[] strArr) {
        this.event_colors = strArr;
    }

    public ChatroomToObject getTo() {
        return this.to;
    }

    public void setTo(ChatroomToObject chatroomToObject) {
        this.to = chatroomToObject;
    }

    public String toString() {
        return "ChatMessageObject{user_id='" + this.user_id + "', unique_id='" + this.unique_id + "', email='" + this.email + "', avatar='" + this.avatar + "', name='" + this.name + "', title='" + this.title + "', gender='" + this.gender + "', platform='" + this.platform + "', activation_date='" + this.activation_date + "', at='" + this.at + "', reply_name='" + this.reply_name + "', reply='" + this.reply + "', message='" + this.message + "', image='" + this.image + "', audio='" + this.audio + "', block_user_id='" + this.block_user_id + "', type='" + this.type + "', level='" + this.level + "', verified='" + this.verified + "', character='" + this.character + "', characters='" + this.characters + "', event_icon='" + this.event_icon + "', event_colors='" + this.event_colors + "', to=" + this.to + "'}";
    }
}
