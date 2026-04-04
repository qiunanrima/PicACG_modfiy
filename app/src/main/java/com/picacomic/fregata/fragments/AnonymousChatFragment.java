package com.picacomic.fregata.fragments;

import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.picacomic.fregata.databinding.FragmentAnonymousChatBinding;
import com.google.gson.Gson;
import com.picacomic.fregata.R;
import com.picacomic.fregata.adapters.AnonymousChatRecyclerViewAdapter;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.objects.AnonymousChatActionDataObject;
import com.picacomic.fregata.objects.AnonymousChatDataObject;
import com.picacomic.fregata.objects.UserProfileObject;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.objects.responses.UserProfileResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.views.AlertDialogCenter;

import io.socket.client.IO;
import io.socket.client.Socket;
import java.net.URISyntaxException;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

import io.socket.emitter.Emitter;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class AnonymousChatFragment extends BaseFragment implements View.OnClickListener {
    public static final String TAG = "AnonymousChatFragment";

    FragmentAnonymousChatBinding binding;
    Button button_match;
    Button button_send;
    EditText editText_name;
    EditText editText_typeSpace;
    Gson gson;
    ImageButton imageButton_leave;
    LinearLayoutManager jQ;
    UserProfileObject jW;
    Call<GeneralResponse<UserProfileResponse>> jX;
    AnonymousChatRecyclerViewAdapter jY;
    private Socket jZ;
    ArrayList<AnonymousChatDataObject> ja;
    String ka;
    String kb;
    String kc;

    LinearLayout linearLayout_message;
    LinearLayout linearLayout_name;
    LinearLayout linearLayout_typeSpace;
    RecyclerView recyclerView;
    TextView textView_matcherName;
    TextView textView_message;
    public final String jU = "action";
    public final String jV = "response";
    private Emitter.Listener kd = new Emitter.Listener() { // from class: com.picacomic.fregata.fragments.AnonymousChatFragment.1
        @Override // Emitter.Listener
        public void call(Object... objArr) {
            AnonymousChatFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.AnonymousChatFragment.1.1
                @Override // java.lang.Runnable
                public void run() {
                    f.D(AnonymousChatFragment.TAG, "Testing INIT");
                }
            });
        }
    };
    private Emitter.Listener ke = new Emitter.Listener(){ // from class: com.picacomic.fregata.fragments.AnonymousChatFragment.3
        @Override // Emitter.Listener
        public void call(final Object... objArr) {
            AnonymousChatFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.AnonymousChatFragment.3.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousChatActionDataObject anonymousChatActionDataObjectB = AnonymousChatFragment.this.b((JSONObject) objArr[0]);
                    if (anonymousChatActionDataObjectB == null) {
                        return;
                    }
                    f.F(AnonymousChatFragment.TAG, "ACTION: " + anonymousChatActionDataObjectB.toString());
                    anonymousChatActionDataObjectB.getActionType();
                }
            });
        }
    };
    private Emitter.Listener kf = new Emitter.Listener() { // from class: com.picacomic.fregata.fragments.AnonymousChatFragment.4
        @Override // Emitter.Listener
        public void call(final Object... objArr) {
            AnonymousChatFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.AnonymousChatFragment.4.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousChatActionDataObject anonymousChatActionDataObjectB = AnonymousChatFragment.this.b((JSONObject) objArr[0]);
                    if (anonymousChatActionDataObjectB == null) {
                        return;
                    }
                    f.F(AnonymousChatFragment.TAG, "RESPONSE: " + anonymousChatActionDataObjectB.toString());
                    if (anonymousChatActionDataObjectB.getResponseType() != null) {
                        AnonymousChatFragment.this.a(anonymousChatActionDataObjectB.getResponseType(), anonymousChatActionDataObjectB.getData());
                    }
                }
            });
        }
    };

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        IO.Options aVar = new IO.Options();
        aVar.transports = new String[]{"websocket"};
        try {
            this.jZ = IO.socket("https://secret-chat.wakamoment.gq", aVar);
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }
        this.jZ.on("action", this.ke);
        this.jZ.on("response", this.kf);
        this.jZ.on("connect", this.kd);
        this.jZ.connect();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentAnonymousChatBinding.inflate(layoutInflater, viewGroup, false);
        this.button_match = this.binding.buttonAnonymousChatMatch;
        this.button_send = this.binding.buttonAnonymousChatSend;
        this.editText_name = this.binding.editTextAnonymousChatName;
        this.editText_typeSpace = this.binding.editTextAnonymousChatTypeSpace;
        this.imageButton_leave = this.binding.imageButtonAnonymousChatLeave;
        this.linearLayout_message = this.binding.linearLayoutAnonymousChatMessage;
        this.linearLayout_name = this.binding.linearLayoutAnonymousName;
        this.linearLayout_typeSpace = this.binding.linearLayoutAnonymousTypeSpace;
        this.recyclerView = this.binding.recyclerViewAnonymousChatMessages;
        this.textView_matcherName = this.binding.textViewAnonymousChatMatcherName;
        this.textView_message = this.binding.textViewAnonymousChatMessage;
        a(this.binding.getRoot());
        return this.binding.getRoot();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        this.gson = new Gson();
        String strB = e.B(getContext());
        this.kc = "";
        if (strB != null && !strB.equalsIgnoreCase("")) {
            this.jW = (UserProfileObject) this.gson.fromJson(strB, UserProfileObject.class);
            this.kc = this.jW.getUserId();
        } else {
            cd();
        }
        this.kb = e.ag(getContext());
        this.ka = e.ah(getContext());
        this.ja = new ArrayList<>();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.button_match.setOnClickListener(this);
        this.button_send.setOnClickListener(this);
        this.imageButton_leave.setOnClickListener(this);
        this.jQ = new LinearLayoutManager(getContext(), 1, true);
        this.jY = new AnonymousChatRecyclerViewAdapter(getContext(), this.kc, this.ja);
        this.recyclerView.setLayoutManager(this.jQ);
        this.recyclerView.setAdapter(this.jY);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.button_send && this.editText_typeSpace != null && this.editText_typeSpace.getText() != null && this.editText_typeSpace.getText().toString().length() > 0) {
            j(this.kb, this.editText_typeSpace.getText().toString() + "");
        }
        if (view == this.button_match) {
            cc();
        }
        if (view == this.imageButton_leave) {
            AlertDialogCenter.showCustomAlertDialog(getContext(), R.drawable.icon_exclamation_error, R.string.anonymous_chat_exit_title, R.string.anonymous_chat_exit_message, new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.AnonymousChatFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AnonymousChatFragment.this.s(false);
                    AnonymousChatFragment.this.J("leave room");
                }
            }, (View.OnClickListener) null);
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        if (this.kb != null) {
            this.ka = e.ah(getContext());
            I(this.ka + "");
            return;
        }
        J("Welcome");
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
    }

    public AnonymousChatActionDataObject b(JSONObject jSONObject) {
        JSONObject jSONObject2;
        AnonymousChatActionDataObject anonymousChatActionDataObject = new AnonymousChatActionDataObject(null, null, new AnonymousChatDataObject(null, null, null, null, null));
        try {
            if (jSONObject.has("actionType")) {
                anonymousChatActionDataObject.setActionType(jSONObject.getString("actionType"));
            }
            if (jSONObject.has("responseType")) {
                anonymousChatActionDataObject.setResponseType(jSONObject.getString("responseType"));
            }
            if (jSONObject.has("data") && (jSONObject2 = jSONObject.getJSONObject("data")) != null) {
                if (jSONObject2.has("id")) {
                    anonymousChatActionDataObject.getData().setId(jSONObject2.getString("id"));
                }
                if (jSONObject2.has("userId")) {
                    anonymousChatActionDataObject.getData().setUserId(jSONObject2.getString("userId"));
                }
                if (jSONObject2.has("name")) {
                    anonymousChatActionDataObject.getData().setName(jSONObject2.getString("name"));
                }
                if (jSONObject2.has("message")) {
                    anonymousChatActionDataObject.getData().setMessage(jSONObject2.getString("message"));
                }
                if (jSONObject2.has("roomId")) {
                    anonymousChatActionDataObject.getData().setRoomId(jSONObject2.getString("roomId"));
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return anonymousChatActionDataObject;
    }

    public void cc() {
        if (this.jW == null || this.jW.getUserId() == null) {
            return;
        }
        try {
            String json = this.gson.toJson(new AnonymousChatActionDataObject("MATCHING", null, new AnonymousChatDataObject(null, this.jW.getUserId(), (this.editText_name != null ? this.editText_name.getText().toString() : "") + "", null, null)), AnonymousChatActionDataObject.class);
            f.F(TAG, "GSON: " + json);
            if (this.jZ == null) {
                f.F(TAG, "SOCKET NULL");
            } else {
                f.F(TAG, "NEW MATCH: " + json);
                this.jZ.emit("action", json + "");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void j(String str, String str2) {
        if (this.jW == null || this.jW.getUserId() == null) {
            return;
        }
        AnonymousChatActionDataObject anonymousChatActionDataObject = new AnonymousChatActionDataObject("SEND_MESSAGE", null, new AnonymousChatDataObject(null, this.jW.getUserId(), (this.editText_name != null ? this.editText_name.getText().toString() : "") + "", str2, str));
        this.jZ.emit("action", this.gson.toJson(anonymousChatActionDataObject, AnonymousChatActionDataObject.class));
        this.ja.add(0, anonymousChatActionDataObject.getData());
        this.jY.notifyDataSetChanged();
        this.editText_typeSpace.setText("");
    }

    public void s(boolean z) {
        if (this.jW == null || this.jW.getUserId() == null) {
            return;
        }
        this.jZ.emit("action", this.gson.toJson(new AnonymousChatActionDataObject("LEAVE_MATCHING", null, new AnonymousChatDataObject(null, this.jW.getUserId(), null, null, null)), AnonymousChatActionDataObject.class));
        if (z) {
            Toast.makeText(getActivity(), "LEAVE", 0).show();
            this.jZ.disconnect();
            this.jZ.off("action", this.ke);
        }
    }

    public void a(String str, AnonymousChatDataObject anonymousChatDataObject) {
        f.F(TAG, str + ": " + anonymousChatDataObject);
        if (str.equalsIgnoreCase("FOUND_MATCHER")) {
            this.ka = anonymousChatDataObject.getName();
            this.kb = anonymousChatDataObject.getRoomId();
            e.v(getContext(), this.kb);
            e.w(getContext(), this.ka);
            I(this.ka);
            f.F(TAG, "MATCHED");
            return;
        }
        if (str.equalsIgnoreCase("NO_MATCHER")) {
            J("Not Matched");
            AlertDialogCenter.showCustomAlertDialog(getContext(), R.string.alert_anonymous_not_match);
            f.F(TAG, "NOT MATCHED");
        } else if (str.equalsIgnoreCase("GOT_MESSAGE")) {
            if (anonymousChatDataObject.getUserId() == null || this.jW == null || this.jW.getUserId() == null || !anonymousChatDataObject.getUserId().equalsIgnoreCase(this.jW.getUserId())) {
                this.ja.add(0, anonymousChatDataObject);
                this.jY.notifyDataSetChanged();
            }
            f.F(TAG, "GOT MESSAGE");
        }
    }

    public void I(String str) {
        this.textView_message.setText(str + " joined\n");
        this.textView_matcherName.setText(str + "");
        this.linearLayout_typeSpace.setVisibility(0);
        this.linearLayout_message.setVisibility(0);
        this.linearLayout_name.setVisibility(8);
    }

    public void J(String str) {
        e.v(getContext(), null);
        e.w(getContext(), null);
        this.textView_message.setText(str);
        this.linearLayout_typeSpace.setVisibility(8);
        this.linearLayout_message.setVisibility(8);
        this.linearLayout_name.setVisibility(0);
    }

    public void cd() {
        C(getResources().getString(R.string.loading_chat));
        f.aA("Show Progress");
        this.jX = new com.picacomic.fregata.b.d(getContext()).dO().am(e.z(getActivity()));
        this.jX.enqueue(new Callback<GeneralResponse<UserProfileResponse>>() { // from class: com.picacomic.fregata.fragments.AnonymousChatFragment.5
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<UserProfileResponse>> call, Response<GeneralResponse<UserProfileResponse>> response) {
                if (response.code() == 200) {
                    if (response.body() != null && response.body().data != null && response.body().data.getUser() != null) {
                        AnonymousChatFragment.this.jW = response.body().data.getUser();
                        AnonymousChatFragment.this.kc = AnonymousChatFragment.this.jW.getUserId();
                        if (AnonymousChatFragment.this.jY != null) {
                            AnonymousChatFragment.this.jY.setUserId(AnonymousChatFragment.this.kc);
                        }
                        if (AnonymousChatFragment.this.getActivity() != null) {
                            if (AnonymousChatFragment.this.gson == null) {
                                AnonymousChatFragment.this.gson = new Gson();
                            }
                            e.i(AnonymousChatFragment.this.getContext(), AnonymousChatFragment.this.gson.toJson(AnonymousChatFragment.this.jW));
                            AnonymousChatFragment.this.bI();
                        }
                    }
                } else {
                    try {
                        new c(AnonymousChatFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                f.aA("dismiss progress");
                AnonymousChatFragment.this.bC();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<UserProfileResponse>> call, Throwable th) {
                th.printStackTrace();
                f.aA("dismiss progress");
                AnonymousChatFragment.this.bC();
                new c(AnonymousChatFragment.this.getActivity()).dN();
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        s(true);
    }
}
