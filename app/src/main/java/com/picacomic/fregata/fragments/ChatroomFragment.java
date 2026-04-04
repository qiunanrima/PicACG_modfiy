package com.picacomic.fregata.fragments;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaPlayer;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Environment;
import android.speech.tts.TextToSpeech;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.appcompat.widget.Toolbar;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.util.Base64;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import butterknife.BindView;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.a;
import com.picacomic.fregata.activities.BaseActivity;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.adapters.ChatroomRecyclerViewAdapter;
import com.picacomic.fregata.adapters.b;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.objects.AtMeObject;
import com.picacomic.fregata.objects.ChatBaseObject;
import com.picacomic.fregata.objects.ChatMessageObject;
import com.picacomic.fregata.objects.ChatSystemObject;
import com.picacomic.fregata.objects.ChatroomToObject;
import com.picacomic.fregata.objects.UserProfileObject;
import com.picacomic.fregata.objects.chatroomObjects.ChangeTitleAction;
import com.picacomic.fregata.objects.chatroomObjects.ChatroomSystemAction;
import com.picacomic.fregata.objects.chatroomObjects.ImageAction;
import com.picacomic.fregata.objects.chatroomObjects.MuteAction;
import com.picacomic.fregata.objects.chatroomObjects.SetAvatarAction;
import com.picacomic.fregata.objects.chatroomObjects.SetAvatarExtraAction;
import com.picacomic.fregata.objects.chatroomObjects.TimeAction;
import com.picacomic.fregata.objects.requests.UpdateUserTitleBody;
import com.picacomic.fregata.objects.responses.ChatroomBlacklistObject;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.objects.responses.RegisterResponse;
import com.picacomic.fregata.objects.responses.UserProfileResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.AlertDialogCenter;
import com.squareup.picasso.Picasso;
import io.socket.client.d;
import java.io.IOException;
import java.lang.reflect.Type;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomFragment extends BaseImagePickFragment implements TextToSpeech.OnInitListener, a {
    public static final String TAG = "ChatroomFragment";
    ArrayList<ChatBaseObject> arrayList;

    @BindView(R.id.button_chat_channel_private)
    Button button_channelPrivate;

    @BindView(R.id.button_chat_channel_public)
    Button button_channelPublic;

    @BindView(R.id.button_chat_control_ai_mode)
    Button button_controlAI;

    @BindView(R.id.button_chat_control_change_title)
    Button button_controlChangeTitle;

    @BindView(R.id.button_chat_control_hide_avatar)
    Button button_controlHideAvatar;

    @BindView(R.id.button_chat_control_hide_panel_buttons)
    Button button_controlHidePanelButtons;

    @BindView(R.id.button_chat_control_image)
    Button button_controlImage;

    @BindView(R.id.button_chat_control_mute)
    Button button_controlMute;

    @BindView(R.id.button_chat_control_time)
    Button button_controlTime;

    @BindView(R.id.button_chat_popup_save_image)
    Button button_saveImage;

    @BindView(R.id.button_chat_send)
    Button button_sendMessage;

    @BindView(R.id.button_chat_view_profile)
    Button button_viewProfile;
    CountDownTimer countDownTimer;

    @BindView(R.id.editText_chat_textbox)
    EditText editText_textbox;

    @BindView(R.id.fab_command)
    FloatingActionButton fab_command;

    @BindView(R.id.frameLayout_chat_channel_indicator)
    FrameLayout frameLayout_channelIndicator;

    @BindView(R.id.frameLayout_chat_online_count_background)
    FrameLayout frameLayout_chatOnlineCountBackground;

    @BindView(R.id.frameLayout_chat_online_count_container)
    FrameLayout frameLayout_chatOnlineCountContainer;

    @BindView(R.id.frameLayout_game_container)
    FrameLayout frameLayout_container;

    @BindView(R.id.frameLayout_night_mode)
    FrameLayout frameLayout_nightMode;

    @BindView(R.id.gridView_chat_emoji_list)
    GridView gridView_emojiList;
    Gson gson;
    RelativeLayout.LayoutParams iI;
    private int iJ;
    private int iK;
    boolean iN;

    @BindView(R.id.imageButton_chat_close_popup)
    ImageButton imageButton_closePopup;

    @BindView(R.id.imageButton_chat_hide_channel)
    ImageButton imageButton_hideChannel;

    @BindView(R.id.imageButton_chat_audio)
    ImageButton imageButton_sendAudio;

    @BindView(R.id.imageButton_chat_send_emoji)
    ImageButton imageButton_sendEmoji;

    @BindView(R.id.imageButton_chat_send_image)
    ImageButton imageButton_sendImage;

    @BindView(R.id.imageButton_chat_setting)
    ImageButton imageButton_setting;

    @BindView(R.id.imageView_chat_large_image)
    ImageView imageView_largeImage;
    LinearLayoutManager jQ;
    UserProfileObject jW;
    Call<GeneralResponse<UserProfileResponse>> jX;
    private d jZ;
    CountDownTimer kY;
    boolean lA;
    int lB;
    int lC;
    ChatroomToObject lD;
    ChatroomGameFragment lE;
    ArrayList<AtMeObject> lF;
    ArrayList<ChatroomBlacklistObject> lG;
    TextToSpeech lH;
    boolean lI;
    boolean lJ;
    boolean lK;
    Timer lX;
    long lb;
    long lc;
    CountDownTimer ld;
    ChatroomRecyclerViewAdapter le;
    b lf;
    Call<RegisterResponse> lg;
    CountDownTimer lh;
    CountDownTimer li;

    @BindView(R.id.linearLayout_chat_channel)
    LinearLayout linearLayout_chatChannel;

    @BindView(R.id.linearLayout_chat_control_panel)
    LinearLayout linearLayout_controlPanel;

    @BindView(R.id.linearLayout_chat_control_panel_buttons)
    LinearLayout linearLayout_controlPanelButtons;
    CountDownTimer lj;
    CountDownTimer lk;
    Bitmap ll;
    String lm;
    String ln;
    String lo;
    int lr;
    String lw;
    boolean lx;
    boolean ly;
    boolean lz;

    @BindView(R.id.recyclerView_chat)
    RecyclerView recyclerView_chat;

    @BindView(R.id.relativeLayout_chat_popup)
    RelativeLayout relativeLayout_popup;

    @BindView(R.id.textView_chat_at_list)
    TextView textView_atList;

    @BindView(R.id.textView_chat_audio_playing_timer)
    TextView textView_audioPlayingTimer;

    @BindView(R.id.textView_chat_online_count)
    TextView textView_chatOnlineCount;

    @BindView(R.id.textView_chat_online_count_title)
    TextView textView_chatOnlineCountTitle;

    @BindView(R.id.textView_chat_reply)
    TextView textView_reply;

    @BindView(R.id.textView_chat_toast_at_me)
    TextView textView_toastAtMe;

    @BindView(R.id.textView_chat_toast_msg)
    TextView textView_toastMsg;

    @BindView(R.id.textView_chat_total_user_count)
    TextView textView_totalUserCount;

    @BindView(R.id.toolbar)
    Toolbar toolbar;
    public int kW = 100;

    @Deprecated
    public int kX = 30;
    long iL = 0;
    String kZ = "https://chat.picacomic.com";
    private MediaRecorder la = null;
    private MediaPlayer ii = null;
    String[] lp = null;
    String lq = null;
    String at = "";
    String lt = "";
    String reply = "";
    String lu = "";
    String lv = null;
    private io.socket.b.a.a lL = new io.socket.b.a.a() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.28
        @Override // io.socket.b.a.a
        public void a(final Object... objArr) {
            ChatroomFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.28.1
                @Override // java.lang.Runnable
                public void run() {
                    if (ChatroomFragment.this.gson == null) {
                        ChatroomFragment.this.gson = new Gson();
                    }
                    JSONObject jSONObject = (JSONObject) objArr[0];
                    try {
                        String string = jSONObject.has("user_id") ? jSONObject.getString("user_id") : "";
                        String string2 = jSONObject.has("title") ? jSONObject.getString("title") : "";
                        if (ChatroomFragment.this.jW == null || !ChatroomFragment.this.jW.getUserId().equalsIgnoreCase(string)) {
                            return;
                        }
                        ChatroomFragment.this.jW.setTitle(string2);
                        f.D(ChatroomFragment.TAG, "Testing HERE ID= " + string + "  title = " + string2);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    };
    private io.socket.b.a.a lM = new io.socket.b.a.a() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.29
        @Override // io.socket.b.a.a
        public void a(final Object... objArr) {
            ChatroomFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.29.1
                @Override // java.lang.Runnable
                public void run() {
                    JSONArray jSONArray;
                    if (ChatroomFragment.this.gson == null) {
                        ChatroomFragment.this.gson = new Gson();
                    }
                    JSONObject jSONObject = (JSONObject) objArr[0];
                    try {
                        if (jSONObject.has("avatar")) {
                            jSONObject.getString("avatar");
                        }
                        String[] strArr = null;
                        String string = jSONObject.has("name") ? jSONObject.getString("name") : null;
                        String string2 = jSONObject.has("character") ? jSONObject.getString("character") : null;
                        String string3 = jSONObject.has("title") ? jSONObject.getString("title") : null;
                        int i = jSONObject.has("level") ? jSONObject.getInt("level") : 0;
                        String string4 = jSONObject.has("event_icon") ? jSONObject.getString("event_icon") : null;
                        if (jSONObject.has("event_colors") && (jSONArray = jSONObject.getJSONArray("event_colors")) != null && jSONArray.length() > 0) {
                            strArr = new String[jSONArray.length()];
                            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                                strArr[i2] = jSONArray.getString(i2);
                            }
                        }
                        if (ChatroomFragment.this.jW != null) {
                            ChatroomFragment.this.lm = string;
                            ChatroomFragment.this.lo = string2;
                            ChatroomFragment.this.ln = string3;
                            ChatroomFragment.this.lr = i;
                            ChatroomFragment.this.lq = string4;
                            ChatroomFragment.this.lp = strArr;
                            if (string != null) {
                                ChatroomFragment.this.jW.setName(string);
                            }
                            if (string2 != null) {
                                ChatroomFragment.this.jW.setCharacter(string2);
                            }
                            if (string3 != null) {
                                ChatroomFragment.this.jW.setTitle(string3);
                            }
                            if (i > 0) {
                                ChatroomFragment.this.jW.setLevel(i);
                            }
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    };
    private io.socket.b.a.a kd = new io.socket.b.a.a() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.30
        @Override // io.socket.b.a.a
        public void a(Object... objArr) {
            ChatroomFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.30.1
                @Override // java.lang.Runnable
                public void run() {
                    f.D(ChatroomFragment.TAG, "Testing INIT");
                    ChatroomFragment.this.jZ.b("init", ChatroomFragment.this.gson.toJson(ChatroomFragment.this.jW, UserProfileObject.class));
                }
            });
        }
    };
    private io.socket.b.a.a lN = new io.socket.b.a.a() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.31
        @Override // io.socket.b.a.a
        public void a(final Object... objArr) {
            ChatroomFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.31.1
                @Override // java.lang.Runnable
                public void run() {
                    f.D(ChatroomFragment.TAG, "Testing KICK");
                    if (ChatroomFragment.this.gson == null) {
                        ChatroomFragment.this.gson = new Gson();
                    }
                    JSONObject jSONObject = (JSONObject) objArr[0];
                    try {
                        String string = jSONObject.has("message") ? jSONObject.getString("message") : "";
                        Toast.makeText(ChatroomFragment.this.getContext(), string + "", 1).show();
                        ChatroomFragment.this.onDetach();
                        ChatroomFragment.this.getFragmentManager().popBackStack();
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    };
    private io.socket.b.a.a lO = new io.socket.b.a.a() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.32
        @Override // io.socket.b.a.a
        public void a(final Object... objArr) {
            ChatroomFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.32.1
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject = (JSONObject) objArr[0];
                    f.D(ChatroomFragment.TAG, "ReceiveNotification: " + jSONObject.toString());
                    try {
                        ChatroomFragment.this.Q(jSONObject.has("message") ? jSONObject.getString("message") : null);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    };
    private io.socket.b.a.a lP = new io.socket.b.a.a() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.33
        @Override // io.socket.b.a.a
        public void a(final Object... objArr) {
            ChatroomFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.33.1
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject = (JSONObject) objArr[0];
                    try {
                        ChatroomFragment.this.R(jSONObject.has("connections") ? jSONObject.getString("connections") : "");
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    };
    private io.socket.b.a.a lQ = new io.socket.b.a.a() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.35
        @Override // io.socket.b.a.a
        public void a(final Object... objArr) {
            ChatroomFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.35.1
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject = (JSONObject) objArr[0];
                    try {
                        ChatroomFragment.this.S(jSONObject.has("connections") ? jSONObject.getString("connections") : "");
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    };
    private io.socket.b.a.a lR = new io.socket.b.a.a() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.36
        @Override // io.socket.b.a.a
        public void a(final Object... objArr) {
            ChatroomFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.36.1
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject = (JSONObject) objArr[0];
                    try {
                        if (jSONObject.has("character")) {
                            ChatroomFragment.this.lv = jSONObject.getString("character");
                        }
                        if (ChatroomFragment.this.jW == null || ChatroomFragment.this.lv == null || ChatroomFragment.this.lv.equalsIgnoreCase("")) {
                            return;
                        }
                        ChatroomFragment.this.jW.setCharacter(ChatroomFragment.this.lv);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    };
    private io.socket.b.a.a lS = new io.socket.b.a.a() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.37
        @Override // io.socket.b.a.a
        public void a(final Object... objArr) {
            ChatroomFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.37.1
                @Override // java.lang.Runnable
                public void run() {
                    ChatMessageObject chatMessageObjectA = ChatroomFragment.this.a((JSONObject) objArr[0], 0);
                    if (chatMessageObjectA == null) {
                        return;
                    }
                    ChatroomFragment.this.a(chatMessageObjectA);
                }
            });
        }
    };
    private io.socket.b.a.a lT = new io.socket.b.a.a() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.38
        @Override // io.socket.b.a.a
        public void a(final Object... objArr) {
            ChatroomFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.38.1
                @Override // java.lang.Runnable
                public void run() {
                    ChatMessageObject chatMessageObjectA = ChatroomFragment.this.a((JSONObject) objArr[0], 11);
                    if (chatMessageObjectA == null) {
                        return;
                    }
                    ChatroomFragment.this.b(chatMessageObjectA);
                }
            });
        }
    };
    private io.socket.b.a.a lU = new io.socket.b.a.a() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.39
        @Override // io.socket.b.a.a
        public void a(final Object... objArr) {
            ChatroomFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.39.1
                @Override // java.lang.Runnable
                public void run() {
                    String[] strArr;
                    JSONArray jSONArray;
                    JSONObject jSONObject = (JSONObject) objArr[0];
                    ChatroomToObject chatroomToObject = new ChatroomToObject("", "", "");
                    try {
                        String string = jSONObject.has("id") ? jSONObject.getString("id") : "";
                        if (jSONObject.has("userId")) {
                            string = jSONObject.getString("userId");
                        }
                        String string2 = jSONObject.has("user_id") ? jSONObject.getString("user_id") : string;
                        String string3 = jSONObject.has("unique_id") ? jSONObject.getString("unique_id") : "";
                        int i = jSONObject.has("level") ? jSONObject.getInt("level") : 0;
                        String string4 = jSONObject.has("avatar") ? jSONObject.getString("avatar") : "";
                        String string5 = jSONObject.getString("name");
                        String string6 = jSONObject.has("title") ? jSONObject.getString("title") : "";
                        String string7 = jSONObject.has("message") ? jSONObject.getString("message") : "";
                        boolean z = jSONObject.has("verified") ? jSONObject.getBoolean("verified") : false;
                        String string8 = jSONObject.has("gender") ? jSONObject.getString("gender") : "";
                        String string9 = jSONObject.has("platform") ? jSONObject.getString("platform") : "";
                        String string10 = jSONObject.has("activation_date") ? jSONObject.getString("activation_date") : null;
                        if (jSONObject.has("activationDate")) {
                            string10 = jSONObject.getString("activationDate");
                        }
                        String str = string10;
                        String string11 = jSONObject.has("at") ? jSONObject.getString("at") : "";
                        String string12 = jSONObject.has("reply_name") ? jSONObject.getString("reply_name") : "";
                        String string13 = jSONObject.has("reply") ? jSONObject.getString("reply") : "";
                        String string14 = jSONObject.has("email") ? jSONObject.getString("email") : "";
                        String string15 = jSONObject.has("block_user_id") ? jSONObject.getString("block_user_id") : "";
                        if (jSONObject.has("to")) {
                            JSONObject jSONObject2 = jSONObject.getJSONObject("to");
                            if (jSONObject2.has("name")) {
                                chatroomToObject.setName(jSONObject2.getString("name"));
                            }
                            if (jSONObject2.has("unique_id")) {
                                chatroomToObject.setName(jSONObject2.getString("unique_id"));
                            }
                            if (jSONObject2.has("user_id")) {
                                chatroomToObject.setName(jSONObject2.getString("user_id"));
                            }
                        }
                        String string16 = jSONObject.has("event_icon") ? jSONObject.getString("event_icon") : null;
                        if (!jSONObject.has("event_colors") || (jSONArray = jSONObject.getJSONArray("event_colors")) == null || jSONArray.length() <= 0) {
                            strArr = null;
                        } else {
                            String[] strArr2 = new String[jSONArray.length()];
                            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                                strArr2[i2] = jSONArray.getString(i2);
                            }
                            strArr = strArr2;
                        }
                        ChatroomFragment.this.a(string2, string3, i, string14, string4, string5, string6, string8, string9, str, string11, string12, string13, string7, string15, false, z, jSONObject.has("character") ? jSONObject.getString("character") : null, chatroomToObject, string16, strArr);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    };
    private io.socket.b.a.a lV = new io.socket.b.a.a() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.40
        @Override // io.socket.b.a.a
        public void a(final Object... objArr) {
            ChatroomFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.40.1
                @Override // java.lang.Runnable
                public void run() {
                    ChatMessageObject chatMessageObjectA = ChatroomFragment.this.a((JSONObject) objArr[0], 1);
                    if (chatMessageObjectA == null) {
                        return;
                    }
                    ChatroomFragment.this.c(chatMessageObjectA);
                }
            });
        }
    };
    private io.socket.b.a.a lW = new io.socket.b.a.a() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.41
        @Override // io.socket.b.a.a
        public void a(final Object... objArr) {
            ChatroomFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.41.1
                @Override // java.lang.Runnable
                public void run() {
                    ChatMessageObject chatMessageObjectA = ChatroomFragment.this.a((JSONObject) objArr[0], 2);
                    if (chatMessageObjectA == null) {
                        return;
                    }
                    ChatroomFragment.this.d(chatMessageObjectA);
                }
            });
        }
    };
    private final String mFileName = Environment.getExternalStorageDirectory().getAbsolutePath() + "/audiorecordtest.3gp";
    int ls = 0;

    @Deprecated
    public void cu() {
    }

    public static ChatroomFragment M(String str) {
        ChatroomFragment chatroomFragment = new ChatroomFragment();
        Bundle bundle = new Bundle();
        bundle.putString("KEY_CHATROOM_URL", str);
        chatroomFragment.setArguments(bundle);
        return chatroomFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            io.socket.client.b.a aVar = new io.socket.client.b.a();
            aVar.yT = new String[]{"websocket"};
            try {
                try {
                    this.jZ = io.socket.client.b.a(getArguments().getString("KEY_CHATROOM_URL", "https://chat.picacomic.com"), aVar);
                } catch (URISyntaxException unused) {
                    this.jZ = io.socket.client.b.a("https://chat.picacomic.com", aVar);
                }
            } catch (URISyntaxException unused2) {
            }
            this.jZ.a("broadcast_message", this.lS);
            this.jZ.a("broadcast_image", this.lV);
            this.jZ.a("broadcast_audio", this.lW);
            this.jZ.a("new_connection", this.lP);
            this.jZ.a("connection_close", this.lQ);
            this.jZ.a("got_private_message", this.lU);
            this.jZ.a("change_character_icon", this.lR);
            this.jZ.a("broadcast_ads", this.lT);
            this.jZ.a("change_title", this.lL);
            this.jZ.a("receive_notification", this.lO);
            this.jZ.a("kick", this.lN);
            this.jZ.a("set_profile", this.lM);
            this.jZ.a("connect", this.kd);
            this.jZ.eJ();
        }
        this.kv = 2;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_chat, viewGroup, false);
        a(viewInflate);
        this.lE = new ChatroomGameFragment();
        return viewInflate;
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        if (this.lH == null) {
            this.lH = new TextToSpeech(getActivity(), this);
        }
        this.lJ = false;
        e.k(getContext(), false);
        this.lK = true;
        this.lI = true;
        this.iN = false;
        this.lx = false;
        this.ly = false;
        this.lz = true;
        this.lB = -1;
        this.lC = -1;
        e.t(getContext(), "");
        a(this.toolbar, R.string.title_chatroom, true);
        this.lF = new ArrayList<>();
        this.arrayList = new ArrayList<>();
        this.jQ = new LinearLayoutManager(getContext(), 1, true);
        this.le = new ChatroomRecyclerViewAdapter(getActivity(), this.arrayList, this);
        this.recyclerView_chat.setLayoutManager(this.jQ);
        this.recyclerView_chat.setAdapter(this.le);
        this.lf = new com.picacomic.fregata.adapters.b(getActivity());
        this.gridView_emojiList.setAdapter((ListAdapter) this.lf);
        this.gson = new Gson();
        String strAe = e.ae(getContext());
        if (strAe != null) {
            this.lG = (ArrayList) this.gson.fromJson(strAe, new TypeToken<List<ChatroomBlacklistObject>>() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.1
            }.getType());
        } else {
            this.lG = new ArrayList<>();
        }
    }

    /* JADX WARN: Type inference failed for: r9v0, types: [com.picacomic.fregata.fragments.ChatroomFragment$12] */
    public void b(final int i, final String str) {
        if (this.countDownTimer != null) {
            this.countDownTimer.cancel();
        }
        if (this.jW != null) {
            this.jZ.b("send_message", this.gson.toJson(new ChatMessageObject(this.jW.getUserId(), "", this.jW.getLevel(), this.jW.getEmail(), g.b(this.jW.getAvatar()), this.jW.getName(), this.jW.getTitle(), this.jW.getGender(), "android", this.jW.getActivationDate(), this.at, this.lt, this.reply, "##server talk @" + str, "", "", this.lu, 3, this.jW.isVerified(), this.jW.getCharacter(), this.jW.getCharactersStringArray(), null, null), ChatMessageObject.class));
        }
        int i2 = i * 1000;
        if (i2 > 0) {
            long j = i2;
            this.countDownTimer = new CountDownTimer(j, j) { // from class: com.picacomic.fregata.fragments.ChatroomFragment.12
                @Override // android.os.CountDownTimer
                public void onTick(long j2) {
                }

                @Override // android.os.CountDownTimer
                public void onFinish() {
                    ChatroomFragment.this.b(i, str);
                }
            }.start();
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.iI = new RelativeLayout.LayoutParams(-2, -2);
        this.fab_command.setLayoutParams(this.iI);
        this.fab_command.setOnTouchListener(new View.OnTouchListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.23
            int iR;
            int iS;
            boolean iT;

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int rawX = (int) motionEvent.getRawX();
                int rawY = (int) motionEvent.getRawY();
                switch (motionEvent.getAction()) {
                    case 0:
                        this.iR = rawX;
                        this.iS = rawY;
                        this.iT = true;
                        ChatroomFragment.this.iL = System.currentTimeMillis();
                        ChatroomFragment.this.iJ = rawX - ChatroomFragment.this.iI.leftMargin;
                        ChatroomFragment.this.iK = rawY - ChatroomFragment.this.iI.topMargin;
                        return true;
                    case 1:
                        ChatroomFragment.this.fab_command.setLayoutParams(ChatroomFragment.this.iI);
                        if (System.currentTimeMillis() - ChatroomFragment.this.iL < 500 && this.iT) {
                            ChatroomFragment.this.editText_textbox.setText("@指令");
                            ChatroomFragment.this.cr();
                        }
                        return true;
                    case 2:
                        if (Math.abs(this.iR - rawX) < 10 && Math.abs(this.iS - rawY) < 10) {
                            this.iT = true;
                        } else {
                            this.iT = false;
                        }
                        ChatroomFragment.this.iI.leftMargin = rawX - ChatroomFragment.this.iJ;
                        ChatroomFragment.this.iI.topMargin = rawY - ChatroomFragment.this.iK;
                        ChatroomFragment.this.fab_command.setLayoutParams(ChatroomFragment.this.iI);
                        return true;
                    default:
                        return true;
                }
            }
        });
        this.gridView_emojiList.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.34
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                ChatroomFragment.this.editText_textbox.append(g.ae(ChatroomFragment.this.lf.jK[i]));
            }
        });
        this.editText_textbox.addTextChangedListener(new TextWatcher() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.45
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (charSequence.length() > 0) {
                    if (ChatroomFragment.this.button_sendMessage.getVisibility() == 8) {
                        ChatroomFragment.this.imageButton_sendAudio.setVisibility(8);
                        ChatroomFragment.this.button_sendMessage.setVisibility(0);
                        return;
                    }
                    return;
                }
                if (ChatroomFragment.this.imageButton_sendAudio.getVisibility() == 8) {
                    ChatroomFragment.this.imageButton_sendAudio.setVisibility(0);
                    ChatroomFragment.this.button_sendMessage.setVisibility(8);
                }
            }
        });
        this.button_sendMessage.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.56
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChatroomFragment.this.V(ChatroomFragment.this.editText_textbox.getText().toString())) {
                    return;
                }
                if (ChatroomFragment.this.lD == null) {
                    ChatroomFragment.this.cr();
                } else {
                    ChatroomFragment.this.cs();
                }
                if (ChatroomFragment.this.gridView_emojiList != null) {
                    ChatroomFragment.this.gridView_emojiList.setVisibility(8);
                }
                View currentFocus = ChatroomFragment.this.getActivity().getCurrentFocus();
                if (currentFocus != null) {
                    try {
                        ((InputMethodManager) ChatroomFragment.this.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        });
        this.imageButton_setting.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.67
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChatroomFragment.this.getContext() != null) {
                    AlertDialogCenter.showChatroomSettingDialog(ChatroomFragment.this.getContext(), ChatroomFragment.this.jW, new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.67.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            ChatroomFragment.this.cd();
                        }
                    }, new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.67.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            ChatroomFragment.this.cF();
                        }
                    });
                }
            }
        });
        this.imageButton_sendEmoji.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.70
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChatroomFragment.this.gridView_emojiList.getVisibility() == 0) {
                    ChatroomFragment.this.gridView_emojiList.setVisibility(8);
                } else {
                    ChatroomFragment.this.gridView_emojiList.setVisibility(0);
                }
            }
        });
        this.imageButton_sendImage.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.71
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChatroomFragment.this.gridView_emojiList != null) {
                    ChatroomFragment.this.gridView_emojiList.setVisibility(8);
                }
                ChatroomFragment.this.kv = 2;
                ChatroomFragment.this.cf();
            }
        });
        this.imageButton_sendAudio.setOnTouchListener(new View.OnTouchListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (ChatroomFragment.this.gridView_emojiList != null) {
                    ChatroomFragment.this.gridView_emojiList.setVisibility(8);
                }
                ((BaseActivity) ChatroomFragment.this.getActivity()).requestPermission();
                int iCheckSelfPermission = ContextCompat.checkSelfPermission(ChatroomFragment.this.getActivity(), "android.permission.WRITE_EXTERNAL_STORAGE");
                int iCheckSelfPermission2 = ContextCompat.checkSelfPermission(ChatroomFragment.this.getActivity(), "android.permission.RECORD_AUDIO");
                if (iCheckSelfPermission == 0 && iCheckSelfPermission2 == 0) {
                    switch (motionEvent.getAction()) {
                        case 0:
                            ChatroomFragment.this.editText_textbox.setText(R.string.chatroom_recording);
                            ChatroomFragment.this.lb = System.currentTimeMillis();
                            ChatroomFragment.this.t(true);
                            break;
                        case 1:
                            ChatroomFragment.this.editText_textbox.setText("");
                            ChatroomFragment.this.lc = System.currentTimeMillis();
                            ChatroomFragment.this.t(false);
                            break;
                    }
                    return true;
                }
                Toast.makeText(ChatroomFragment.this.getActivity(), "No Permission", 0).show();
                return true;
            }
        });
        this.button_saveImage.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChatroomFragment.this.ll != null) {
                    g.a(ChatroomFragment.this.getContext(), ChatroomFragment.this.ll);
                } else {
                    Toast.makeText(ChatroomFragment.this.getContext(), R.string.chatroom_image_cannot_save, 0).show();
                }
            }
        });
        this.imageButton_closePopup.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChatroomFragment.this.relativeLayout_popup.setVisibility(8);
                ChatroomFragment.this.ll = null;
            }
        });
        this.imageView_largeImage.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChatroomFragment.this.relativeLayout_popup.setVisibility(8);
                ChatroomFragment.this.ll = null;
            }
        });
        this.textView_toastMsg.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChatroomFragment.this.recyclerView_chat == null || ChatroomFragment.this.arrayList == null || ChatroomFragment.this.arrayList.size() <= 0) {
                    return;
                }
                ChatroomFragment.this.recyclerView_chat.scrollToPosition(0);
            }
        });
        this.textView_toastAtMe.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChatroomFragment.this.lF == null || ChatroomFragment.this.lF.size() <= 0) {
                    return;
                }
                if (ChatroomFragment.this.arrayList.size() - 1 > ChatroomFragment.this.lF.get(0).getIndex() && ChatroomFragment.this.lF.get(0).getIndex() >= 0) {
                    ChatroomFragment.this.recyclerView_chat.scrollToPosition(ChatroomFragment.this.lF.get(0).getIndex());
                    ChatroomFragment.this.lF.remove(0);
                    if (ChatroomFragment.this.lF.size() > 0) {
                        ChatroomFragment.this.co();
                        return;
                    } else {
                        ChatroomFragment.this.cp();
                        return;
                    }
                }
                ChatroomFragment.this.cp();
            }
        });
        this.textView_atList.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChatroomFragment.this.cz();
                if (ChatroomFragment.this.cB()) {
                    ChatroomFragment.this.lu = "";
                    ChatroomFragment.this.m(false);
                    ChatroomFragment.this.v(false);
                    ChatroomFragment.this.editText_textbox.setText("");
                }
            }
        });
        this.textView_reply.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChatroomFragment.this.cA();
            }
        });
        this.textView_audioPlayingTimer.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChatroomFragment.this.cx();
            }
        });
        this.button_controlTime.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChatroomFragment.this.T(ChatroomFragment.this.jW.getEmail());
            }
        });
        this.button_controlImage.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChatroomFragment.this.U(ChatroomFragment.this.jW.getEmail());
            }
        });
        this.button_controlHidePanelButtons.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChatroomFragment.this.linearLayout_controlPanelButtons.getVisibility() == 0) {
                    ChatroomFragment.this.linearLayout_controlPanelButtons.setVisibility(8);
                } else {
                    ChatroomFragment.this.linearLayout_controlPanelButtons.setVisibility(0);
                }
            }
        });
        this.button_controlMute.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChatroomFragment.this.cB()) {
                    ChatroomFragment.this.m(false);
                } else {
                    ChatroomFragment.this.m(true);
                }
            }
        });
        this.button_controlHideAvatar.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChatroomFragment.this.cC()) {
                    ChatroomFragment.this.v(false);
                } else {
                    ChatroomFragment.this.v(true);
                }
            }
        });
        this.button_viewProfile.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChatroomFragment.this.lw != null) {
                    ChatroomFragment.this.relativeLayout_popup.setVisibility(8);
                    ChatroomFragment.this.ll = null;
                    ChatroomFragment.this.E(ChatroomFragment.this.lw);
                }
            }
        });
        this.button_controlChangeTitle.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.18
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChatroomFragment.this.cD()) {
                    ChatroomFragment.this.w(false);
                } else {
                    ChatroomFragment.this.w(true);
                }
            }
        });
        this.button_controlAI.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.19
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChatroomFragment.this.countDownTimer != null) {
                    ChatroomFragment.this.countDownTimer.cancel();
                }
                ChatroomFragment.this.cE();
            }
        });
        this.textView_totalUserCount.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.20
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.button_channelPublic.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.21
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChatroomFragment.this.x(true);
            }
        });
        this.button_channelPrivate.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.22
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChatroomFragment.this.x(false);
            }
        });
        this.imageButton_hideChannel.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.24
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChatroomFragment.this.linearLayout_chatChannel.getVisibility() == 0) {
                    ChatroomFragment.this.imageButton_hideChannel.setImageResource(R.drawable.chatroom_channel_show);
                    ChatroomFragment.this.linearLayout_chatChannel.setVisibility(8);
                } else {
                    ChatroomFragment.this.imageButton_hideChannel.setImageResource(R.drawable.chatroom_channel_hide);
                    ChatroomFragment.this.linearLayout_chatChannel.setVisibility(0);
                }
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        if (getActivity() != null && (getParentFragment() == null || (!(getParentFragment() instanceof ChatroomContainerFragment) && !(getParentFragment() instanceof CustomPicaAppContainerFragment)))) {
            AlertDialogCenter.chatroomRules(getActivity());
        }
        if (getActivity() != null && (getActivity() instanceof MainActivity)) {
            ((MainActivity) getActivity()).t(8);
        }
        if (this.gson == null) {
            this.gson = new Gson();
        }
        String strB = e.B(getContext());
        if (strB != null) {
            this.jW = (UserProfileObject) this.gson.fromJson(strB, UserProfileObject.class);
            if (this.lv != null && !this.lv.equalsIgnoreCase("")) {
                this.jW.setCharacter(this.lv);
            }
        }
        cd();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
        if (this.jW != null) {
            cF();
            if (this.lv == null || this.lv.equalsIgnoreCase("")) {
                return;
            }
            this.jW.setCharacter(this.lv);
        }
    }

    public void N(String str) {
        if (this.textView_toastMsg != null) {
            this.textView_toastMsg.setText(str + "");
        }
        cn();
        this.lh = new CountDownTimer(5000L, 500L) { // from class: com.picacomic.fregata.fragments.ChatroomFragment.25
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                if (ChatroomFragment.this.textView_toastMsg != null) {
                    ChatroomFragment.this.textView_toastMsg.setVisibility(0);
                }
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                ChatroomFragment.this.cn();
            }
        };
        this.lh.start();
    }

    public void cn() {
        if (this.lh != null) {
            this.lh.cancel();
            this.lh = null;
        }
        if (this.textView_toastMsg != null) {
            this.textView_toastMsg.setVisibility(8);
        }
    }

    public void co() {
        f.D(TAG, "RUN SHOW TOAST AT ME");
        cp();
        if (this.textView_toastAtMe != null) {
            this.textView_toastAtMe.setVisibility(0);
            if (this.lF != null) {
                if (this.lF.size() > 1) {
                    this.textView_toastAtMe.setText(this.lF.size() + " 個人 " + getString(R.string.chatroom_at_me));
                } else if (this.jW != null && this.jW.getName() != null && this.lF.get(0).getName().equals(this.jW.getName())) {
                    this.textView_toastAtMe.setText(" " + getString(R.string.chatroom_reply_me));
                } else {
                    this.textView_toastAtMe.setText(this.lF.get(0).getName() + " " + getString(R.string.chatroom_at_me));
                }
            }
        }
        this.lj = new CountDownTimer(60000L, 1000L) { // from class: com.picacomic.fregata.fragments.ChatroomFragment.26
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                if (ChatroomFragment.this.textView_toastAtMe != null) {
                    ChatroomFragment.this.textView_toastAtMe.setVisibility(0);
                }
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (ChatroomFragment.this.lF != null) {
                    ChatroomFragment.this.lF.clear();
                }
                ChatroomFragment.this.cp();
            }
        };
        this.lj.start();
    }

    public void cp() {
        if (this.textView_toastAtMe != null) {
            this.textView_toastAtMe.setVisibility(8);
        }
        if (this.lj != null) {
            this.lj.cancel();
            this.lj = null;
        }
    }

    public void cq() {
        if (this.li != null) {
            this.li.cancel();
            this.li = null;
        }
        this.li = new CountDownTimer(2000L, 500L) { // from class: com.picacomic.fregata.fragments.ChatroomFragment.27
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (ChatroomFragment.this.frameLayout_chatOnlineCountContainer != null) {
                    ChatroomFragment.this.frameLayout_chatOnlineCountContainer.setVisibility(8);
                }
            }
        };
        this.li.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cr() {
        String strTrim = this.editText_textbox.getText().toString().trim();
        String strTrim2 = "";
        if (strTrim.equalsIgnoreCase("@指令")) {
            this.lA = true;
        }
        if (this.jW != null && this.jW.getName() != null) {
            strTrim2 = this.jW.getName().trim();
        }
        if (this.ku != null) {
            this.ku.toString();
        }
        if (TextUtils.isEmpty(strTrim) || TextUtils.isEmpty(strTrim2)) {
            return;
        }
        if (this.jW == null) {
            AlertDialogCenter.userNotActivatedCannotCommentOrChat(getActivity());
            return;
        }
        if (!this.lz) {
            if (this.at != null && this.at.length() > 0) {
                strTrim = "@private " + strTrim;
            } else {
                Toast.makeText(getContext(), R.string.toast_chatroom_private_no_at, 0).show();
                return;
            }
        }
        String str = strTrim;
        if (this.lI) {
            this.editText_textbox.setText("");
        }
        if (this.gson == null) {
            this.gson = new Gson();
        }
        ChatMessageObject chatMessageObject = new ChatMessageObject(this.jW.getUserId(), "", this.jW.getLevel(), this.jW.getEmail(), g.b(this.jW.getAvatar()), this.jW.getName(), this.jW.getTitle(), this.jW.getGender(), "android", this.jW.getActivationDate(), this.at, this.lt, this.reply, str, "", "", this.lu, 3, this.jW.isVerified(), this.jW.getCharacter(), this.jW.getCharactersStringArray(), this.lq, this.lp);
        this.jZ.b("send_message", this.gson.toJson(chatMessageObject, ChatMessageObject.class));
        a(chatMessageObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cs() {
        String strTrim = this.editText_textbox.getText().toString().trim();
        String strTrim2 = "";
        if (this.jW != null && this.jW.getName() != null) {
            strTrim2 = this.jW.getName().trim();
        }
        if (this.ku != null) {
            this.ku.toString();
        }
        if (TextUtils.isEmpty(strTrim) || TextUtils.isEmpty(strTrim2)) {
            return;
        }
        if (this.jW == null) {
            AlertDialogCenter.userNotActivatedCannotCommentOrChat(getActivity());
            return;
        }
        this.editText_textbox.setText("");
        if (this.gson == null) {
            this.gson = new Gson();
        }
        ChatMessageObject chatMessageObject = new ChatMessageObject(this.jW.getUserId(), "", this.jW.getLevel(), this.jW.getEmail(), g.b(this.jW.getAvatar()), this.jW.getName(), this.jW.getTitle(), this.jW.getGender(), "android", this.jW.getActivationDate(), this.at, this.lt, this.reply, strTrim, "", "", this.lu, 3, this.jW.isVerified(), this.jW.getCharacter(), this.jW.getCharactersStringArray(), this.lq, this.lp);
        if (this.lD == null) {
            return;
        }
        chatMessageObject.setTo(this.lD);
        this.jZ.b("send_private_message", this.gson.toJson(chatMessageObject, ChatMessageObject.class));
        a(chatMessageObject.user_id, "", this.jW.getLevel(), chatMessageObject.getEmail(), chatMessageObject.avatar, chatMessageObject.getName(), chatMessageObject.getTitle(), chatMessageObject.getGender(), chatMessageObject.getPlatform(), chatMessageObject.getActivationDate(), chatMessageObject.getAt(), chatMessageObject.getReplyName(), chatMessageObject.getReply(), chatMessageObject.getMessage(), chatMessageObject.getBlockUserId(), true, chatMessageObject.isVerified(), chatMessageObject.getCharacter(), chatMessageObject.getTo(), this.lq, this.lp);
    }

    private void O(String str) {
        String strTrim = "";
        if (this.jW != null && this.jW.getName() != null) {
            strTrim = this.jW.getName().trim();
        }
        if (TextUtils.isEmpty(strTrim)) {
            return;
        }
        if (this.jW == null) {
            AlertDialogCenter.userNotActivatedCannotCommentOrChat(getActivity());
            return;
        }
        this.editText_textbox.setText("");
        if (this.gson == null) {
            this.gson = new Gson();
        }
        ChatMessageObject chatMessageObject = new ChatMessageObject(this.jW.getUserId(), "", this.jW.getLevel(), this.jW.getEmail(), g.b(this.jW.getAvatar()), this.jW.getName(), this.jW.getTitle(), this.jW.getGender(), "android", this.jW.getActivationDate(), this.at, this.lt, this.reply, "", str, "", this.lu, 4, this.jW.isVerified(), this.jW.getCharacter(), this.jW.getCharactersStringArray(), this.lq, this.lp);
        this.jZ.b("send_image", this.gson.toJson(chatMessageObject, ChatMessageObject.class));
        c(chatMessageObject);
        cz();
        cA();
    }

    private void P(String str) {
        String strTrim = "";
        if (this.jW != null && this.jW.getName() != null) {
            strTrim = this.jW.getName().trim();
        }
        if (TextUtils.isEmpty(strTrim)) {
            return;
        }
        if (this.jW == null) {
            AlertDialogCenter.userNotActivatedCannotCommentOrChat(getActivity());
            return;
        }
        this.editText_textbox.setText("");
        if (this.gson == null) {
            this.gson = new Gson();
        }
        ChatMessageObject chatMessageObject = new ChatMessageObject(this.jW.getUserId(), "", this.jW.getLevel(), this.jW.getEmail(), g.b(this.jW.getAvatar()), this.jW.getName(), this.jW.getTitle(), this.jW.getGender(), "android", this.jW.getActivationDate(), this.at, this.lt, this.reply, "", "", str, this.lu, 5, this.jW.isVerified(), this.jW.getCharacter(), this.jW.getCharactersStringArray(), this.lq, this.lp);
        this.jZ.b("send_audio", this.gson.toJson(chatMessageObject, ChatMessageObject.class));
        d(chatMessageObject);
        cz();
        cA();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ChatroomSystemAction chatroomSystemAction, Type type) {
        if (this.jW == null) {
            AlertDialogCenter.userNotActivatedCannotCommentOrChat(getActivity());
            return;
        }
        if (this.gson == null) {
            this.gson = new Gson();
        }
        this.jZ.b("system_action", this.gson.toJson(chatroomSystemAction, type));
    }

    @Override // com.picacomic.fregata.fragments.BaseImagePickFragment
    public void K(String str) {
        super.K(str);
        if (str != null && this.kv == 2) {
            O(g.f(g.b(getActivity(), Uri.parse(str))));
        } else if (getActivity() != null) {
            cd();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.textView_audioPlayingTimer != null) {
            this.textView_audioPlayingTimer.setVisibility(8);
        }
        if (this.la != null) {
            this.la.release();
            this.la = null;
        }
        if (this.lX != null) {
            this.lX.cancel();
            this.lX.purge();
        }
        if (this.ii != null) {
            this.ii.release();
            this.ii = null;
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.jZ.eO();
        this.jZ.c("broadcast_message", this.lS);
        this.jZ.c("broadcast_image", this.lV);
        this.jZ.c("broadcast_audio", this.lW);
        this.jZ.c("new_connection", this.lP);
        this.jZ.c("connection_close", this.lQ);
        this.jZ.c("change_character_icon", this.lR);
        this.jZ.c("broadcast_ads", this.lT);
        this.jZ.c("change_title", this.lL);
        this.jZ.c("receive_notification", this.lO);
        this.jZ.c("kick", this.lN);
        this.jZ.c("set_profile", this.lM);
        this.jZ.c("connect", this.kd);
        if (this.kY != null) {
            this.kY.cancel();
        }
        if (this.jX != null) {
            this.jX.cancel();
        }
        if (this.lg != null) {
            this.lg.cancel();
        }
        if (this.li != null) {
            this.li.cancel();
            this.li = null;
        }
        if (this.ld != null) {
            this.ld.cancel();
            this.ld = null;
        }
        if (this.lk != null) {
            this.lk.cancel();
            this.lk = null;
        }
        if (this.lh != null) {
            this.lh.cancel();
            this.lh = null;
        }
        if (this.lj != null) {
            this.lj.cancel();
            this.lj = null;
        }
        if (this.lH != null) {
            this.lH.stop();
            this.lH.shutdown();
        }
    }

    public ChatMessageObject a(JSONObject jSONObject, int i) {
        ChatMessageObject chatMessageObject;
        JSONArray jSONArray;
        JSONArray jSONArray2;
        ChatMessageObject chatMessageObject2 = new ChatMessageObject("", "", 0, "", "", "", "", "", "", null, "", "", "", "", "", "", "", i, false, null, null, null, null);
        try {
            if (jSONObject.has("id")) {
                chatMessageObject = chatMessageObject2;
                chatMessageObject.setUserId(jSONObject.getString("id"));
            } else {
                chatMessageObject = chatMessageObject2;
            }
            if (jSONObject.has("userId")) {
                chatMessageObject.setUserId(jSONObject.getString("userId"));
            }
            if (jSONObject.has("user_id")) {
                chatMessageObject.setUserId(jSONObject.getString("user_id"));
            }
            if (jSONObject.has("unique_id")) {
                chatMessageObject.setUniqueId(jSONObject.getString("unique_id"));
            }
            if (jSONObject.has("level")) {
                chatMessageObject.setLevel(jSONObject.getInt("level"));
            }
            if (jSONObject.has("email")) {
                chatMessageObject.setEmail(jSONObject.getString("email"));
            }
            if (jSONObject.has("avatar")) {
                chatMessageObject.setAvatar(jSONObject.getString("avatar"));
            }
            if (jSONObject.has("name")) {
                chatMessageObject.setName(jSONObject.getString("name"));
            }
            if (jSONObject.has("title")) {
                chatMessageObject.setTitle(jSONObject.getString("title"));
            }
            if (jSONObject.has("gender")) {
                chatMessageObject.setGender(jSONObject.getString("gender"));
            }
            if (jSONObject.has("platform")) {
                chatMessageObject.setPlatform(jSONObject.getString("platform"));
            }
            if (jSONObject.has("activation_date")) {
                chatMessageObject.setActivationDate(jSONObject.getString("activation_date"));
            }
            if (jSONObject.has("activationDate")) {
                chatMessageObject.setActivationDate(jSONObject.getString("activationDate"));
            }
            if (jSONObject.has("at")) {
                chatMessageObject.setAt(jSONObject.getString("at"));
            }
            if (jSONObject.has("reply_name")) {
                chatMessageObject.setReplyName(jSONObject.getString("reply_name"));
            }
            if (jSONObject.has("reply")) {
                chatMessageObject.setReply(jSONObject.getString("reply"));
            }
            if (jSONObject.has("message")) {
                chatMessageObject.setMessage(jSONObject.getString("message"));
            }
            if (jSONObject.has("image")) {
                chatMessageObject.setImage(jSONObject.getString("image"));
            }
            if (jSONObject.has("audio")) {
                chatMessageObject.setAudio(jSONObject.getString("audio"));
            }
            if (jSONObject.has("block_user_id")) {
                chatMessageObject.setBlockUserId(jSONObject.getString("block_user_id"));
            }
            if (jSONObject.has("verified")) {
                chatMessageObject.setVerified(jSONObject.getBoolean("verified"));
            }
            if (jSONObject.has("character")) {
                chatMessageObject.setCharacter(jSONObject.getString("character"));
            }
            if (jSONObject.has("characters") && (jSONArray2 = jSONObject.getJSONArray("characters")) != null && jSONArray2.length() > 0) {
                String[] strArr = new String[jSONArray2.length()];
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    strArr[i2] = jSONArray2.getString(i2);
                }
                chatMessageObject.setCharacters(strArr);
            }
            if (jSONObject.has("event_icon")) {
                chatMessageObject.setEventIcon(jSONObject.getString("event_icon"));
            }
            if (jSONObject.has("event_colors") && (jSONArray = jSONObject.getJSONArray("event_colors")) != null && jSONArray.length() > 0) {
                String[] strArr2 = new String[jSONArray.length()];
                for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                    strArr2[i3] = jSONArray.getString(i3);
                }
                chatMessageObject.setEventColors(strArr2);
            }
            return chatMessageObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void a(ChatMessageObject chatMessageObject) {
        f.D(TAG, "CHAT = " + chatMessageObject.toString());
        if (W(chatMessageObject.getUserId())) {
            return;
        }
        if (this.jW != null && this.jW.getName() != null) {
            if (chatMessageObject.getAt() != null && chatMessageObject.getAt().contains("嗶咔_" + this.jW.getName())) {
                AtMeObject atMeObject = new AtMeObject(chatMessageObject.getName(), -1);
                if (this.lF != null) {
                    this.lF.add(0, atMeObject);
                }
                co();
            } else if (chatMessageObject.getReplyName() != null && chatMessageObject.getReplyName().equals(this.jW.getName())) {
                AtMeObject atMeObject2 = new AtMeObject(chatMessageObject.getName(), -1);
                if (this.lF != null) {
                    this.lF.add(0, atMeObject2);
                }
                co();
            }
            cv();
        }
        synchronized (this.arrayList) {
            this.arrayList.add(0, chatMessageObject);
            if (chatMessageObject.getType() == 3) {
                f.D(TAG, "Message Data = " + chatMessageObject.toString());
                cz();
                cA();
            } else {
                f.D(TAG, "Message Data = " + chatMessageObject.toString());
                String message = chatMessageObject.getMessage();
                if (this.lA && message != null && message.contains("聊天室的指令")) {
                    X(message);
                    this.lA = false;
                }
                if (Build.VERSION.SDK_INT >= 21 && this.lJ) {
                    try {
                        if (this.lK) {
                            this.lH.speak("：" + chatMessageObject.getName() + "說：" + message + "", 1, null, "");
                        } else {
                            this.lH.speak(message + "", 1, null, "");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            this.le.notifyItemInserted(0);
        }
        cu();
        ct();
        if (this.jQ.findFirstCompletelyVisibleItemPosition() == 0) {
            this.jQ.scrollToPosition(0);
        } else {
            N(chatMessageObject.getName() + ": " + chatMessageObject.getMessage());
        }
    }

    public void b(ChatMessageObject chatMessageObject) {
        cv();
        f.D(TAG, "ADD ADS IMAGE = " + chatMessageObject.getImage());
        synchronized (this.arrayList) {
            this.arrayList.add(0, chatMessageObject);
            f.D(TAG, "ADS = " + chatMessageObject);
            if (Build.VERSION.SDK_INT >= 21 && this.lJ) {
                try {
                    if (this.lK) {
                        this.lH.speak("：" + chatMessageObject.getName() + "發了一個廣告", 1, null, "");
                    } else {
                        this.lH.speak("發了一個廣告", 1, null, "");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                this.le.notifyItemInserted(0);
            } else {
                this.le.notifyItemInserted(0);
            }
        }
        cu();
        ct();
        if (this.jQ.findFirstCompletelyVisibleItemPosition() == 0) {
            this.jQ.scrollToPosition(0);
            return;
        }
        N(chatMessageObject.getName() + ": " + getResources().getString(R.string.chatroom_send_ads));
    }

    public void a(String str, String str2, int i, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, boolean z, boolean z2, String str15, ChatroomToObject chatroomToObject, String str16, String[] strArr) {
        int i2 = 0;
        ChatroomFragment chatroomFragment = this;
        cv();
        synchronized (chatroomFragment.arrayList) {
            try {
                if (z) {
                    chatroomFragment.arrayList.add(0, new ChatMessageObject(str, str2, i, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, "", "", str14, 10, z2, str15, null, str16, strArr, chatroomToObject));
                    cz();
                    cA();
                    chatroomFragment.lD = null;
                    i2 = 0;
                } else {
                    try {
                        i2 = 0;
                        chatroomFragment.arrayList.add(0, new ChatMessageObject(str, str2, i, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, "", "", str14, 9, z2, str15, null, str16, strArr, chatroomToObject));
                        chatroomFragment = this;
                    } catch (Throwable th) {
                        th = th;
                        if (th != null) th.printStackTrace();
                    }
                }
                chatroomFragment.le.notifyItemInserted(i2);
                cu();
                ct();
                if (chatroomFragment.jQ.findFirstCompletelyVisibleItemPosition() == 0) {
                    chatroomFragment.jQ.scrollToPosition(i2);
                    return;
                }
                chatroomFragment.N(str5 + ": " + str13);
            } catch (Throwable th2) {
                Throwable th = th2;
            }
        }
    }

    public void ct() {
        if (this.arrayList.size() > this.kW) {
            int size = this.arrayList.size() - this.kW;
            for (int i = 0; i < size; i++) {
                this.arrayList.remove(this.kW);
            }
            this.le.notifyItemRangeRemoved(this.kW, size);
        }
    }

    public void c(ChatMessageObject chatMessageObject) {
        cv();
        synchronized (this.arrayList) {
            this.arrayList.add(0, chatMessageObject);
            if (chatMessageObject.getType() == 4) {
                cz();
                cA();
            } else {
                if (Build.VERSION.SDK_INT >= 21 && this.lJ) {
                    try {
                        if (this.lK) {
                            this.lH.speak("：" + chatMessageObject.getName() + "發了一張圖片", 1, null, "");
                        } else {
                            this.lH.speak("發了一張圖片", 1, null, "");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            this.le.notifyItemInserted(0);
        }
        cu();
        ct();
        if (this.jQ.findFirstCompletelyVisibleItemPosition() == 0) {
            this.jQ.scrollToPosition(0);
            return;
        }
        N(chatMessageObject.getName() + ": " + getResources().getString(R.string.chatroom_send_image));
    }

    public void d(ChatMessageObject chatMessageObject) {
        cv();
        synchronized (this.arrayList) {
            this.arrayList.add(0, chatMessageObject);
            if (chatMessageObject.getType() == 5) {
                cz();
                cA();
            } else {
                if (Build.VERSION.SDK_INT >= 21 && this.lJ) {
                    try {
                        if (this.lK) {
                            this.lH.speak("：" + chatMessageObject.getName() + "發了一段語音", 1, null, "");
                        } else {
                            this.lH.speak("發了一段語音", 1, null, "");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            this.le.notifyItemInserted(0);
        }
        cu();
        ct();
        if (this.jQ.findFirstCompletelyVisibleItemPosition() == 0) {
            this.jQ.scrollToPosition(0);
            return;
        }
        N(chatMessageObject.getName() + ": " + getResources().getString(R.string.chatroom_send_audio));
    }

    public void Q(String str) {
        if (str != null) {
            this.arrayList.add(0, new ChatSystemObject(str));
            this.le.notifyItemInserted(0);
            if (this.jQ.findFirstCompletelyVisibleItemPosition() == 0) {
                this.jQ.scrollToPosition(0);
            }
        }
    }

    public void R(String str) {
        try {
            this.textView_totalUserCount.setText(str + "");
            this.frameLayout_chatOnlineCountBackground.setBackgroundResource(R.drawable.chat_connection_bar_new);
            this.frameLayout_chatOnlineCountContainer.setVisibility(0);
            this.textView_chatOnlineCountTitle.setText(R.string.chatroom_connection_new);
            this.textView_chatOnlineCount.setText(str + "");
            cq();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void S(String str) {
        try {
            this.textView_totalUserCount.setText(str + "");
            this.frameLayout_chatOnlineCountBackground.setBackgroundResource(R.drawable.chat_connection_bar_closed);
            this.frameLayout_chatOnlineCountContainer.setVisibility(0);
            this.textView_chatOnlineCountTitle.setText(R.string.chatroom_connection_closed);
            this.textView_chatOnlineCount.setText(str + "");
            cq();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void cv() {
        if (this.lF == null || this.lF.size() <= 0) {
            return;
        }
        for (int i = 0; i < this.lF.size(); i++) {
            this.lF.get(i).addIndex();
        }
    }

    public void cd() {
        C(getResources().getString(R.string.loading_chat));
        f.aA("Show Progress");
        this.jX = new com.picacomic.fregata.b.d(getContext()).dO().am(e.z(getActivity()));
        this.jX.enqueue(new Callback<GeneralResponse<UserProfileResponse>>() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.42
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<UserProfileResponse>> call, Response<GeneralResponse<UserProfileResponse>> response) {
                if (response.code() == 200) {
                    if (response.body() != null && response.body().data != null && response.body().data.getUser() != null) {
                        ChatroomFragment.this.jW = response.body().data.getUser();
                        if (ChatroomFragment.this.getActivity() != null) {
                            if (ChatroomFragment.this.gson == null) {
                                ChatroomFragment.this.gson = new Gson();
                            }
                            e.i(ChatroomFragment.this.getContext(), ChatroomFragment.this.gson.toJson(ChatroomFragment.this.jW));
                            if (ChatroomFragment.this.lm != null) {
                                ChatroomFragment.this.jW.setName(ChatroomFragment.this.lm);
                            }
                            if (ChatroomFragment.this.lo != null) {
                                ChatroomFragment.this.jW.setCharacter(ChatroomFragment.this.lo);
                            }
                            if (ChatroomFragment.this.ln != null) {
                                ChatroomFragment.this.jW.setTitle(ChatroomFragment.this.ln);
                            }
                            if (ChatroomFragment.this.lr > 0) {
                                ChatroomFragment.this.jW.setLevel(ChatroomFragment.this.lr);
                            }
                            ChatroomFragment.this.bI();
                        }
                    }
                } else {
                    try {
                        new c(ChatroomFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                f.aA("dismiss progress");
                ChatroomFragment.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<UserProfileResponse>> call, Throwable th) {
                th.printStackTrace();
                f.aA("dismiss progress");
                ChatroomFragment.this.bC();
                new c(ChatroomFragment.this.getActivity()).dN();
            }
        });
    }

    public void a(final String str, final String str2, final String str3, final String str4, final String str5) {
        this.lg = new com.picacomic.fregata.b.d(getContext()).dO().a(e.z(getActivity()), str5, new UpdateUserTitleBody(str2));
        this.lg.enqueue(new Callback<RegisterResponse>() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.43
            @Override // retrofit2.Callback
            public void onResponse(Call<RegisterResponse> call, Response<RegisterResponse> response) {
                if (response.code() == 200) {
                    Toast.makeText(ChatroomFragment.this.getContext(), "Update Title Success", 0).show();
                    ChatroomFragment.this.a(new ChangeTitleAction("set_title", str, str2, str3, str4, str5), ChangeTitleAction.class);
                } else {
                    try {
                        new c(ChatroomFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    Toast.makeText(ChatroomFragment.this.getContext(), "Update Title Failed", 0).show();
                }
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<RegisterResponse> call, Throwable th) {
                th.printStackTrace();
                new c(ChatroomFragment.this.getActivity()).dN();
                Toast.makeText(ChatroomFragment.this.getContext(), "Update Title Failed", 0).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(boolean z) {
        if (z) {
            cy();
            startRecording();
            return;
        }
        stopRecording();
        String strAB = g.aB(this.mFileName);
        if (strAB != null && this.lc != 0 && this.lb != 0 && this.lc - this.lb >= 1000) {
            P(strAB);
            MediaPlayer.create(getActivity(), Uri.parse(this.mFileName)).getDuration();
        }
        this.lb = 0L;
        this.lc = 0L;
        if (this.ld != null) {
            this.ld.cancel();
            this.ld = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(boolean z) {
        if (z) {
            if (this.ii != null) {
                cx();
            }
            cw();
            return;
        }
        cx();
    }

    private void cw() {
        this.ii = new MediaPlayer();
        try {
            this.ii.setDataSource(this.mFileName);
            this.ii.prepare();
            this.ii.start();
            this.ii.getDuration();
            f.D(TAG, "DURATION = " + this.ii.getDuration());
            this.ii.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.44
                @Override // android.media.MediaPlayer.OnCompletionListener
                public void onCompletion(MediaPlayer mediaPlayer) {
                    ChatroomFragment.this.u(false);
                }
            });
            if (this.textView_audioPlayingTimer != null) {
                this.textView_audioPlayingTimer.setVisibility(0);
                this.lX = new Timer();
                this.lX.scheduleAtFixedRate(new AnonymousClass46(), 0L, 100L);
            }
        } catch (IOException unused) {
        }
    }

    /* JADX INFO: renamed from: com.picacomic.fregata.fragments.ChatroomFragment$46, reason: invalid class name */
    class AnonymousClass46 extends TimerTask {
        AnonymousClass46() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            ChatroomFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.46.1
                @Override // java.lang.Runnable
                public void run() {
                    if (ChatroomFragment.this.ii != null && ChatroomFragment.this.ii.isPlaying()) {
                        if (ChatroomFragment.this.textView_audioPlayingTimer != null) {
                            ChatroomFragment.this.textView_audioPlayingTimer.post(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.46.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (ChatroomFragment.this.textView_audioPlayingTimer != null) {
                                        ChatroomFragment.this.textView_audioPlayingTimer.setText("正在播放錄音(" + String.format("%.1f", Float.valueOf(ChatroomFragment.this.ii.getDuration() / 1000.0f)) + "s)：" + String.format("%.1f", Float.valueOf(ChatroomFragment.this.ii.getCurrentPosition() / 1000.0f)) + "s");
                                    }
                                }
                            });
                        }
                    } else {
                        ChatroomFragment.this.lX.cancel();
                        ChatroomFragment.this.lX.purge();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cx() {
        if (this.textView_audioPlayingTimer != null) {
            this.textView_audioPlayingTimer.setVisibility(8);
        }
        if (this.lk != null) {
            this.lk.cancel();
        }
        if (this.ii != null) {
            this.ii.release();
            this.ii = null;
        }
    }

    private void startRecording() {
        this.la = new MediaRecorder();
        this.la.setAudioSource(1);
        this.la.setOutputFormat(1);
        this.la.setOutputFile(this.mFileName);
        this.la.setAudioEncoder(3);
        try {
            this.la.prepare();
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.la.start();
    }

    private void stopRecording() {
        try {
            this.la.stop();
            this.la.release();
            this.la = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void cy() {
        this.ld = new CountDownTimer(10000L, 500L) { // from class: com.picacomic.fregata.fragments.ChatroomFragment.47
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                if (ChatroomFragment.this.editText_textbox != null) {
                    ChatroomFragment.this.editText_textbox.setText(ChatroomFragment.this.getResources().getString(R.string.chatroom_recording) + ": " + ((int) Math.floor((10000 - j) / 1000.0f)) + "s");
                }
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (ChatroomFragment.this.editText_textbox != null) {
                    ChatroomFragment.this.editText_textbox.setText("");
                }
                ChatroomFragment.this.lc = System.currentTimeMillis();
                ChatroomFragment.this.t(false);
            }
        };
        this.ld.start();
    }

    @Override // com.picacomic.fregata.a_pkg.a
    public void D(int i) {
        g.G(((ChatMessageObject) this.arrayList.get(i)).getAudio(), this.mFileName);
        u(true);
    }

    @Override // com.picacomic.fregata.a_pkg.a
    public void E(int i) {
        if (((ChatMessageObject) this.arrayList.get(i)).getImage() == null || ((ChatMessageObject) this.arrayList.get(i)).getImage().equalsIgnoreCase("")) {
            return;
        }
        if (((ChatMessageObject) this.arrayList.get(i)).getType() == 11) {
            if (((ChatMessageObject) this.arrayList.get(i)).getAt() != null) {
                g.A(getContext(), ((ChatMessageObject) this.arrayList.get(i)).getAt());
                return;
            }
            return;
        }
        byte[] bArrDecode = Base64.decode(((ChatMessageObject) this.arrayList.get(i)).getImage().substring(((ChatMessageObject) this.arrayList.get(i)).getImage().indexOf(44)), 0);
        this.ll = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
        this.imageView_largeImage.setImageBitmap(this.ll);
        this.relativeLayout_popup.setVisibility(0);
        if (this.ll == null) {
            this.button_saveImage.setVisibility(8);
        } else {
            this.button_saveImage.setVisibility(0);
        }
        this.button_viewProfile.setVisibility(8);
    }

    @Override // com.picacomic.fregata.a_pkg.a
    public void F(int i) {
        if (this.arrayList.size() <= i || this.arrayList.get(i) == null) {
            return;
        }
        if (((ChatMessageObject) this.arrayList.get(i)).type == 3 || ((ChatMessageObject) this.arrayList.get(i)).type == 5 || ((ChatMessageObject) this.arrayList.get(i)).type == 4) {
            this.kv = 1;
            cf();
        } else if (((ChatMessageObject) this.arrayList.get(i)).getUserId() != null) {
            this.relativeLayout_popup.setVisibility(0);
            this.button_viewProfile.setVisibility(0);
            this.lw = ((ChatMessageObject) this.arrayList.get(i)).getUserId();
            if (((ChatMessageObject) this.arrayList.get(i)).getAvatar() != null && !((ChatMessageObject) this.arrayList.get(i)).getAvatar().equalsIgnoreCase("")) {
                Picasso.with(getActivity()).load(((ChatMessageObject) this.arrayList.get(i)).getAvatar()).into(this.imageView_largeImage);
            } else {
                this.imageView_largeImage.setImageBitmap(null);
            }
        }
    }

    @Override // com.picacomic.fregata.a_pkg.a
    public void G(int i) {
        if (this.textView_atList == null || this.arrayList == null || this.arrayList.size() <= i) {
            return;
        }
        if (getActivity() != null && (getActivity() instanceof MainActivity) && ((MainActivity) getActivity()).iM) {
            ((MainActivity) getActivity()).i(((ChatMessageObject) this.arrayList.get(i)).getName(), ((ChatMessageObject) this.arrayList.get(i)).getUserId());
            return;
        }
        if (cB()) {
            if (((ChatMessageObject) this.arrayList.get(i)).getEmail() == null || g.F(getContext(), ((ChatMessageObject) this.arrayList.get(i)).getEmail()) == 2) {
                return;
            }
            b(this.jW.getEmail(), ((ChatMessageObject) this.arrayList.get(i)).getName(), ((ChatMessageObject) this.arrayList.get(i)).getUserId(), this.jW.getName());
            return;
        }
        if (cC()) {
            if (((ChatMessageObject) this.arrayList.get(i)).getEmail() != null) {
                c(this.jW.getEmail(), ((ChatMessageObject) this.arrayList.get(i)).getName(), ((ChatMessageObject) this.arrayList.get(i)).getUserId(), this.jW.getName());
                return;
            }
            return;
        }
        if (cD()) {
            if (((ChatMessageObject) this.arrayList.get(i)).getEmail() != null) {
                e(this.jW.getEmail(), ((ChatMessageObject) this.arrayList.get(i)).getName(), ((ChatMessageObject) this.arrayList.get(i)).getUserId(), this.jW.getName());
                return;
            }
            return;
        }
        if (this.at == null || (this.at != null && this.at.equalsIgnoreCase(""))) {
            this.textView_atList.setText("");
            this.at = "";
        }
        this.at += "嗶咔_" + ((ChatMessageObject) this.arrayList.get(i)).getName();
        if (this.lu == null || (this.lu != null && this.lu.equalsIgnoreCase(""))) {
            this.lu = "";
        }
        this.lu += "," + ((ChatMessageObject) this.arrayList.get(i)).getUserId();
        this.textView_atList.append(" @" + ((ChatMessageObject) this.arrayList.get(i)).getName());
        this.textView_atList.setVisibility(0);
    }

    @Override // com.picacomic.fregata.a_pkg.a
    public void H(int i) {
        if (this.textView_reply == null || this.arrayList.size() <= i) {
            return;
        }
        if (cB()) {
            if (((ChatMessageObject) this.arrayList.get(i)).getEmail() == null || g.F(getContext(), ((ChatMessageObject) this.arrayList.get(i)).getEmail()) == 2) {
                return;
            }
            b(this.jW.getEmail(), ((ChatMessageObject) this.arrayList.get(i)).getName(), ((ChatMessageObject) this.arrayList.get(i)).getUserId(), this.jW.getName());
            return;
        }
        if (cC()) {
            if (((ChatMessageObject) this.arrayList.get(i)).getEmail() != null) {
                c(this.jW.getEmail(), ((ChatMessageObject) this.arrayList.get(i)).getName(), ((ChatMessageObject) this.arrayList.get(i)).getUserId(), this.jW.getName());
                return;
            }
            return;
        }
        if (cD()) {
            if (((ChatMessageObject) this.arrayList.get(i)).getEmail() != null) {
                e(this.jW.getEmail(), ((ChatMessageObject) this.arrayList.get(i)).getName(), ((ChatMessageObject) this.arrayList.get(i)).getUserId(), this.jW.getName());
                return;
            }
            return;
        }
        if (((ChatMessageObject) this.arrayList.get(i)).getType() == 11) {
            if (((ChatMessageObject) this.arrayList.get(i)).getAt() != null) {
                g.A(getContext(), ((ChatMessageObject) this.arrayList.get(i)).getAt());
            }
        } else {
            if (((ChatMessageObject) this.arrayList.get(i)).getMessage() == null || ((ChatMessageObject) this.arrayList.get(i)).getName() == null) {
                return;
            }
            this.reply = ((ChatMessageObject) this.arrayList.get(i)).getMessage();
            this.lt = ((ChatMessageObject) this.arrayList.get(i)).getName();
            this.textView_reply.setText(this.lt + ": " + this.reply);
            this.textView_reply.setVisibility(0);
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseImagePickFragment, com.picacomic.fregata.fragments.BaseFragment, com.picacomic.fregata.a_pkg.i
    public void b(View view) {
        if (this.relativeLayout_popup != null && this.relativeLayout_popup.getVisibility() == 0) {
            this.relativeLayout_popup.setVisibility(8);
            this.ll = null;
        } else if (getParentFragment() != null && ((getParentFragment() instanceof ChatroomContainerFragment) || (getParentFragment() instanceof CustomPicaAppContainerFragment))) {
            AlertDialogCenter.showCustomAlertDialog(getActivity(), R.drawable.icon_leave, R.string.alert_chatroom_leave_title, R.string.alert_chatroom_leave_msg, new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.48
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ChatroomFragment.this.getParentFragment().getFragmentManager().popBackStack();
                    ChatroomFragment.this.getFragmentManager().popBackStack();
                }
            }, (View.OnClickListener) null);
        } else {
            AlertDialogCenter.showCustomAlertDialog(getActivity(), R.drawable.icon_leave, R.string.alert_chatroom_leave_title, R.string.alert_chatroom_leave_msg, new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.49
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ChatroomFragment.this.getChildFragmentManager().popBackStack();
                    ChatroomFragment.this.getFragmentManager().popBackStack();
                }
            }, (View.OnClickListener) null);
        }
    }

    public void cz() {
        this.textView_atList.setText("");
        this.at = "";
        this.lu = "";
        this.textView_atList.setVisibility(8);
    }

    public void cA() {
        this.textView_reply.setText("");
        this.reply = "";
        this.lt = "";
        this.textView_reply.setVisibility(8);
    }

    public boolean cB() {
        return this.iN;
    }

    public void m(boolean z) {
        this.iN = z;
        if (z) {
            this.button_controlMute.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.colorPrimaryDark));
        } else {
            this.button_controlMute.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.transparent_black_75));
        }
    }

    public boolean cC() {
        return this.lx;
    }

    public void v(boolean z) {
        this.lx = z;
        if (z) {
            this.button_controlHideAvatar.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.colorPrimaryDark));
        } else {
            this.button_controlHideAvatar.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.transparent_black_75));
        }
    }

    public boolean cD() {
        return this.ly;
    }

    public void w(boolean z) {
        this.ly = z;
        if (z) {
            this.button_controlChangeTitle.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.colorPrimaryDark));
        } else {
            this.button_controlChangeTitle.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.transparent_black_75));
        }
    }

    public void b(final String str, final String str2, final String str3, final String str4) {
        new AlertDialog.Builder(getActivity(), R.style.MyAlertDialogStyle).setTitle(str2).setSingleChoiceItems(R.array.block_time, -1, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.52
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ChatroomFragment.this.lB = i;
            }
        }).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.51
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (ChatroomFragment.this.lB < 0) {
                    return;
                }
                ChatroomFragment.this.m(false);
                int[] iArr = {0, 1, 5, 15, 30, 60, 180, 1440, 4320, 10080};
                if (!str.equalsIgnoreCase("ruff@picacomic.com") && !str2.equalsIgnoreCase("ruff")) {
                    ChatroomFragment.this.a(new MuteAction("mute", str, iArr[ChatroomFragment.this.lB], str2, str3, str4), MuteAction.class);
                }
                ChatroomFragment.this.lB = -1;
                dialogInterface.dismiss();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.50
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ChatroomFragment.this.m(false);
                ChatroomFragment.this.lB = -1;
                dialogInterface.dismiss();
            }
        }).show();
    }

    public void c(final String str, final String str2, final String str3, final String str4) {
        new AlertDialog.Builder(getActivity(), R.style.MyAlertDialogStyle).setTitle(str2).setSingleChoiceItems(R.array.avatar, -1, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.55
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ChatroomFragment.this.lC = i;
            }
        }).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.54
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (ChatroomFragment.this.lC >= 0 && ChatroomFragment.this.lC < 7) {
                    ChatroomFragment.this.v(false);
                    ChatroomFragment.this.a(new SetAvatarAction("set_avatar", str, str2, str3, str4, ChatroomFragment.this.lC + 1), SetAvatarAction.class);
                    ChatroomFragment.this.lC = -1;
                } else {
                    ChatroomFragment.this.d(str, str2, str3, str4);
                }
                dialogInterface.dismiss();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.53
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ChatroomFragment.this.v(false);
                ChatroomFragment.this.lC = -1;
                dialogInterface.dismiss();
            }
        }).show();
    }

    public void d(final String str, final String str2, final String str3, final String str4) {
        View viewInflate = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.dialog_set_avatar_extra_content_view, (ViewGroup) getView().getParent(), false);
        final EditText editText = (EditText) viewInflate.findViewById(R.id.editText_set_avatar_extra_content_view_exp);
        new AlertDialog.Builder(getActivity(), R.style.MyAlertDialogStyle).setTitle(str2).setView(viewInflate).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.58
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                int i2;
                if (editText == null || editText.getText() == null || editText.getText().length() <= 0) {
                    i2 = -1;
                } else {
                    try {
                        i2 = Integer.parseInt(editText.getText().toString());
                    } catch (Exception e) {
                        e.printStackTrace();
                        i2 = -1;
                    }
                }
                if (i2 > 0) {
                    ChatroomFragment.this.v(false);
                    ChatroomFragment.this.a(new SetAvatarExtraAction("set_avatar", str, str2, str3, str4, i2), SetAvatarExtraAction.class);
                    ChatroomFragment.this.lC = -1;
                }
                dialogInterface.dismiss();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.57
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ChatroomFragment.this.v(false);
                ChatroomFragment.this.lC = -1;
                dialogInterface.dismiss();
            }
        }).show();
    }

    public void e(final String str, final String str2, final String str3, final String str4) {
        View viewInflate = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.dialog_set_user_title_content_view, (ViewGroup) getView().getParent(), false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.textView_set_user_title_content_view_name);
        final EditText editText = (EditText) viewInflate.findViewById(R.id.editText_set_user_title_content_view_title);
        textView.setText(str2 + "");
        new AlertDialog.Builder(getActivity(), R.style.MyAlertDialogStyle).setTitle(R.string.alert_action_change_title).setView(viewInflate).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.60
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (editText != null && editText.getText() != null && editText.getText().length() > 0) {
                    ChatroomFragment.this.w(false);
                    ChatroomFragment.this.a(str, editText.getText().toString() + "", str4, str2, str3);
                }
                dialogInterface.dismiss();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.59
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ChatroomFragment.this.w(false);
                dialogInterface.dismiss();
            }
        }).show();
    }

    public void cE() {
        View viewInflate = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.dialog_set_system_talk_content_view, (ViewGroup) getView().getParent(), false);
        final EditText editText = (EditText) viewInflate.findViewById(R.id.editText_set_system_talk_content_view_time);
        final EditText editText2 = (EditText) viewInflate.findViewById(R.id.editText_set_system_talk_content_view_title);
        new AlertDialog.Builder(getActivity(), R.style.MyAlertDialogStyle).setTitle(R.string.alert_action_ai_script_title).setView(viewInflate).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.62
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (editText2 != null && editText2.getText() != null && editText2.getText().length() > 0) {
                    int i2 = 0;
                    try {
                        if (editText != null && editText.getText() != null && editText.getText().length() > 0) {
                            i2 = Integer.parseInt(editText.getText().toString());
                        }
                    } catch (Exception unused) {
                    }
                    ChatroomFragment.this.b(i2, editText2.getText().toString() + "");
                }
                dialogInterface.dismiss();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.61
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).show();
    }

    public void T(final String str) {
        new AlertDialog.Builder(getActivity(), R.style.MyAlertDialogStyle).setTitle(R.string.chatroom_control_time_title).setSingleChoiceItems(R.array.toggle, -1, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.63
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (ChatroomFragment.this.jW != null && ChatroomFragment.this.jW.getName() != null) {
                    switch (i) {
                        case 0:
                            ChatroomFragment.this.a(new TimeAction("time", str, true, ChatroomFragment.this.jW.getName()), TimeAction.class);
                            break;
                        case 1:
                            ChatroomFragment.this.a(new TimeAction("time", str, false, ChatroomFragment.this.jW.getName()), TimeAction.class);
                            break;
                    }
                }
                dialogInterface.dismiss();
            }
        }).show();
    }

    public void U(final String str) {
        new AlertDialog.Builder(getActivity(), R.style.MyAlertDialogStyle).setTitle(R.string.chatroom_control_image_title).setSingleChoiceItems(R.array.toggle, -1, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.64
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (ChatroomFragment.this.jW != null && ChatroomFragment.this.jW.getName() != null) {
                    switch (i) {
                        case 0:
                            ChatroomFragment.this.a(new ImageAction("image", str, true, ChatroomFragment.this.jW.getName()), ImageAction.class);
                            break;
                        case 1:
                            ChatroomFragment.this.a(new ImageAction("image", str, false, ChatroomFragment.this.jW.getName()), ImageAction.class);
                            break;
                    }
                }
                dialogInterface.dismiss();
            }
        }).show();
    }

    public boolean V(String str) {
        if (str.equalsIgnoreCase("NIGHT ON")) {
            this.frameLayout_nightMode.setVisibility(0);
            return true;
        }
        if (str.equalsIgnoreCase("NIGHT OFF")) {
            this.frameLayout_nightMode.setVisibility(8);
            return true;
        }
        if (str.equalsIgnoreCase("TIME ON")) {
            this.le.n(true);
            Toast.makeText(getActivity(), "SHOW TIMESTAMP ON", 0).show();
            return true;
        }
        if (str.equalsIgnoreCase("TIME OFF")) {
            this.le.n(false);
            return true;
        }
        if (str.equalsIgnoreCase("FIX IMAGE SIZE ON")) {
            this.le.o(true);
            Toast.makeText(getActivity(), "FIX IMAGE SIZE ON", 0).show();
            return true;
        }
        if (str.equalsIgnoreCase("FIX IMAGE SIZE OFF")) {
            this.le.o(false);
            Toast.makeText(getActivity(), "FIX IMAGE SIZE OFF", 0).show();
            return true;
        }
        if (str.toUpperCase().startsWith("AUTO EARN PICA")) {
            return true;
        }
        if (str.toUpperCase().startsWith("MAXIMUM MESSAGE SIZE ")) {
            try {
                this.kW = Integer.parseInt(str.toUpperCase().replace("MAXIMUM MESSAGE SIZE ", ""));
                Toast.makeText(getActivity(), "SET MAX MESSAGE SIZE = " + this.kW, 0).show();
            } catch (Exception e) {
                e.printStackTrace();
            }
            return true;
        }
        if (str.equalsIgnoreCase("@BLACKLIST")) {
            f.D(TAG, this.at + "   " + this.lu);
            String[] strArrSplit = this.at.split("嗶咔_");
            String[] strArrSplit2 = this.lu.split(",");
            if (strArrSplit != null && strArrSplit2 != null) {
                for (int i = 0; i < strArrSplit.length; i++) {
                    f.D(TAG, "AT " + i + " = " + strArrSplit[i]);
                    f.D(TAG, "ID " + i + " = " + strArrSplit2[i]);
                }
                if (strArrSplit.length != 2 && strArrSplit2.length != 2) {
                    Toast.makeText(getContext(), "Blacklist User Failed", 1).show();
                } else {
                    if (strArrSplit[1].startsWith("嗶咔") || strArrSplit[1].equalsIgnoreCase("ruff")) {
                        Toast.makeText(getContext(), "Blacklist User Failed", 1).show();
                        return true;
                    }
                    if (this.lG == null) {
                        this.lG = new ArrayList<>();
                    }
                    this.lG.add(new ChatroomBlacklistObject(strArrSplit[1], strArrSplit2[1]));
                    for (int i2 = 0; i2 < this.lG.size(); i2++) {
                        f.D(TAG, "BLACKLIST " + i2 + ": " + this.lG.get(i2).getUserId() + " - " + this.lG.get(i2).getUsername());
                    }
                    e.u(getContext(), this.gson.toJson(this.lG));
                    Toast.makeText(getContext(), "Blacklist User: " + strArrSplit[1] + " Success", 1).show();
                }
            }
            return true;
        }
        if (this.jW != null && this.jW.getEmail().endsWith("@picacomic.com")) {
            if (str.toUpperCase().startsWith("SET ADS INTERVAL ")) {
                try {
                    this.kX = Integer.parseInt(str.toUpperCase().replace("SET ADS INTERVAL ", ""));
                    Toast.makeText(getActivity(), "SET ADS INTERVAL = " + this.kX, 0).show();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                return true;
            }
            if (str.equalsIgnoreCase("CONTROL PANEL")) {
                if (getActivity() != null && (getActivity() instanceof MainActivity)) {
                    ((MainActivity) getActivity()).bY();
                }
                return true;
            }
            if (str.equalsIgnoreCase("CLEAR TEXT ON")) {
                this.lI = true;
                Toast.makeText(getActivity(), "CLEAR TEXT ON", 0).show();
                return true;
            }
            if (str.equalsIgnoreCase("CLEAR TEXT OFF")) {
                this.lI = false;
                Toast.makeText(getActivity(), "CLEAR TEXT OFF", 0).show();
                return true;
            }
        }
        return false;
    }

    public void x(boolean z) {
        this.lz = z;
        if (z) {
            this.frameLayout_channelIndicator.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.colorPrimary));
        } else {
            this.frameLayout_channelIndicator.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.colorPrimaryDark2));
        }
    }

    public boolean W(String str) {
        if (this.lG != null && this.lG.size() > 0) {
            for (int i = 0; i < this.lG.size(); i++) {
                if (this.lG.get(i).getUserId().equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void cF() {
        if (getContext() == null || this.le == null) {
            return;
        }
        this.le.n(e.U(getContext()));
        this.le.o(e.V(getContext()));
        this.le.p(e.ad(getContext()));
        if (this.frameLayout_nightMode != null) {
            if (e.T(getContext())) {
                this.frameLayout_nightMode.setVisibility(0);
            } else {
                this.frameLayout_nightMode.setVisibility(8);
            }
        }
        this.kW = e.W(getContext());
        this.kX = e.X(getContext());
        if (this.jW != null && !e.ab(getContext()).equalsIgnoreCase("")) {
            this.jW.setCharacter(e.ab(getContext()));
        }
        if (this.jW != null && !e.ac(getContext()).equalsIgnoreCase("")) {
            this.jW.setName(e.ac(getContext()));
        }
        if (this.jW != null && this.jW.getEmail() != null && g.F(getContext(), this.jW.getEmail()) != 0) {
            if (this.linearLayout_controlPanel != null) {
                this.linearLayout_controlPanel.setVisibility(0);
            }
            if (this.imageButton_hideChannel != null) {
                this.imageButton_hideChannel.setVisibility(0);
            }
        }
        this.gson = new Gson();
        String strAe = e.ae(getContext());
        if (strAe != null) {
            this.lG = (ArrayList) this.gson.fromJson(strAe, new TypeToken<List<ChatroomBlacklistObject>>() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.65
            }.getType());
        } else {
            this.lG = new ArrayList<>();
        }
        f.D(TAG, "Updated UserProfile = " + this.jW.toString());
        if (this.lH != null && Build.VERSION.SDK_INT >= 21) {
            try {
                if (e.aa(getContext()).equalsIgnoreCase("cantonese")) {
                    this.lH.setLanguage(com.picacomic.fregata.c.b.aD("cantonese"));
                } else if (e.aa(getContext()).equalsIgnoreCase("english")) {
                    this.lH.setLanguage(com.picacomic.fregata.c.b.aD("english"));
                } else if (e.aa(getContext()).equalsIgnoreCase("japanese")) {
                    this.lH.setLanguage(com.picacomic.fregata.c.b.aD("japanese"));
                } else {
                    this.lH.setLanguage(com.picacomic.fregata.c.b.aD("chinese"));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.lJ = e.Y(getContext());
        this.lK = e.Z(getContext());
        if (!this.lJ && this.lH != null && this.lH.isSpeaking()) {
            this.lH.stop();
        }
        this.le.notifyDataSetChanged();
    }

    @Override // android.speech.tts.TextToSpeech.OnInitListener
    public void onInit(int i) {
        try {
            if (i == 0) {
                int language = this.lH.setLanguage(com.picacomic.fregata.c.b.aD("chinese"));
                if (language == -1 || language == -2) {
                    Log.e("error", "This Language is not supported");
                }
            } else {
                Log.e("error", "Initilization Failed!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void X(String str) {
        String[] strArrSplit = str.split("\n@");
        int i = 0;
        String str2 = strArrSplit[0];
        final String[] strArr = new String[strArrSplit.length - 1];
        while (i < strArrSplit.length - 1) {
            StringBuilder sb = new StringBuilder();
            sb.append("@");
            int i2 = i + 1;
            sb.append(strArrSplit[i2]);
            strArr[i] = sb.toString();
            i = i2;
        }
        new AlertDialog.Builder(getActivity(), R.style.MyAlertDialogStyle).setTitle(str2).setSingleChoiceItems(strArr, -1, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.66
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
                String[] strArrSplit2 = strArr[i3].split("\n");
                ChatroomFragment.this.editText_textbox.setText(strArrSplit2[0]);
                ChatroomFragment.this.editText_textbox.setSelection(strArrSplit2[0].length());
                String[] strArrSplit3 = strArrSplit2[0].split(" ");
                if (strArrSplit3.length > 1 && (strArrSplit3[1].contains("新的稱號") || strArrSplit3[1].contains("嗶咔幣") || strArrSplit3[1].contains("編號") || strArrSplit3[1].contains("頁碼"))) {
                    ChatroomFragment.this.a(ChatroomFragment.this.getContext(), strArrSplit3[0], strArrSplit3[1]);
                }
                dialogInterface.dismiss();
            }
        }).show();
    }

    public void a(Context context, final String str, String str2) {
        if (context == null) {
            return;
        }
        final Dialog dialog = new Dialog(context, R.style.CustomDialog);
        dialog.setContentView(R.layout.dialog_edittext_content_view);
        WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
        attributes.gravity = 17;
        attributes.width = g.as(context);
        final EditText editText = (EditText) dialog.findViewById(R.id.editText_content_view);
        TextView textView = (TextView) dialog.findViewById(R.id.textView_dialog_title);
        Button button = (Button) dialog.findViewById(R.id.button_dialog_positive);
        Button button2 = (Button) dialog.findViewById(R.id.button_dialog_negative);
        textView.setText(str + "");
        editText.setHint(str2 + "");
        if (str2.contains("嗶咔幣") || str2.contains("編號") || str2.contains("頁碼")) {
            editText.setKeyListener(DigitsKeyListener.getInstance("0123456789"));
            editText.setInputType(3);
        }
        button.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.68
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str3 = str + " " + editText.getText().toString();
                ChatroomFragment.this.editText_textbox.setText(str3);
                ChatroomFragment.this.editText_textbox.setSelection(str3.length());
                dialog.dismiss();
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChatroomFragment.69
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.show();
    }
}
