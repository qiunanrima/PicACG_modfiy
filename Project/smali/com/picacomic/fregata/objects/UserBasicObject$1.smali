.class final Lcom/picacomic/fregata/objects/UserBasicObject$1;
.super Ljava/lang/Object;
.source "UserBasicObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picacomic/fregata/objects/UserBasicObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/picacomic/fregata/objects/UserBasicObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/picacomic/fregata/objects/UserBasicObject;
    .locals 1

    .line 262
    new-instance v0, Lcom/picacomic/fregata/objects/UserBasicObject;

    invoke-direct {v0, p1}, Lcom/picacomic/fregata/objects/UserBasicObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/objects/UserBasicObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/picacomic/fregata/objects/UserBasicObject;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/picacomic/fregata/objects/UserBasicObject;
    .locals 0

    .line 267
    new-array p1, p1, [Lcom/picacomic/fregata/objects/UserBasicObject;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/objects/UserBasicObject$1;->newArray(I)[Lcom/picacomic/fregata/objects/UserBasicObject;

    move-result-object p1

    return-object p1
.end method
