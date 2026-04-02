.class public Lio/socket/f/c;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/f/c$a;,
        Lio/socket/f/c$b;,
        Lio/socket/f/c$c;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field public static wB:I

.field public static zV:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    const-class v0, Lio/socket/f/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/f/c;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x4

    .line 52
    sput v0, Lio/socket/f/c;->wB:I

    const/4 v1, 0x7

    .line 57
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CONNECT"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "DISCONNECT"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "EVENT"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "ACK"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "ERROR"

    aput-object v2, v1, v0

    const-string v0, "BINARY_EVENT"

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const-string v0, "BINARY_ACK"

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sput-object v1, Lio/socket/f/c;->zV:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic eG()Ljava/util/logging/Logger;
    .locals 1

    .line 13
    sget-object v0, Lio/socket/f/c;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static fm()Lio/socket/f/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/socket/f/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Lio/socket/f/b;

    const-string v1, "parser error"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lio/socket/f/b;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method static synthetic fn()Lio/socket/f/b;
    .locals 1

    .line 13
    invoke-static {}, Lio/socket/f/c;->fm()Lio/socket/f/b;

    move-result-object v0

    return-object v0
.end method
