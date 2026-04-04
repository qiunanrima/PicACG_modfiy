package com.picacomic.fregata.activities;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.f;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.fragments.CropImageFragment;
import com.picacomic.fregata.objects.requests.AvatarBody;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.objects.responses.PutAvatarResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.g;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class ImageCropActivity extends BaseActivity implements f {
    public static final String TAG = "ImageCropActivity";
    Call<GeneralResponse<PutAvatarResponse>> ir;
    String is;
    public int type;

    @Override // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_image_crop);
        Intent intent = getIntent();
        if (intent != null) {
            this.is = intent.getStringExtra("KEY_IMAGE_URI_STRING");
            this.type = intent.getIntExtra("KEY_ACTION_TYPE", 2);
            getSupportFragmentManager().beginTransaction().add(R.id.container, CropImageFragment.a(this.is, this.type), CropImageFragment.TAG).commit();
        } else {
            setResult(0);
            finish();
        }
    }

    @Override // com.picacomic.fregata.a_pkg.f
    public void b(Uri uri) {
        Intent intent = new Intent();
        intent.putExtra("CROP_IMAGE_RESULT_URI", uri.toString());
        setResult(-1, intent);
        switch (this.type) {
            case 1:
                c(uri);
                break;
            case 2:
                this.is = null;
                finish();
                break;
            default:
                this.is = null;
                finish();
                break;
        }
    }

    public void c(Uri uri) {
        C(getResources().getString(R.string.loading_register));
        com.picacomic.fregata.utils.f.aA("Show Progress");
        d dVar = new d(this);
        try {
            this.ir = dVar.dO().a(e.z(this), new AvatarBody(g.f(g.c(this, uri, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION))));
            this.ir.enqueue(new Callback<GeneralResponse<PutAvatarResponse>>() { // from class: com.picacomic.fregata.activities.ImageCropActivity.1
                @Override // retrofit2.Callback
                public void onResponse(Call<GeneralResponse<PutAvatarResponse>> call, Response<GeneralResponse<PutAvatarResponse>> response) {
                    if (response.code() == 200) {
                        if (response.body() != null && response.body().data != null && response.body().data.getAvatar() != null) {
                            ImageCropActivity.this.is = null;
                            ImageCropActivity.this.finish();
                        }
                    } else {
                        try {
                            new c(ImageCropActivity.this, response.code(), response.errorBody().string()).dN();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    com.picacomic.fregata.utils.f.aA("dismiss progress");
                    ImageCropActivity.this.bC();
                }

                @Override // retrofit2.Callback
                public void onFailure(Call<GeneralResponse<PutAvatarResponse>> call, Throwable th) {
                    th.printStackTrace();
                    com.picacomic.fregata.utils.f.aA("dismiss progress");
                    ImageCropActivity.this.bC();
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        if (this.ir != null) {
            this.ir.cancel();
        }
        super.onDestroy();
    }
}
