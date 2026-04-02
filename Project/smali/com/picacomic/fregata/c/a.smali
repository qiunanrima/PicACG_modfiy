.class public Lcom/picacomic/fregata/c/a;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final uN:[Ljava/lang/String;

.field public static final uO:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "m"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "f"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "bot"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/picacomic/fregata/c/a;->uN:[Ljava/lang/String;

    const/4 v0, 0x4

    .line 33
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/picacomic/fregata/c/a;->uO:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x400
        0x800
        0x1000
    .end array-data
.end method
