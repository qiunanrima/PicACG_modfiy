.class public Lcom/isseiaoki/simplecropview/CropImageView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isseiaoki/simplecropview/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field animationDuration:I

.field bA:Landroid/graphics/Bitmap$CompressFormat;

.field bB:I

.field bC:Z

.field bD:I

.field bE:I

.field bF:I

.field bG:I

.field bH:Z

.field bI:I

.field bJ:I

.field bK:I

.field bL:I

.field backgroundColor:I

.field bd:Landroid/graphics/Bitmap;

.field be:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

.field bf:I

.field bg:I

.field bh:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

.field bi:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

.field bj:Z

.field bk:Z

.field bl:I

.field bm:I

.field bn:F

.field bo:F

.field bp:F

.field bq:F

.field br:F

.field bs:Z

.field bt:I

.field bu:I

.field bv:F

.field bw:F

.field bx:Z

.field by:Landroid/net/Uri;

.field bz:Landroid/net/Uri;

.field exifRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2216
    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState$1;

    invoke-direct {v0}, Lcom/isseiaoki/simplecropview/CropImageView$SavedState$1;-><init>()V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 2132
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2133
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bd:Landroid/graphics/Bitmap;

    .line 2134
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->be:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    .line 2135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->backgroundColor:I

    .line 2136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bf:I

    .line 2137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bg:I

    .line 2138
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bh:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 2139
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bi:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 2140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bj:Z

    .line 2141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bk:Z

    .line 2142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bl:I

    .line 2143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bm:I

    .line 2144
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bn:F

    .line 2145
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bo:F

    .line 2146
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bp:F

    .line 2147
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bq:F

    .line 2148
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->br:F

    .line 2149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bs:Z

    .line 2150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bt:I

    .line 2151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bu:I

    .line 2152
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bv:F

    .line 2153
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bw:F

    .line 2154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bx:Z

    .line 2155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->animationDuration:I

    .line 2156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->exifRotation:I

    .line 2157
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->by:Landroid/net/Uri;

    .line 2158
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bz:Landroid/net/Uri;

    .line 2159
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bA:Landroid/graphics/Bitmap$CompressFormat;

    .line 2160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bB:I

    .line 2161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bC:Z

    .line 2162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bD:I

    .line 2163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bE:I

    .line 2164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bF:I

    .line 2165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bG:I

    .line 2166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bH:Z

    .line 2167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bI:I

    .line 2168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bJ:I

    .line 2169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bK:I

    .line 2170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bL:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/isseiaoki/simplecropview/CropImageView$1;)V
    .locals 0

    .line 2087
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2128
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 2175
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2176
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bd:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2177
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->be:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 2178
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2179
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bf:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2180
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2181
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bh:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 2182
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bi:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 2183
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bj:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2184
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bk:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2185
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2186
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2187
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bn:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2188
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bo:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2189
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bp:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2190
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bq:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2191
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->br:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2192
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bs:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2193
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2194
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2195
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bv:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2196
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2197
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bx:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2198
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->animationDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2199
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->exifRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2200
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->by:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2201
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bz:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2202
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bA:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 2203
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bB:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2204
    iget-boolean p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bC:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2205
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bD:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2206
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bE:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2207
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bF:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2208
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bG:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2209
    iget-boolean p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bH:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2210
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bI:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2211
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bJ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2212
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bK:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2213
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bL:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
