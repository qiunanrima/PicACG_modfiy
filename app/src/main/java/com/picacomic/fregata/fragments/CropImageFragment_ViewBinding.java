package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.ImageButton;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.isseiaoki.simplecropview.CropImageView;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class CropImageFragment_ViewBinding implements Unbinder {
    private CropImageFragment oJ;

    @UiThread
    public CropImageFragment_ViewBinding(CropImageFragment cropImageFragment, View view) {
        this.oJ = cropImageFragment;
        cropImageFragment.mCropView = (CropImageView) Utils.findRequiredViewAsType(view, R.id.cropImageView, "field 'mCropView'", CropImageView.class);
        cropImageFragment.imageButton_rotateLeft = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_crop_image_rotate_left, "field 'imageButton_rotateLeft'", ImageButton.class);
        cropImageFragment.imageButton_rotateRight = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_crop_image_rotate_right, "field 'imageButton_rotateRight'", ImageButton.class);
        cropImageFragment.imageButton_done = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_crop_image_done, "field 'imageButton_done'", ImageButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CropImageFragment cropImageFragment = this.oJ;
        if (cropImageFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.oJ = null;
        cropImageFragment.mCropView = null;
        cropImageFragment.imageButton_rotateLeft = null;
        cropImageFragment.imageButton_rotateRight = null;
        cropImageFragment.imageButton_done = null;
    }
}
