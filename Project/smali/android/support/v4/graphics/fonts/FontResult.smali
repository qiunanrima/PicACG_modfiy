.class public final Landroid/support/v4/graphics/fonts/FontResult;
.super Ljava/lang/Object;
.source "FontResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/graphics/fonts/FontResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mFontVariationSettings:Ljava/lang/String;

.field private final mItalic:Z

.field private final mTtcIndex:I

.field private final mWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Landroid/support/v4/graphics/fonts/FontResult$1;

    invoke-direct {v0}, Landroid/support/v4/graphics/fonts/FontResult$1;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/fonts/FontResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Landroid/support/v4/graphics/fonts/FontResult;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/support/v4/graphics/fonts/FontResult;->mTtcIndex:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/fonts/FontResult;->mFontVariationSettings:Ljava/lang/String;

    goto :goto_0

    .line 104
    :cond_0
    iput-object v0, p0, Landroid/support/v4/graphics/fonts/FontResult;->mFontVariationSettings:Ljava/lang/String;

    .line 106
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/graphics/fonts/FontResult;->mWeight:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Landroid/support/v4/graphics/fonts/FontResult;->mItalic:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/v4/graphics/fonts/FontResult$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/support/v4/graphics/fonts/FontResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;ILjava/lang/String;IZ)V
    .locals 0
    .param p1    # Landroid/os/ParcelFileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Landroid/support/v4/graphics/fonts/FontResult;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 55
    iput p2, p0, Landroid/support/v4/graphics/fonts/FontResult;->mTtcIndex:I

    .line 56
    iput-object p3, p0, Landroid/support/v4/graphics/fonts/FontResult;->mFontVariationSettings:Ljava/lang/String;

    .line 57
    iput p4, p0, Landroid/support/v4/graphics/fonts/FontResult;->mWeight:I

    .line 58
    iput-boolean p5, p0, Landroid/support/v4/graphics/fonts/FontResult;->mItalic:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 62
    iget-object v0, p0, Landroid/support/v4/graphics/fonts/FontResult;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getFontVariationSettings()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/support/v4/graphics/fonts/FontResult;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getItalic()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Landroid/support/v4/graphics/fonts/FontResult;->mItalic:Z

    return v0
.end method

.method public getTtcIndex()I
    .locals 1

    .line 66
    iget v0, p0, Landroid/support/v4/graphics/fonts/FontResult;->mTtcIndex:I

    return v0
.end method

.method public getWeight()I
    .locals 1

    .line 74
    iget v0, p0, Landroid/support/v4/graphics/fonts/FontResult;->mWeight:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 88
    iget-object v0, p0, Landroid/support/v4/graphics/fonts/FontResult;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 89
    iget p2, p0, Landroid/support/v4/graphics/fonts/FontResult;->mTtcIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object p2, p0, Landroid/support/v4/graphics/fonts/FontResult;->mFontVariationSettings:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object p2, p0, Landroid/support/v4/graphics/fonts/FontResult;->mFontVariationSettings:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 92
    iget-object p2, p0, Landroid/support/v4/graphics/fonts/FontResult;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    :cond_1
    iget p2, p0, Landroid/support/v4/graphics/fonts/FontResult;->mWeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-boolean p2, p0, Landroid/support/v4/graphics/fonts/FontResult;->mItalic:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
