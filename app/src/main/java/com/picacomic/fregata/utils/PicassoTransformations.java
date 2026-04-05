package com.picacomic.fregata.utils;

import com.squareup.picasso.Transformation;

/* JADX INFO: loaded from: classes.dex */
public final class PicassoTransformations {
    public static final Transformation CARD_COVER = new RoundedCornersTransformation(32, 0);
    public static final Transformation LARGE_COVER = new RoundedCornersTransformation(40, 0);
    public static final Transformation SMALL_COVER = new RoundedCornersTransformation(24, 0);
    public static final Transformation SCREENSHOT = new RoundedCornersTransformation(28, 0);

    private PicassoTransformations() {
    }
}
