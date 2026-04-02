.class final Lcom/picacomic/fregata/objects/ComicListObject$1;
.super Ljava/lang/Object;
.source "ComicListObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picacomic/fregata/objects/ComicListObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/picacomic/fregata/objects/ComicListObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/picacomic/fregata/objects/ComicListObject;
    .locals 1

    .line 88
    new-instance v0, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-direct {v0, p1}, Lcom/picacomic/fregata/objects/ComicListObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/objects/ComicListObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/picacomic/fregata/objects/ComicListObject;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/picacomic/fregata/objects/ComicListObject;
    .locals 0

    .line 93
    new-array p1, p1, [Lcom/picacomic/fregata/objects/ComicListObject;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/objects/ComicListObject$1;->newArray(I)[Lcom/picacomic/fregata/objects/ComicListObject;

    move-result-object p1

    return-object p1
.end method
