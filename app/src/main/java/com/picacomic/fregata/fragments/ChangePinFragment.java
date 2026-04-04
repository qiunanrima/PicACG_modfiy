package com.picacomic.fregata.fragments;

import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import butterknife.BindView;
import com.picacomic.fregata.R;
import com.picacomic.fregata.activities.BaseActivity;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.utils.e;

/* JADX INFO: loaded from: classes.dex */
public class ChangePinFragment extends BaseFragment {
    public static final String TAG = "ChangePinFragment";

    @BindView(R.id.button_change_pin_cancel)
    Button button_cancel;

    @BindView(R.id.button_change_pin)
    Button button_change;

    @BindView(R.id.editText_change_pin_new)
    EditText editText_pin;

    @BindView(R.id.editText_change_pin_new_confirm)
    EditText editText_pinConfirm;
    boolean kK;
    boolean kL;

    @BindView(R.id.toolbar)
    Toolbar toolbar;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_change_pin, viewGroup, false);
        a(viewInflate);
        return viewInflate;
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        this.kK = false;
        this.kL = false;
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.editText_pin.addTextChangedListener(new TextWatcher() { // from class: com.picacomic.fregata.fragments.ChangePinFragment.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (ChangePinFragment.this.editText_pin.getText().toString().length() < 4) {
                    ChangePinFragment.this.editText_pin.setError(ChangePinFragment.this.getString(R.string.alert_pin_password_length));
                    ChangePinFragment.this.kK = false;
                } else {
                    ChangePinFragment.this.editText_pin.setError(null);
                    ChangePinFragment.this.kK = true;
                }
            }
        });
        this.editText_pinConfirm.addTextChangedListener(new TextWatcher() { // from class: com.picacomic.fregata.fragments.ChangePinFragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (!ChangePinFragment.this.editText_pin.getText().toString().equals(ChangePinFragment.this.editText_pinConfirm.getText().toString())) {
                    ChangePinFragment.this.editText_pinConfirm.setError(ChangePinFragment.this.getString(R.string.alert_not_same_password));
                    ChangePinFragment.this.kL = false;
                } else {
                    ChangePinFragment.this.editText_pinConfirm.setError(null);
                    ChangePinFragment.this.kL = true;
                }
            }
        });
        this.button_cancel.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChangePinFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChangePinFragment.this.getActivity() == null || ChangePinFragment.this.getFragmentManager() == null) {
                    return;
                }
                Toast.makeText(ChangePinFragment.this.getActivity(), R.string.change_pin_cancel_success, 0).show();
                e.g(ChangePinFragment.this.getContext(), "");
                ChangePinFragment.this.getFragmentManager().popBackStack();
            }
        });
        this.button_change.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ChangePinFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ChangePinFragment.this.getActivity() == null || ChangePinFragment.this.getFragmentManager() == null || !ChangePinFragment.this.kK || !ChangePinFragment.this.kL) {
                    return;
                }
                Toast.makeText(ChangePinFragment.this.getActivity(), R.string.change_pin_set_success, 0).show();
                e.g(ChangePinFragment.this.getContext(), ChangePinFragment.this.editText_pinConfirm.getText().toString());
                ChangePinFragment.this.getFragmentManager().popBackStack();
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        a(this.toolbar, R.string.setting_pin_title, true);
        if (getActivity() != null && (getActivity() instanceof MainActivity)) {
            ((MainActivity) getActivity()).t(8);
        }
        String strY = e.y(getContext());
        if (strY == null || strY.length() <= 0 || getActivity() == null || !(getActivity() instanceof MainActivity)) {
            return;
        }
        ((BaseActivity) getActivity()).bD();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
    }
}
