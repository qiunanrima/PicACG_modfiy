.class public Lcom/picacomic/fregata/c/c;
.super Ljava/lang/Object;
.source "SortingKeys.java"


# static fields
.field public static final uQ:[Ljava/lang/String;

.field public static final uR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    .line 20
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "dd"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "da"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/picacomic/fregata/c/c;->uQ:[Ljava/lang/String;

    const/4 v1, 0x4

    .line 22
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "dd"

    aput-object v2, v1, v3

    const-string v2, "da"

    aput-object v2, v1, v4

    const-string v2, "ld"

    aput-object v2, v1, v0

    const-string v0, "vd"

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/picacomic/fregata/c/c;->uR:[Ljava/lang/String;

    return-void
.end method
