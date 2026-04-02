.class Lio/socket/engineio/client/a/a$3;
.super Ljava/lang/Object;
.source "Polling.java"

# interfaces
.implements Lio/socket/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/a/a;->fd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zm:Lio/socket/engineio/client/a/a;

.field final synthetic zn:Lio/socket/engineio/client/a/a;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/a/a;Lio/socket/engineio/client/a/a;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lio/socket/engineio/client/a/a$3;->zm:Lio/socket/engineio/client/a/a;

    iput-object p2, p0, Lio/socket/engineio/client/a/a$3;->zn:Lio/socket/engineio/client/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 4

    .line 155
    invoke-static {}, Lio/socket/engineio/client/a/a;->fh()Ljava/util/logging/Logger;

    move-result-object p1

    const-string v0, "writing close packet"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 157
    :try_start_0
    iget-object p1, p0, Lio/socket/engineio/client/a/a$3;->zn:Lio/socket/engineio/client/a/a;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/socket/engineio/parser/b;

    const/4 v1, 0x0

    new-instance v2, Lio/socket/engineio/parser/b;

    const-string v3, "close"

    invoke-direct {v2, v3}, Lio/socket/engineio/parser/b;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lio/socket/engineio/client/a/a;->b([Lio/socket/engineio/parser/b;)V
    :try_end_0
    .catch Lio/socket/utf8/UTF8Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 159
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
