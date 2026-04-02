.class Lio/socket/engineio/client/a/b$1$1;
.super Ljava/lang/Object;
.source "PollingXHR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/a/b$1;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ki:[Ljava/lang/Object;

.field final synthetic zu:Lio/socket/engineio/client/a/b$1;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/a/b$1;[Ljava/lang/Object;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lio/socket/engineio/client/a/b$1$1;->zu:Lio/socket/engineio/client/a/b$1;

    iput-object p2, p0, Lio/socket/engineio/client/a/b$1$1;->ki:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 55
    iget-object v0, p0, Lio/socket/engineio/client/a/b$1$1;->zu:Lio/socket/engineio/client/a/b$1;

    iget-object v0, v0, Lio/socket/engineio/client/a/b$1;->zs:Lio/socket/engineio/client/a/b;

    const-string v1, "responseHeaders"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/socket/engineio/client/a/b$1$1;->ki:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lio/socket/engineio/client/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method
