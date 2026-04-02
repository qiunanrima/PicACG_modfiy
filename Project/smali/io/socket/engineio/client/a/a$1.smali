.class Lio/socket/engineio/client/a/a$1;
.super Ljava/lang/Object;
.source "Polling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/a/a;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zl:Ljava/lang/Runnable;

.field final synthetic zm:Lio/socket/engineio/client/a/a;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/a/a;Ljava/lang/Runnable;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lio/socket/engineio/client/a/a$1;->zm:Lio/socket/engineio/client/a/a;

    iput-object p2, p0, Lio/socket/engineio/client/a/a$1;->zl:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 42
    iget-object v0, p0, Lio/socket/engineio/client/a/a$1;->zm:Lio/socket/engineio/client/a/a;

    .line 44
    iget-object v1, p0, Lio/socket/engineio/client/a/a$1;->zm:Lio/socket/engineio/client/a/a;

    sget-object v2, Lio/socket/engineio/client/Transport$ReadyState;->zi:Lio/socket/engineio/client/Transport$ReadyState;

    invoke-static {v1, v2}, Lio/socket/engineio/client/a/a;->a(Lio/socket/engineio/client/a/a;Lio/socket/engineio/client/Transport$ReadyState;)Lio/socket/engineio/client/Transport$ReadyState;

    .line 46
    new-instance v1, Lio/socket/engineio/client/a/a$1$1;

    invoke-direct {v1, p0, v0}, Lio/socket/engineio/client/a/a$1$1;-><init>(Lio/socket/engineio/client/a/a$1;Lio/socket/engineio/client/a/a;)V

    .line 55
    iget-object v0, p0, Lio/socket/engineio/client/a/a$1;->zm:Lio/socket/engineio/client/a/a;

    invoke-static {v0}, Lio/socket/engineio/client/a/a;->a(Lio/socket/engineio/client/a/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/socket/engineio/client/a/a$1;->zm:Lio/socket/engineio/client/a/a;

    iget-boolean v0, v0, Lio/socket/engineio/client/a/a;->za:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 56
    new-array v2, v0, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    .line 58
    iget-object v4, p0, Lio/socket/engineio/client/a/a$1;->zm:Lio/socket/engineio/client/a/a;

    invoke-static {v4}, Lio/socket/engineio/client/a/a;->a(Lio/socket/engineio/client/a/a;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 59
    invoke-static {}, Lio/socket/engineio/client/a/a;->fh()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "we are currently polling - waiting to pause"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 60
    aget v4, v2, v3

    add-int/2addr v4, v0

    aput v4, v2, v3

    .line 61
    iget-object v4, p0, Lio/socket/engineio/client/a/a$1;->zm:Lio/socket/engineio/client/a/a;

    const-string v5, "pollComplete"

    new-instance v6, Lio/socket/engineio/client/a/a$1$2;

    invoke-direct {v6, p0, v2, v1}, Lio/socket/engineio/client/a/a$1$2;-><init>(Lio/socket/engineio/client/a/a$1;[ILjava/lang/Runnable;)V

    invoke-virtual {v4, v5, v6}, Lio/socket/engineio/client/a/a;->b(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 72
    :cond_2
    iget-object v4, p0, Lio/socket/engineio/client/a/a$1;->zm:Lio/socket/engineio/client/a/a;

    iget-boolean v4, v4, Lio/socket/engineio/client/a/a;->za:Z

    if-nez v4, :cond_3

    .line 73
    invoke-static {}, Lio/socket/engineio/client/a/a;->fh()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "we are currently writing - waiting to pause"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 74
    aget v4, v2, v3

    add-int/2addr v4, v0

    aput v4, v2, v3

    .line 75
    iget-object v0, p0, Lio/socket/engineio/client/a/a$1;->zm:Lio/socket/engineio/client/a/a;

    const-string v3, "drain"

    new-instance v4, Lio/socket/engineio/client/a/a$1$3;

    invoke-direct {v4, p0, v2, v1}, Lio/socket/engineio/client/a/a$1$3;-><init>(Lio/socket/engineio/client/a/a$1;[ILjava/lang/Runnable;)V

    invoke-virtual {v0, v3, v4}, Lio/socket/engineio/client/a/a;->b(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    :cond_3
    :goto_1
    return-void
.end method
