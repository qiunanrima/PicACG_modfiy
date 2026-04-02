.class final Lcom/picacomic/fregata/objects/LeaderboardComicListObject$1;
.super Ljava/lang/Object;
.source "LeaderboardComicListObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picacomic/fregata/objects/LeaderboardComicListObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/picacomic/fregata/objects/LeaderboardComicListObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/picacomic/fregata/objects/LeaderboardComicListObject;
    .locals 1

    .line 195
    new-instance v0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;

    invoke-direct {v0, p1}, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/objects/LeaderboardComicListObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/picacomic/fregata/objects/LeaderboardComicListObject;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/picacomic/fregata/objects/LeaderboardComicListObject;
    .locals 0

    .line 200
    new-array p1, p1, [Lcom/picacomic/fregata/objects/LeaderboardComicListObject;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/objects/LeaderboardComicListObject$1;->newArray(I)[Lcom/picacomic/fregata/objects/LeaderboardComicListObject;

    move-result-object p1

    return-object p1
.end method
