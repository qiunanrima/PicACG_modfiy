package com.picacomic.fregata.services;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.ItemTouchHelper;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.google.gson.Gson;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.a;
import com.picacomic.fregata.activities.LoginActivity;
import com.picacomic.fregata.adapters.ChatroomRecyclerViewAdapter;
import com.picacomic.fregata.objects.ChatBaseObject;
import com.picacomic.fregata.objects.ChatMessageObject;
import com.picacomic.fregata.objects.UserProfileObject;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import io.socket.client.d;
import java.net.URISyntaxException;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomService extends Service implements View.OnClickListener, a {
    public static final String TAG = "ChatroomService";
    ArrayList<ChatBaseObject> arrayList;

    @BindView(R.id.button_service_chatroom_close)
    Button button_close;

    @BindView(R.id.button_service_chatroom_message_mode)
    Button button_messageMode;

    @BindView(R.id.button_service_chatroom_move)
    Button button_move;

    @BindView(R.id.button_service_chatroom_send)
    Button button_send;

    @BindView(R.id.button_service_chatroom_size_controller)
    Button button_sizeController;

    @BindView(R.id.editText_service_chatroom_input)
    EditText editText_input;
    Handler handler;
    private int iK;
    LinearLayoutManager jQ;
    UserProfileObject jW;
    private d jZ;
    private LayoutInflater jc;
    private io.socket.b.a.a lP;
    private io.socket.b.a.a lQ;
    private io.socket.b.a.a lS;
    ChatroomRecyclerViewAdapter le;
    CountDownTimer lh;

    @BindView(R.id.recyclerView_service_chatroom)
    RecyclerView recyclerView_chat;

    @BindView(R.id.relativeLayout_service_chatroom_input)
    RelativeLayout relativeLayout_input;
    private int screenWidth;
    private WindowManager tC;
    View tD;
    WindowManager.LayoutParams tE;
    ChatMessageObject tH;

    @BindView(R.id.textView_chat_at_list)
    TextView textView_atList;

    @BindView(R.id.textView_chat_reply)
    TextView textView_reply;

    @BindView(R.id.textView_chat_toast_msg)
    TextView textView_toastMsg;

    @BindView(R.id.textView_service_chatroom_total_user_count)
    TextView textView_totalUserCount;
    private int tF = ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION;
    boolean tG = false;
    String at = "";
    String lt = "";
    String reply = "";
    String lu = "";

    @Override // com.picacomic.fregata.a_pkg.a
    public void D(int i) {
    }

    @Override // com.picacomic.fregata.a_pkg.a
    public void E(int i) {
    }

    @Override // com.picacomic.fregata.a_pkg.a
    public void F(int i) {
    }

    @Deprecated
    public void cu() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    public ChatroomService() {
        try {
            this.jZ = io.socket.client.b.aE("https://chat.picacomic.com");
        } catch (URISyntaxException unused) {
        }
        this.lS = new io.socket.b.a.a() { // from class: com.picacomic.fregata.services.ChatroomService.12
            @Override // io.socket.b.a.a
            public void a(final Object... objArr) {
                ChatroomService.this.runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.services.ChatroomService.12.1
                    @Override // java.lang.Runnable
                    public void run() {
                        String[] strArr;
                        JSONArray jSONArray;
                        JSONObject jSONObject = (JSONObject) objArr[0];
                        try {
                            String string = jSONObject.has("id") ? jSONObject.getString("id") : "";
                            if (jSONObject.has("userId")) {
                                string = jSONObject.getString("userId");
                            }
                            if (jSONObject.has("user_id")) {
                                string = jSONObject.getString("user_id");
                            }
                            String str = string;
                            String string2 = jSONObject.has("unique_id") ? jSONObject.getString("unique_id") : "";
                            int i = jSONObject.has("level") ? jSONObject.getInt("level") : 0;
                            String string3 = jSONObject.has("avatar") ? jSONObject.getString("avatar") : "";
                            String string4 = jSONObject.getString("name");
                            String string5 = jSONObject.has("title") ? jSONObject.getString("title") : "";
                            String string6 = jSONObject.has("message") ? jSONObject.getString("message") : "";
                            boolean z = jSONObject.has("verified") ? jSONObject.getBoolean("verified") : false;
                            String string7 = jSONObject.has("gender") ? jSONObject.getString("gender") : "";
                            String string8 = jSONObject.has("platform") ? jSONObject.getString("platform") : "";
                            String string9 = jSONObject.has("activation_date") ? jSONObject.getString("activation_date") : null;
                            if (jSONObject.has("activationDate")) {
                                string9 = jSONObject.getString("activationDate");
                            }
                            String str2 = string9;
                            String string10 = jSONObject.has("at") ? jSONObject.getString("at") : "";
                            String string11 = jSONObject.has("reply_name") ? jSONObject.getString("reply_name") : "";
                            String string12 = jSONObject.has("reply") ? jSONObject.getString("reply") : "";
                            String string13 = jSONObject.has("email") ? jSONObject.getString("email") : "";
                            String string14 = jSONObject.has("block_user_id") ? jSONObject.getString("block_user_id") : "";
                            String string15 = jSONObject.has("event_icon") ? jSONObject.getString("event_icon") : null;
                            if (!jSONObject.has("event_colors") || (jSONArray = jSONObject.getJSONArray("event_colors")) == null || jSONArray.length() <= 0) {
                                strArr = null;
                            } else {
                                String[] strArr2 = new String[jSONArray.length()];
                                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                                    strArr2[i2] = jSONArray.getString(i2);
                                }
                                strArr = strArr2;
                            }
                            ChatroomService.this.a(str, string2, i, string13, string3, string4, string5, string7, string8, str2, string10, string11, string12, string6, string14, false, z, jSONObject.has("character") ? jSONObject.getString("character") : null, string15, strArr);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                });
            }
        };
        this.lP = new io.socket.b.a.a() { // from class: com.picacomic.fregata.services.ChatroomService.2
            @Override // io.socket.b.a.a
            public void a(final Object... objArr) {
                ChatroomService.this.runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.services.ChatroomService.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        JSONObject jSONObject = (JSONObject) objArr[0];
                        try {
                            String string = jSONObject.has("connections") ? jSONObject.getString("connections") : "";
                            ChatroomService.this.textView_totalUserCount.setText(R.string.chatroom_connection_total_user);
                            ChatroomService.this.textView_totalUserCount.append(string + "");
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                });
            }
        };
        this.lQ = new io.socket.b.a.a() { // from class: com.picacomic.fregata.services.ChatroomService.3
            @Override // io.socket.b.a.a
            public void a(final Object... objArr) {
                ChatroomService.this.runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.services.ChatroomService.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        JSONObject jSONObject = (JSONObject) objArr[0];
                        try {
                            String string = jSONObject.has("connections") ? jSONObject.getString("connections") : "";
                            ChatroomService.this.textView_totalUserCount.setText(R.string.chatroom_connection_total_user);
                            ChatroomService.this.textView_totalUserCount.append(string + "");
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                });
            }
        };
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null || intent.getAction() == null) {
            String str = intent == null ? "intent" : "action";
            Log.e(TAG, str + " was null, flags=" + i + " bits=" + Integer.toBinaryString(i));
            return 1;
        }
        if (intent.getAction().equals("com.picacomic.fregata.interfaces.foregroundservice.action.startforeground")) {
            Log.i(TAG, "Received Start Foreground Intent ");
            Intent intent2 = new Intent(this, (Class<?>) LoginActivity.class);
            intent2.setAction("com.picacomic.fregata.interfaces.foregroundservice.action.main");
            intent2.setFlags(268468224);
            PendingIntent activity = PendingIntent.getActivity(this, 0, intent2, 0);
            Intent intent3 = new Intent(this, (Class<?>) ChatroomService.class);
            intent3.setAction("com.picacomic.fregata.interfaces.foregroundservice.action.stopforeground");
            PendingIntent service = PendingIntent.getService(this, 0, intent3, 0);
            Intent intent4 = new Intent(this, (Class<?>) ChatroomService.class);
            intent4.setAction("com.picacomic.fregata.interfaces.foregroundservice.action.hideforeground");
            startForeground(4301, new NotificationCompat.Builder(this).setContentTitle(getString(R.string.title_chatroom)).setTicker(getString(R.string.title_chatroom)).setContentText(getString(R.string.chatroom_setting_running)).setSmallIcon(R.drawable.logo_round).setLargeIcon(Bitmap.createScaledBitmap(BitmapFactory.decodeResource(getResources(), R.drawable.logo_round), 128, 128, false)).setContentIntent(activity).setPriority(2).addAction(android.R.drawable.presence_invisible, getResources().getString(R.string.hide), PendingIntent.getService(this, 0, intent4, 0)).addAction(android.R.drawable.presence_offline, getResources().getString(R.string.quit), service).build());
        } else if (intent.getAction().equals("com.picacomic.fregata.interfaces.foregroundservice.action.stopforeground")) {
            Log.i(TAG, "Received Stop Foreground Intent");
            dP();
        } else if (intent.getAction().equals("com.picacomic.fregata.interfaces.foregroundservice.action.hideforeground")) {
            Log.i(TAG, "Received Hide Foreground Intent");
            if (this.tD.getVisibility() == 0) {
                this.tD.setVisibility(8);
            } else {
                this.tD.setVisibility(0);
            }
        }
        return 1;
    }

    public void dP() {
        this.tD.setVisibility(8);
        stopForeground(true);
        stopSelf();
        if (this.jZ != null) {
            this.jZ.eO();
            this.jZ.c("broadcast_message", this.lS);
            this.jZ.c("new_connection", this.lP);
            this.jZ.c("connection_close", this.lQ);
        }
        if (this.lh != null) {
            this.lh.cancel();
            this.lh = null;
        }
        if (this.handler != null) {
            this.handler = null;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        g.aw(this);
        this.jc = (LayoutInflater) getSystemService("layout_inflater");
        this.tC = (WindowManager) getSystemService("window");
        this.screenWidth = this.tC.getDefaultDisplay().getWidth();
        this.tE = new WindowManager.LayoutParams(-1, -2, 2002, 8, -3);
        this.tE.gravity = 51;
        this.tE.x = 0;
        this.tE.y = 100;
        init();
        bF();
        bH();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    public void init() {
        this.tD = this.jc.inflate(R.layout.service_chatroom_view, (ViewGroup) null);
        ButterKnife.bind(this, this.tD);
        this.handler = new Handler();
        this.tG = false;
        this.jZ.a("broadcast_message", this.lS);
        this.jZ.a("new_connection", this.lP);
        this.jZ.a("connection_close", this.lQ);
        this.jZ.eJ();
        Gson gson = new Gson();
        String strB = e.B(this);
        if (strB != null) {
            this.jW = (UserProfileObject) gson.fromJson(strB, UserProfileObject.class);
            if (this.jW == null) {
                dP();
            }
        } else {
            dP();
        }
        this.arrayList = new ArrayList<>();
        this.jQ = new LinearLayoutManager(this, 1, true);
        this.le = new ChatroomRecyclerViewAdapter(this, this.arrayList, this);
        this.recyclerView_chat.setLayoutManager(this.jQ);
        this.recyclerView_chat.setAdapter(this.le);
    }

    public void bF() {
        this.textView_atList.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.services.ChatroomService.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChatroomService.this.cz();
            }
        });
        this.textView_reply.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.services.ChatroomService.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChatroomService.this.cA();
            }
        });
        this.textView_toastMsg.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.services.ChatroomService.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChatroomService.this.recyclerView_chat == null || ChatroomService.this.arrayList == null || ChatroomService.this.arrayList.size() <= 0) {
                    return;
                }
                ChatroomService.this.recyclerView_chat.scrollToPosition(0);
            }
        });
        this.button_close.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.services.ChatroomService.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChatroomService.this.dP();
            }
        });
        this.button_send.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.services.ChatroomService.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChatroomService.this.cr();
            }
        });
        this.button_messageMode.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.services.ChatroomService.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChatroomService.this.tG) {
                    ChatroomService.this.tG = false;
                    ChatroomService.this.D(false);
                } else {
                    ChatroomService.this.tG = true;
                    ChatroomService.this.D(true);
                }
            }
        });
        this.button_move.setOnTouchListener(new View.OnTouchListener() { // from class: com.picacomic.fregata.services.ChatroomService.10
            int iS;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int rawY = (int) motionEvent.getRawY();
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.iS = rawY;
                    ChatroomService.this.iK = rawY - ChatroomService.this.tE.y;
                    return false;
                }
                if (action != 2) {
                    return false;
                }
                ChatroomService.this.tE.y = rawY - ChatroomService.this.iK;
                ChatroomService.this.tC.updateViewLayout(ChatroomService.this.tD, ChatroomService.this.tE);
                return false;
            }
        });
        this.button_sizeController.setOnTouchListener(new View.OnTouchListener() { // from class: com.picacomic.fregata.services.ChatroomService.11
            int iS;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int rawY = (int) motionEvent.getRawY();
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.iS = rawY;
                    ChatroomService.this.iK = ChatroomService.this.recyclerView_chat.getLayoutParams().height;
                } else if (action == 2) {
                    int i = ChatroomService.this.iK - (this.iS - rawY);
                    if (i < 0) {
                        i = 0;
                    }
                    ChatroomService.this.recyclerView_chat.getLayoutParams().height = i;
                    ChatroomService.this.tC.updateViewLayout(ChatroomService.this.tD, ChatroomService.this.tE);
                }
                return false;
            }
        });
    }

    public void bH() {
        this.tC.addView(this.tD, this.tE);
        D(false);
    }

    public void D(boolean z) {
        if (z) {
            this.tE.flags = 0;
            this.tC.updateViewLayout(this.tD, this.tE);
            this.button_messageMode.setText(R.string.chatroom_service_send_mode_off);
            this.relativeLayout_input.setVisibility(0);
            return;
        }
        this.tE.flags = 8;
        this.tC.updateViewLayout(this.tD, this.tE);
        this.button_messageMode.setText(R.string.chatroom_service_send_mode_on);
        this.relativeLayout_input.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cr() {
        if (this.jW != null) {
            String strTrim = this.editText_input.getText().toString().trim();
            if (TextUtils.isEmpty(strTrim)) {
                this.tG = false;
                D(false);
                return;
            }
            this.editText_input.setText("");
            Gson gson = new Gson();
            ChatMessageObject chatMessageObject = new ChatMessageObject(this.jW.getUserId(), "", this.jW.getLevel(), this.jW.getEmail(), g.b(this.jW.getAvatar()), this.jW.getName(), this.jW.getTitle(), this.jW.getGender(), "android S", this.jW.getActivationDate(), this.at, this.lt, this.reply, strTrim, "", "", this.tH != null ? this.tH.getUserId() : null, 0, this.jW.isVerified(), this.jW.getCharacter(), this.jW.getCharactersStringArray(), null, null);
            this.jZ.b("send_message", gson.toJson(chatMessageObject, ChatMessageObject.class));
            a(chatMessageObject.user_id, "", this.jW.getLevel(), chatMessageObject.getEmail(), chatMessageObject.avatar, chatMessageObject.getName(), chatMessageObject.getTitle(), chatMessageObject.getGender(), chatMessageObject.getPlatform(), chatMessageObject.getActivationDate(), chatMessageObject.getAt(), chatMessageObject.getReplyName(), chatMessageObject.getReply(), chatMessageObject.getMessage(), chatMessageObject.getBlockUserId(), true, chatMessageObject.isVerified(), chatMessageObject.getCharacter(), null, null);
            this.tG = false;
            D(false);
            cz();
            cA();
        }
    }

    public void a(String str, String str2, int i, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, boolean z, boolean z2, String str15, String str16, String[] strArr) {
        if (str10 != null && str10.contains(this.jW.getName())) {
            Toast.makeText(getApplicationContext(), str5 + " " + getString(R.string.chatroom_at_me), 0).show();
        } else if (str11 != null && str11.equals(this.jW.getName())) {
            Toast.makeText(getApplicationContext(), str5 + " " + getString(R.string.chatroom_reply_me_short), 0).show();
        }
        synchronized (this.arrayList) {
            if (z) {
                ChatMessageObject chatMessageObject = new ChatMessageObject(str, str2, i, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, "", "", str14, 3, z2, str15, null, str16, strArr);
                this.arrayList.add(0, chatMessageObject);
                f.D(TAG, "Message Data = " + chatMessageObject.toString());
            } else {
                ChatMessageObject chatMessageObject2 = new ChatMessageObject(str, str2, i, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, "", "", str14, 0, z2, str15, null, str16, strArr);
                this.arrayList.add(0, chatMessageObject2);
                f.D(TAG, "Message Data = " + chatMessageObject2.toString());
            }
            this.le.notifyItemInserted(0);
            cu();
            ct();
            if (this.jQ.findFirstCompletelyVisibleItemPosition() == 0) {
                this.jQ.scrollToPosition(0);
            } else {
                N(str5 + ": " + str13);
            }
        }
    }

    public void ct() {
        if (this.arrayList.size() > 50) {
            int size = this.arrayList.size() - 50;
            for (int i = 0; i < size; i++) {
                this.arrayList.remove(50);
            }
            this.le.notifyItemRangeRemoved(50, size);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOnUiThread(Runnable runnable) {
        this.handler.post(runnable);
    }

    @Override // com.picacomic.fregata.a_pkg.a
    public void G(int i) {
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
        if (((ChatMessageObject) this.arrayList.get(i)).getMessage() == null || ((ChatMessageObject) this.arrayList.get(i)).getName() == null) {
            return;
        }
        this.reply = ((ChatMessageObject) this.arrayList.get(i)).getMessage();
        this.lt = ((ChatMessageObject) this.arrayList.get(i)).getName();
        this.textView_reply.setText(this.lt + ": " + this.reply);
        this.textView_reply.setVisibility(0);
    }

    public void N(String str) {
        if (this.textView_toastMsg != null) {
            this.textView_toastMsg.setText(str + "");
        }
        cn();
        this.lh = new CountDownTimer(5000L, 500L) { // from class: com.picacomic.fregata.services.ChatroomService.4
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                if (ChatroomService.this.textView_toastMsg != null) {
                    ChatroomService.this.textView_toastMsg.setVisibility(0);
                }
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                ChatroomService.this.cn();
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
}
