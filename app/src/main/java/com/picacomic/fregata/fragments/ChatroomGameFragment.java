package com.picacomic.fregata.fragments;

import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Toast;
import com.picacomic.fregata.databinding.FragmentChatroomGameBinding;
import com.google.gson.Gson;
import com.picacomic.fregata.R;
import com.picacomic.fregata.adapters.ChatroomGameMessageRecyclerViewAdapter;
import com.picacomic.fregata.objects.chatroomGameObjects.ChatroomGameEmit;
import com.picacomic.fregata.utils.ChatroomGame.ChatroomGameView;
import com.picacomic.fregata.utils.f;

import io.socket.client.IO;
import io.socket.client.Socket;
import io.socket.emitter.Emitter;

import java.net.URISyntaxException;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomGameFragment extends BaseFragment implements View.OnClickListener {
    public static final String TAG = "ChatroomGameFragment";
    ArrayList<String> arrayList;

    FragmentChatroomGameBinding binding;
    Button button_t1;
    Button button_t2;
    Button button_t3;
    Button button_t4;
    ChatroomGameView gameView;
    Gson gson;
    LinearLayoutManager jQ;
    private Socket jZ;
    ChatroomGameMessageRecyclerViewAdapter mF;
    ChatroomGameEmit mG;
    private Emitter.Listener mH;
    private Emitter.Listener mI;
    private Emitter.Listener mJ;

    RecyclerView recyclerView_gameMessage;

    public ChatroomGameFragment() {
        IO.Options options = new IO.Options();
        options.transports = new String[]{"websocket"};
        try {
            this.jZ = IO.socket("https://game.picacomic.com", options);
        } catch (URISyntaxException unused) {
        }
        this.mH = new Emitter.Listener() { // from class: com.picacomic.fregata.fragments.ChatroomGameFragment.1
            @Override // Emitter.Listener
            public void call(final Object... objArr) {
                ChatroomGameFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomGameFragment.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        JSONObject jSONObject = (JSONObject) objArr[0];
                        try {
                            if (jSONObject.has("message")) {
                                jSONObject.getString("message");
                            }
                            f.D(ChatroomGameFragment.TAG, "get Profile");
                            Toast.makeText(ChatroomGameFragment.this.getContext(), "get profile", 0).show();
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                });
            }
        };
        this.mI = new Emitter.Listener() { // from class: com.picacomic.fregata.fragments.ChatroomGameFragment.2
            @Override // Emitter.Listener
            public void call(final Object... objArr) {
                ChatroomGameFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomGameFragment.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        JSONObject jSONObject = (JSONObject) objArr[0];
                        try {
                            if (jSONObject.has("message")) {
                                jSONObject.getString("message");
                            }
                            Toast.makeText(ChatroomGameFragment.this.getContext(), "get Explored", 0).show();
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                });
            }
        };
        this.mJ = new Emitter.Listener() { // from class: com.picacomic.fregata.fragments.ChatroomGameFragment.3
            @Override // Emitter.Listener
            public void call(final Object... objArr) {
                ChatroomGameFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.picacomic.fregata.fragments.ChatroomGameFragment.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        JSONObject jSONObject = (JSONObject) objArr[0];
                        try {
                            if (jSONObject.has("message")) {
                                jSONObject.getString("message");
                            }
                            Toast.makeText(ChatroomGameFragment.this.getContext(), "get Confirmed", 0).show();
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                });
            }
        };
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mG = new ChatroomGameEmit("test");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentChatroomGameBinding.inflate(layoutInflater, viewGroup, false);
        this.button_t1 = this.binding.buttonTesting1;
        this.button_t2 = this.binding.buttonTesting2;
        this.button_t3 = this.binding.buttonTesting3;
        this.button_t4 = this.binding.buttonTesting4;
        this.gameView = this.binding.chatroomGameView;
        this.recyclerView_gameMessage = this.binding.recyclerViewChatroomGame;
        a(this.binding.getRoot());
        return this.binding.getRoot();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        if (this.arrayList == null) {
            this.arrayList = new ArrayList<>();
        }
        if (this.mF == null) {
            this.mF = new ChatroomGameMessageRecyclerViewAdapter(getContext(), this.arrayList);
        }
        if (this.jQ == null) {
            this.jQ = new LinearLayoutManager(getContext(), 1, true);
        }
        cH();
    }

    public void cG() {
        if (this.gson == null) {
            this.gson = new Gson();
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.recyclerView_gameMessage.setLayoutManager(this.jQ);
        this.recyclerView_gameMessage.setAdapter(this.mF);
        this.button_t1.setOnClickListener(this);
        this.button_t2.setOnClickListener(this);
        this.button_t3.setOnClickListener(this);
        this.button_t4.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.button_t1) {
            Toast.makeText(getContext(), "test 1 - INIT", 0).show();
            cI();
        }
        if (view == this.button_t2) {
            Toast.makeText(getContext(), "test 2", 0).show();
            this.gameView.getHeroSprite().setAction(1);
        }
        if (view == this.button_t3) {
            Toast.makeText(getContext(), "test 2", 0).show();
            this.gameView.getHeroSprite().setAction(2);
        }
        if (view == this.button_t4) {
            Toast.makeText(getContext(), "test 2", 0).show();
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        for (int i = 0; i < 30; i++) {
            this.arrayList.add("Message");
        }
        this.mF.notifyDataSetChanged();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
    }

    public void cH() {
        this.jZ.on("PICA_GAME/GOT_PROFILE", this.mH);
        this.jZ.on("PICA_GAME/EXPLORED", this.mI);
        this.jZ.on("PICA_GAME/CONFIRMED", this.mJ);
        this.jZ.connect();
    }

    private void cI() {
        cG();
        this.jZ.emit("PICA_GAME", this.gson.toJson(new ChatroomGameEmit("INIT", "testId")));
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.gameView != null) {
            this.gameView.setRunning(true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        if (this.gameView != null) {
            this.gameView.setRunning(false);
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (this.gameView != null) {
            this.gameView.setRunning(false);
        }
        this.jZ.disconnect();
        this.jZ.off("PICA_GAME/GOT_PROFILE", this.mH);
        this.jZ.off("PICA_GAME/EXPLORED", this.mI);
        this.jZ.off("PICA_GAME/CONFIRMED", this.mJ);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, com.picacomic.fregata.a_pkg.i
    public void b(View view) {
        Toast.makeText(getContext(), "Game BackPress", 0).show();
        ChatroomFragment chatroomFragment = (ChatroomFragment) getParentFragment();
        if (chatroomFragment != null) {
            chatroomFragment.b(view);
        }
    }
}
