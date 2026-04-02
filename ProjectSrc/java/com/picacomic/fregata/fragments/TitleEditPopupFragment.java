package com.picacomic.fregata.fragments;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import androidx.fragment.app.DialogFragment;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.picacomic.fregata.R;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.objects.requests.UpdateUserTitleBody;
import com.picacomic.fregata.objects.responses.RegisterResponse;
import com.picacomic.fregata.utils.e;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class TitleEditPopupFragment extends DialogFragment {
    public static final String TAG = "TitleEditPopupFragment";

    @BindView(R.id.button_title_edit_popup_cancel)
    Button button_cancel;

    @BindView(R.id.button_title_edit_popup_confirm)
    Button button_confirm;

    @BindView(R.id.editText_title_edit_popup_new_title)
    EditText editText_newTitle;
    Call<RegisterResponse> lg;
    public String rY;

    @BindView(R.id.textView_title_edit_popup_title)
    TextView textView_title;

    @BindView(R.id.textView_title_edit_popup_user_id)
    TextView textView_userId;
    public String userId;

    public static TitleEditPopupFragment o(String str, String str2) {
        TitleEditPopupFragment titleEditPopupFragment = new TitleEditPopupFragment();
        Bundle bundle = new Bundle();
        bundle.putString("USER_ID", str);
        bundle.putString("USER_TITLE", str2);
        titleEditPopupFragment.setArguments(bundle);
        return titleEditPopupFragment;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.userId = getArguments().getString("USER_ID", null);
            this.rY = getArguments().getString("USER_TITLE", null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_title_edit_popup, viewGroup, false);
        ButterKnife.bind(this, viewInflate);
        bF();
        bI();
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.getWindow().requestFeature(1);
        dialogOnCreateDialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialogOnCreateDialog.setCancelable(true);
        dialogOnCreateDialog.setCanceledOnTouchOutside(true);
        dialogOnCreateDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.picacomic.fregata.fragments.TitleEditPopupFragment.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 4 || i == 84;
            }
        });
        return dialogOnCreateDialog;
    }

    public void bF() {
        this.button_cancel.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.TitleEditPopupFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TitleEditPopupFragment.this.dismiss();
            }
        });
        this.button_confirm.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.TitleEditPopupFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TitleEditPopupFragment.this.editText_newTitle == null || TitleEditPopupFragment.this.editText_newTitle.getText() == null || TitleEditPopupFragment.this.editText_newTitle.getText().toString() == null) {
                    return;
                }
                TitleEditPopupFragment.this.aj(TitleEditPopupFragment.this.editText_newTitle.getText().toString());
            }
        });
    }

    public void bI() {
        if (this.userId != null) {
            if (this.textView_userId != null) {
                this.textView_userId.setText(this.userId + "");
            }
            if (this.textView_title == null || this.rY == null) {
                return;
            }
            this.textView_title.setText(this.rY + "");
            return;
        }
        if (getContext() != null) {
            dismiss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        if (this.lg != null) {
            this.lg.cancel();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        System.gc();
        if (isAdded()) {
            dismiss();
        }
        super.onDetach();
    }

    public void aj(String str) {
        this.lg = new d(getContext()).dO().a(e.z(getActivity()), this.userId, new UpdateUserTitleBody(str));
        this.lg.enqueue(new Callback<RegisterResponse>() { // from class: com.picacomic.fregata.fragments.TitleEditPopupFragment.4
            @Override // retrofit2.Callback
            public void onResponse(Call<RegisterResponse> call, Response<RegisterResponse> response) {
                if (response.code() == 200) {
                    Toast.makeText(TitleEditPopupFragment.this.getContext(), "Update Title Success", 0).show();
                    TitleEditPopupFragment.this.dismiss();
                    return;
                }
                try {
                    new c(TitleEditPopupFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                Toast.makeText(TitleEditPopupFragment.this.getContext(), "Update Title Failed", 0).show();
                TitleEditPopupFragment.this.dismiss();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<RegisterResponse> call, Throwable th) {
                th.printStackTrace();
                new c(TitleEditPopupFragment.this.getActivity()).dN();
                Toast.makeText(TitleEditPopupFragment.this.getContext(), "Update Title Failed", 0).show();
                TitleEditPopupFragment.this.dismiss();
            }
        });
    }
}
