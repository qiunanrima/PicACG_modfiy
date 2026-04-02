.class public Lcom/just/agentweb/e;
.super Ljava/lang/Object;
.source "AgentWebPermissions.java"


# static fields
.field public static final dB:[Ljava/lang/String;

.field public static final dC:[Ljava/lang/String;

.field public static final dD:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    .line 40
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.CAMERA"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/just/agentweb/e;->dB:[Ljava/lang/String;

    const/4 v1, 0x2

    .line 44
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v2, v3

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v4, v2, v0

    sput-object v2, Lcom/just/agentweb/e;->dC:[Ljava/lang/String;

    .line 49
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v0

    sput-object v1, Lcom/just/agentweb/e;->dD:[Ljava/lang/String;

    return-void
.end method
