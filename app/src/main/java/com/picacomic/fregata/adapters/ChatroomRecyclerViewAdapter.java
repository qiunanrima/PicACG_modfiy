package com.picacomic.fregata.adapters;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import android.text.SpannableString;
import android.text.format.DateFormat;
import android.text.style.ForegroundColorSpan;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.picacomic.fregata.R;
import com.picacomic.fregata.holders.ChatroomAdsViewHolder;
import com.picacomic.fregata.holders.ChatroomAudioViewHolder;
import com.picacomic.fregata.holders.ChatroomBroadcastAdsViewHolder;
import com.picacomic.fregata.holders.ChatroomConnectionViewHolder;
import com.picacomic.fregata.holders.ChatroomImageViewHolder;
import com.picacomic.fregata.holders.ChatroomMessageViewHolder;
import com.picacomic.fregata.holders.ChatroomSystemNotificationViewHolder;
import com.picacomic.fregata.objects.ChatBaseObject;
import com.picacomic.fregata.objects.ChatMessageObject;
import com.picacomic.fregata.objects.ChatSystemObject;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public static final String TAG = "ChatroomRecyclerViewAdapter";
    private final Context context;
    private ArrayList<ChatBaseObject> ja;
    public boolean jl;
    private com.picacomic.fregata.a_pkg.a jn;
    private final LayoutInflater mLayoutInflater;
    public boolean jk = true;
    public boolean jm = false;

    public ChatroomRecyclerViewAdapter(Context context, ArrayList<ChatBaseObject> arrayList, com.picacomic.fregata.a_pkg.a aVar) {
        this.context = context;
        this.mLayoutInflater = LayoutInflater.from(context);
        this.ja = arrayList;
        this.jn = aVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (viewGroup != null) {
            viewGroup.setClipChildren(false);
        }
        switch (i) {
            case 0:
                return new ChatroomMessageViewHolder(this.mLayoutInflater.inflate(R.layout.item_chatroom_message_recycler_view_cell, viewGroup, false), this.jn);
            case 1:
                return new ChatroomImageViewHolder(this.mLayoutInflater.inflate(R.layout.item_chatroom_image_recycler_view_cell, viewGroup, false), this.jn);
            case 2:
                return new ChatroomAudioViewHolder(this.mLayoutInflater.inflate(R.layout.item_chatroom_audio_recycler_view_cell, viewGroup, false), this.jn);
            case 3:
                return new ChatroomMessageViewHolder(this.mLayoutInflater.inflate(R.layout.item_chatroom_message_me_recycler_view_cell, viewGroup, false), this.jn);
            case 4:
                return new ChatroomImageViewHolder(this.mLayoutInflater.inflate(R.layout.item_chatroom_image_me_recycler_view_cell, viewGroup, false), this.jn);
            case 5:
                return new ChatroomAudioViewHolder(this.mLayoutInflater.inflate(R.layout.item_chatroom_audio_me_recycler_view_cell, viewGroup, false), this.jn);
            case 6:
                return new ChatroomConnectionViewHolder(this.mLayoutInflater.inflate(R.layout.item_chatroom_connection_new_recycler_view_cell, viewGroup, false));
            case 7:
                return new ChatroomConnectionViewHolder(this.mLayoutInflater.inflate(R.layout.item_chatroom_connection_closed_recycler_view_cell, viewGroup, false));
            case 8:
                return new ChatroomAdsViewHolder(this.mLayoutInflater.inflate(R.layout.item_chatroom_bot_recycler_view_cell, viewGroup, false), this.jn);
            case 9:
                return new ChatroomMessageViewHolder(this.mLayoutInflater.inflate(R.layout.item_chatroom_message_recycler_view_cell, viewGroup, false), this.jn);
            case 10:
                return new ChatroomMessageViewHolder(this.mLayoutInflater.inflate(R.layout.item_chatroom_message_me_recycler_view_cell, viewGroup, false), this.jn);
            case 11:
                return new ChatroomBroadcastAdsViewHolder(this.mLayoutInflater.inflate(R.layout.item_chatroom_ads_recycler_view_cell, viewGroup, false), this.jn);
            case 12:
                return new ChatroomSystemNotificationViewHolder(this.mLayoutInflater.inflate(R.layout.item_chatroom_system_notification_recycler_view_cell, viewGroup, false));
            default:
                return new ChatroomMessageViewHolder(this.mLayoutInflater.inflate(R.layout.item_chatroom_message_recycler_view_cell, viewGroup, false), this.jn);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        String avatar = this.ja.get(i) instanceof ChatMessageObject ? ((ChatMessageObject) this.ja.get(i)).getAvatar() : null;
        if (this.jm || (this.ja.get(i) instanceof ChatSystemObject) || ((this.ja.get(i) instanceof ChatMessageObject) && ((ChatMessageObject) this.ja.get(i)).getAvatar() != null && ((ChatMessageObject) this.ja.get(i)).getAvatar().equalsIgnoreCase(""))) {
            avatar = null;
        }
        if (viewHolder instanceof ChatroomMessageViewHolder) {
            ChatMessageObject chatMessageObject = (ChatMessageObject) this.ja.get(i);
            if (getItemViewType(i) == 9 || getItemViewType(i) == 10) {
                ((ChatroomMessageViewHolder) viewHolder).container.setBackgroundColor(ContextCompat.getColor(this.context, R.color.green_transparent_30));
            } else {
                ((ChatroomMessageViewHolder) viewHolder).container.setBackgroundColor(ContextCompat.getColor(this.context, R.color.transparent));
            }
            if (chatMessageObject.event_icon != null && !chatMessageObject.event_icon.equalsIgnoreCase("")) {
                ChatroomMessageViewHolder chatroomMessageViewHolder = (ChatroomMessageViewHolder) viewHolder;
                chatroomMessageViewHolder.imageView_verified.setVisibility(0);
                Picasso.with(this.context).load(chatMessageObject.event_icon).into(chatroomMessageViewHolder.imageView_verified);
            } else if (chatMessageObject.getCharacter() != null && !chatMessageObject.getCharacter().equalsIgnoreCase("")) {
                ChatroomMessageViewHolder chatroomMessageViewHolder2 = (ChatroomMessageViewHolder) viewHolder;
                chatroomMessageViewHolder2.imageView_verified.setVisibility(0);
                Picasso.with(this.context).load(chatMessageObject.getCharacter()).into(chatroomMessageViewHolder2.imageView_verified);
            } else if (chatMessageObject.isVerified()) {
                ChatroomMessageViewHolder chatroomMessageViewHolder3 = (ChatroomMessageViewHolder) viewHolder;
                chatroomMessageViewHolder3.imageView_verified.setVisibility(0);
                chatroomMessageViewHolder3.imageView_verified.setImageResource(R.drawable.verified_icon_fill);
            } else {
                ((ChatroomMessageViewHolder) viewHolder).imageView_verified.setVisibility(8);
            }
            if (chatMessageObject.getActivationDate() != null && chatMessageObject.getActivationDate().length() > 0) {
                ((ChatroomMessageViewHolder) viewHolder).imageView_avatar.setBorderColorResource(R.color.colorPrimary);
            } else {
                ((ChatroomMessageViewHolder) viewHolder).imageView_avatar.setBorderColorResource(R.color.grayLight);
            }
            if (chatMessageObject.getAt() != null && !chatMessageObject.getAt().equalsIgnoreCase("")) {
                ChatroomMessageViewHolder chatroomMessageViewHolder4 = (ChatroomMessageViewHolder) viewHolder;
                chatroomMessageViewHolder4.textView_at.setVisibility(0);
                chatroomMessageViewHolder4.textView_at.setText(chatMessageObject.getAt().replace("嗶咔_", " @"));
            } else {
                ((ChatroomMessageViewHolder) viewHolder).textView_at.setVisibility(8);
            }
            if (chatMessageObject.getReplyName() != null && !chatMessageObject.getReplyName().equalsIgnoreCase("") && chatMessageObject.getReply() != null && !chatMessageObject.getReply().equalsIgnoreCase("")) {
                ChatroomMessageViewHolder chatroomMessageViewHolder5 = (ChatroomMessageViewHolder) viewHolder;
                chatroomMessageViewHolder5.linearLayout_replyContainer.setVisibility(0);
                chatroomMessageViewHolder5.textView_replyName.setText(chatMessageObject.getReplyName());
                chatroomMessageViewHolder5.textView_replyMessage.setText(chatMessageObject.getReply());
            } else {
                ((ChatroomMessageViewHolder) viewHolder).linearLayout_replyContainer.setVisibility(8);
            }
            ChatroomMessageViewHolder chatroomMessageViewHolder6 = (ChatroomMessageViewHolder) viewHolder;
            chatroomMessageViewHolder6.textView_level.setText("Lv." + chatMessageObject.getLevel());
            chatroomMessageViewHolder6.textView_name.setText(chatMessageObject.getName());
            chatroomMessageViewHolder6.textView_title.setText(chatMessageObject.getTitle());
            if (chatMessageObject.getEventColors() != null && chatMessageObject.getEventColors().length > 0) {
                a(chatroomMessageViewHolder6.textView_message, chatMessageObject.getEventColors(), chatMessageObject.getMessage());
            } else {
                chatroomMessageViewHolder6.textView_message.setText(chatMessageObject.getMessage());
            }
            if (this.jk) {
                chatroomMessageViewHolder6.textView_timestamp.setVisibility(0);
                chatroomMessageViewHolder6.textView_timestamp.setText("" + chatMessageObject.getPlatform() + " " + DateFormat.format("hh:mm:ss", new Date(System.currentTimeMillis())).toString());
            } else {
                chatroomMessageViewHolder6.textView_timestamp.setVisibility(8);
            }
            Picasso.with(this.context).load(avatar).placeholder(R.drawable.placeholder_avatar_2).into(chatroomMessageViewHolder6.imageView_avatar);
            return;
        }
        if (viewHolder instanceof ChatroomImageViewHolder) {
            ChatMessageObject chatMessageObject2 = (ChatMessageObject) this.ja.get(i);
            if (chatMessageObject2.event_icon != null && !chatMessageObject2.event_icon.equalsIgnoreCase("")) {
                ChatroomImageViewHolder chatroomImageViewHolder = (ChatroomImageViewHolder) viewHolder;
                chatroomImageViewHolder.imageView_verified.setVisibility(0);
                Picasso.with(this.context).load(chatMessageObject2.event_icon).into(chatroomImageViewHolder.imageView_verified);
            } else if (chatMessageObject2.getCharacter() != null && !chatMessageObject2.getCharacter().equalsIgnoreCase("")) {
                ChatroomImageViewHolder chatroomImageViewHolder2 = (ChatroomImageViewHolder) viewHolder;
                chatroomImageViewHolder2.imageView_verified.setVisibility(0);
                Picasso.with(this.context).load(chatMessageObject2.getCharacter()).into(chatroomImageViewHolder2.imageView_verified);
            } else if (chatMessageObject2.isVerified()) {
                ChatroomImageViewHolder chatroomImageViewHolder3 = (ChatroomImageViewHolder) viewHolder;
                chatroomImageViewHolder3.imageView_verified.setVisibility(0);
                chatroomImageViewHolder3.imageView_verified.setImageResource(R.drawable.verified_icon_fill);
            } else {
                ((ChatroomImageViewHolder) viewHolder).imageView_verified.setVisibility(8);
            }
            if (chatMessageObject2.getActivationDate() != null && chatMessageObject2.getActivationDate().length() > 0) {
                ((ChatroomImageViewHolder) viewHolder).imageView_avatar.setBorderColorResource(R.color.colorPrimary);
            } else {
                ((ChatroomImageViewHolder) viewHolder).imageView_avatar.setBorderColorResource(R.color.grayLight);
            }
            ChatroomImageViewHolder chatroomImageViewHolder4 = (ChatroomImageViewHolder) viewHolder;
            chatroomImageViewHolder4.textView_level.setText("Lv." + chatMessageObject2.getLevel());
            chatroomImageViewHolder4.textView_name.setText(chatMessageObject2.getName());
            chatroomImageViewHolder4.textView_title.setText(chatMessageObject2.getTitle());
            if (this.jk) {
                chatroomImageViewHolder4.textView_timestamp.setVisibility(0);
                chatroomImageViewHolder4.textView_timestamp.setText("" + chatMessageObject2.getPlatform() + " " + DateFormat.format("hh:mm:ss", new Date(System.currentTimeMillis())).toString());
            } else {
                chatroomImageViewHolder4.textView_timestamp.setVisibility(8);
            }
            if (chatMessageObject2.getImage() != null && chatMessageObject2.getImage().length() > 1 && chatMessageObject2.getImage().indexOf(44) > 0) {
                byte[] bArrDecode = Base64.decode(chatMessageObject2.getImage().substring(chatMessageObject2.getImage().indexOf(44)), 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                if (this.jl) {
                    chatroomImageViewHolder4.imageView_image.getLayoutParams().height = 50;
                } else {
                    chatroomImageViewHolder4.imageView_image.getLayoutParams().height = -2;
                }
                chatroomImageViewHolder4.imageView_image.setImageBitmap(bitmapDecodeByteArray);
            } else {
                chatroomImageViewHolder4.imageView_image.setVisibility(8);
            }
            Picasso.with(this.context).load(avatar).placeholder(R.drawable.placeholder_avatar_2).into(chatroomImageViewHolder4.imageView_avatar);
            return;
        }
        if (viewHolder instanceof ChatroomAudioViewHolder) {
            ChatMessageObject chatMessageObject3 = (ChatMessageObject) this.ja.get(i);
            if (chatMessageObject3.event_icon != null && !chatMessageObject3.event_icon.equalsIgnoreCase("")) {
                ChatroomAudioViewHolder chatroomAudioViewHolder = (ChatroomAudioViewHolder) viewHolder;
                chatroomAudioViewHolder.imageView_verified.setVisibility(0);
                Picasso.with(this.context).load(chatMessageObject3.event_icon).into(chatroomAudioViewHolder.imageView_verified);
            } else if (chatMessageObject3.getCharacter() != null && !chatMessageObject3.getCharacter().equalsIgnoreCase("")) {
                ChatroomAudioViewHolder chatroomAudioViewHolder2 = (ChatroomAudioViewHolder) viewHolder;
                chatroomAudioViewHolder2.imageView_verified.setVisibility(0);
                Picasso.with(this.context).load(chatMessageObject3.getCharacter()).into(chatroomAudioViewHolder2.imageView_verified);
            } else if (chatMessageObject3.isVerified()) {
                ChatroomAudioViewHolder chatroomAudioViewHolder3 = (ChatroomAudioViewHolder) viewHolder;
                chatroomAudioViewHolder3.imageView_verified.setVisibility(0);
                chatroomAudioViewHolder3.imageView_verified.setImageResource(R.drawable.verified_icon_fill);
            } else {
                ((ChatroomAudioViewHolder) viewHolder).imageView_verified.setVisibility(8);
            }
            if (chatMessageObject3.getActivationDate() != null && chatMessageObject3.getActivationDate().length() > 0) {
                ((ChatroomAudioViewHolder) viewHolder).imageView_avatar.setBorderColorResource(R.color.colorPrimary);
            } else {
                ((ChatroomAudioViewHolder) viewHolder).imageView_avatar.setBorderColorResource(R.color.grayLight);
            }
            ChatroomAudioViewHolder chatroomAudioViewHolder4 = (ChatroomAudioViewHolder) viewHolder;
            chatroomAudioViewHolder4.textView_level.setText("Lv." + chatMessageObject3.getLevel());
            chatroomAudioViewHolder4.textView_name.setText(chatMessageObject3.getName());
            chatroomAudioViewHolder4.textView_title.setText(chatMessageObject3.getTitle());
            if (this.jk) {
                chatroomAudioViewHolder4.textView_timestamp.setVisibility(0);
                chatroomAudioViewHolder4.textView_timestamp.setText("" + chatMessageObject3.getPlatform() + " " + DateFormat.format("hh:mm:ss", new Date(System.currentTimeMillis())).toString());
            } else {
                chatroomAudioViewHolder4.textView_timestamp.setVisibility(8);
            }
            Picasso.with(this.context).load(avatar).placeholder(R.drawable.placeholder_avatar_2).into(chatroomAudioViewHolder4.imageView_avatar);
            return;
        }
        if (viewHolder instanceof ChatroomConnectionViewHolder) {
            ChatMessageObject chatMessageObject4 = (ChatMessageObject) this.ja.get(i);
            ((ChatroomConnectionViewHolder) viewHolder).textView_connection.setText(chatMessageObject4.getMessage() + "");
            return;
        }
        if (viewHolder instanceof ChatroomSystemNotificationViewHolder) {
            ChatSystemObject chatSystemObject = (ChatSystemObject) this.ja.get(i);
            ((ChatroomSystemNotificationViewHolder) viewHolder).textView_notification.setText(chatSystemObject.getMessage() + "");
            return;
        }
        if (viewHolder instanceof ChatroomAdsViewHolder) {
            if (this.jk) {
                ChatroomAdsViewHolder chatroomAdsViewHolder = (ChatroomAdsViewHolder) viewHolder;
                chatroomAdsViewHolder.textView_timestamp.setVisibility(0);
                chatroomAdsViewHolder.textView_timestamp.setText("" + DateFormat.format("hh:mm:ss", new Date(System.currentTimeMillis())).toString());
                return;
            }
            ((ChatroomAdsViewHolder) viewHolder).textView_timestamp.setVisibility(8);
            return;
        }
        if (viewHolder instanceof ChatroomBroadcastAdsViewHolder) {
            ChatMessageObject chatMessageObject5 = (ChatMessageObject) this.ja.get(i);
            if (chatMessageObject5.event_icon != null && !chatMessageObject5.event_icon.equalsIgnoreCase("")) {
                ChatroomBroadcastAdsViewHolder chatroomBroadcastAdsViewHolder = (ChatroomBroadcastAdsViewHolder) viewHolder;
                chatroomBroadcastAdsViewHolder.imageView_verified.setVisibility(0);
                Picasso.with(this.context).load(chatMessageObject5.event_icon).into(chatroomBroadcastAdsViewHolder.imageView_verified);
            } else if (chatMessageObject5.getCharacter() != null && !chatMessageObject5.getCharacter().equalsIgnoreCase("")) {
                ChatroomBroadcastAdsViewHolder chatroomBroadcastAdsViewHolder2 = (ChatroomBroadcastAdsViewHolder) viewHolder;
                chatroomBroadcastAdsViewHolder2.imageView_verified.setVisibility(0);
                Picasso.with(this.context).load(chatMessageObject5.getCharacter()).into(chatroomBroadcastAdsViewHolder2.imageView_verified);
            } else if (chatMessageObject5.isVerified()) {
                ChatroomBroadcastAdsViewHolder chatroomBroadcastAdsViewHolder3 = (ChatroomBroadcastAdsViewHolder) viewHolder;
                chatroomBroadcastAdsViewHolder3.imageView_verified.setVisibility(0);
                chatroomBroadcastAdsViewHolder3.imageView_verified.setImageResource(R.drawable.verified_icon_fill);
            } else {
                ((ChatroomBroadcastAdsViewHolder) viewHolder).imageView_verified.setVisibility(8);
            }
            if (chatMessageObject5.getActivationDate() != null && chatMessageObject5.getActivationDate().length() > 0) {
                ((ChatroomBroadcastAdsViewHolder) viewHolder).imageView_avatar.setBorderColorResource(R.color.colorPrimary);
            } else {
                ((ChatroomBroadcastAdsViewHolder) viewHolder).imageView_avatar.setBorderColorResource(R.color.grayLight);
            }
            ChatroomBroadcastAdsViewHolder chatroomBroadcastAdsViewHolder4 = (ChatroomBroadcastAdsViewHolder) viewHolder;
            chatroomBroadcastAdsViewHolder4.textView_level.setText("Lv." + chatMessageObject5.getLevel());
            chatroomBroadcastAdsViewHolder4.textView_name.setText(chatMessageObject5.getName());
            chatroomBroadcastAdsViewHolder4.textView_title.setText(chatMessageObject5.getTitle());
            if (this.jk) {
                chatroomBroadcastAdsViewHolder4.textView_timestamp.setVisibility(0);
                chatroomBroadcastAdsViewHolder4.textView_timestamp.setText("" + chatMessageObject5.getPlatform() + " " + DateFormat.format("hh:mm:ss", new Date(System.currentTimeMillis())).toString());
            } else {
                chatroomBroadcastAdsViewHolder4.textView_timestamp.setVisibility(8);
            }
            if (chatMessageObject5.getImage() != null && chatMessageObject5.getImage().length() > 1) {
                Picasso.with(this.context).load(chatMessageObject5.getImage()).placeholder(R.drawable.placeholder_avatar_2).into(chatroomBroadcastAdsViewHolder4.imageView_image);
                chatroomBroadcastAdsViewHolder4.imageView_image.setVisibility(0);
            } else {
                chatroomBroadcastAdsViewHolder4.imageView_image.setVisibility(8);
            }
            if (chatMessageObject5.getMessage() != null && chatMessageObject5.getMessage().length() > 1) {
                chatroomBroadcastAdsViewHolder4.textView_message.setText(chatMessageObject5.getMessage() + "");
                chatroomBroadcastAdsViewHolder4.textView_message.setVisibility(0);
            } else {
                chatroomBroadcastAdsViewHolder4.textView_message.setVisibility(8);
            }
            Picasso.with(this.context).load(avatar).placeholder(R.drawable.placeholder_avatar_2).into(chatroomBroadcastAdsViewHolder4.imageView_avatar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.ja != null && this.ja.size() > i) {
            if (this.ja.get(i) instanceof ChatSystemObject) {
                return 12;
            }
            if (this.ja.get(i) instanceof ChatMessageObject) {
                return ((ChatMessageObject) this.ja.get(i)).getType();
            }
            return super.getItemViewType(i);
        }
        return super.getItemViewType(i);
    }

    public void n(boolean z) {
        this.jk = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.ja == null) {
            return 0;
        }
        return this.ja.size();
    }

    public void o(boolean z) {
        this.jl = z;
    }

    public void p(boolean z) {
        this.jm = z;
    }

    public void a(TextView textView, String[] strArr, String str) {
        textView.setText("");
        int i = 0;
        while (i < str.length()) {
            int i2 = i + 1;
            if (i2 < str.length() && (str.charAt(i) == 55356 || str.charAt(i) == 55357)) {
                f.D(TAG, "Found emoji at index " + i);
                String strSubstring = str.substring(i, i + 2);
                SpannableString spannableString = new SpannableString(strSubstring + "");
                spannableString.setSpan(new ForegroundColorSpan(x(Color.parseColor(strArr[i % strArr.length]))), 0, spannableString.length(), 33);
                textView.append(strSubstring);
                i = i2;
            } else {
                SpannableString spannableString2 = new SpannableString(str.charAt(i) + "");
                str.charAt(i);
                spannableString2.setSpan(new ForegroundColorSpan(x(Color.parseColor(strArr[i % strArr.length]))), 0, spannableString2.length(), 33);
                textView.append(spannableString2);
            }
            i++;
        }
    }

    public int x(int i) {
        int iAf = e.af(this.context);
        int i2 = 255 - iAf;
        int iRed = Color.red(i);
        int iGreen = Color.green(i);
        int iBlue = Color.blue(i);
        if (e.al(this.context) == 0) {
            if (iRed <= i2 || iGreen <= i2 || iBlue <= i2) {
                return i;
            }
            int i3 = iRed - i2;
            int i4 = iGreen - i2;
            int i5 = iBlue - i2;
            f.D(TAG, "change color = " + i3 + " " + i4 + " " + i5);
            return Color.argb(255, i3, i4, i5);
        }
        if (e.al(this.context) != 1 || iRed >= iAf || iGreen >= iAf || iBlue >= iAf) {
            return i;
        }
        int i6 = iRed + i2;
        int i7 = iGreen + i2;
        int i8 = iBlue + i2;
        f.D(TAG, "change color = " + i6 + " " + i7 + " " + i8);
        return Color.argb(255, i6, i7, i8);
    }
}
