package com.picacomic.fregata.fragments;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import butterknife.BindView;
import com.isseiaoki.simplecropview.CropImageView;
import com.isseiaoki.simplecropview.b.b;
import com.isseiaoki.simplecropview.b.c;
import com.isseiaoki.simplecropview.b.d;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.f;
import com.picacomic.fregata.activities.ImageCropActivity;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class CropImageFragment extends BaseFragment {
    public static final String TAG = "CropImageFragment";

    @BindView(R.id.imageButton_crop_image_done)
    ImageButton imageButton_done;

    @BindView(R.id.imageButton_crop_image_rotate_left)
    ImageButton imageButton_rotateLeft;

    @BindView(R.id.imageButton_crop_image_rotate_right)
    ImageButton imageButton_rotateRight;
    Uri ks;

    @BindView(R.id.cropImageView)
    CropImageView mCropView;
    String oD;
    Uri oE;
    f oF;
    int oG;

    public static CropImageFragment a(String str, int i) {
        CropImageFragment cropImageFragment = new CropImageFragment();
        Bundle bundle = new Bundle();
        bundle.putString("ImageUriString", str);
        bundle.putInt("CROP_TYPE", i);
        cropImageFragment.setArguments(bundle);
        return cropImageFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.oD = getArguments().getString("ImageUriString");
            this.ks = Uri.parse(this.oD);
            this.oG = getArguments().getInt("CROP_TYPE", 2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_crop_image, viewGroup, false);
        a(viewInflate);
        return viewInflate;
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        this.mCropView.a(this.ks, new c() { // from class: com.picacomic.fregata.fragments.CropImageFragment.1
            @Override // com.isseiaoki.simplecropview.b.a
            public void onError() {
            }

            @Override // com.isseiaoki.simplecropview.b.c
            public void onSuccess() {
                if (CropImageFragment.this.oG == 1) {
                    CropImageFragment.this.mCropView.setCropMode(CropImageView.CropMode.aM);
                    CropImageFragment.this.mCropView.d(400, 400);
                } else {
                    CropImageFragment.this.mCropView.setCropMode(CropImageView.CropMode.aP);
                }
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.imageButton_rotateLeft.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.CropImageFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CropImageFragment.this.mCropView.a(CropImageView.RotateDegrees.aY);
            }
        });
        this.imageButton_rotateRight.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.CropImageFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CropImageFragment.this.mCropView.a(CropImageView.RotateDegrees.aV);
            }
        });
        this.imageButton_done.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.CropImageFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CropImageFragment.this.oE = Uri.fromFile(new File(Environment.getExternalStorageDirectory(), "croped-image.jpg"));
                CropImageFragment.this.bB();
                RectF actualCropRect = CropImageFragment.this.mCropView.getActualCropRect();
                if (CropImageFragment.this.oG != 1) {
                    if (actualCropRect.width() > actualCropRect.height()) {
                        CropImageFragment.this.mCropView.c(800, (int) ((actualCropRect.height() * 800.0f) / actualCropRect.width()));
                        CropImageFragment.this.mCropView.d(800, (int) ((actualCropRect.height() * 800.0f) / actualCropRect.width()));
                    } else {
                        CropImageFragment.this.mCropView.c((int) ((actualCropRect.width() * 800.0f) / actualCropRect.height()), 800);
                        CropImageFragment.this.mCropView.d((int) ((actualCropRect.width() * 800.0f) / actualCropRect.height()), 800);
                    }
                }
                com.picacomic.fregata.utils.f.D(CropImageFragment.TAG, "Crop size = w:" + actualCropRect.width() + " h:" + actualCropRect.height());
                CropImageFragment.this.mCropView.a(CropImageFragment.this.oE, new b() { // from class: com.picacomic.fregata.fragments.CropImageFragment.4.1
                    @Override // com.isseiaoki.simplecropview.b.b
                    public void d(Bitmap bitmap) {
                    }

                    @Override // com.isseiaoki.simplecropview.b.a
                    public void onError() {
                    }
                }, new d() { // from class: com.picacomic.fregata.fragments.CropImageFragment.4.2
                    @Override // com.isseiaoki.simplecropview.b.d
                    public void a(Uri uri) {
                        CropImageFragment.this.oF.b(uri);
                        CropImageFragment.this.bC();
                    }

                    @Override // com.isseiaoki.simplecropview.b.a
                    public void onError() {
                        CropImageFragment.this.bC();
                    }
                });
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (getActivity() == null || !(getActivity() instanceof ImageCropActivity)) {
            return;
        }
        this.oF = (ImageCropActivity) getActivity();
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        this.oF = null;
        super.onDetach();
    }
}
