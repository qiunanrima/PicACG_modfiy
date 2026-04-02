.class Lio/socket/engineio/client/a/c$2$5;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/a/c$2;->onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$t:Ljava/lang/Throwable;

.field final synthetic zI:Lio/socket/engineio/client/a/c$2;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/a/c$2;Ljava/lang/Throwable;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lio/socket/engineio/client/a/c$2$5;->zI:Lio/socket/engineio/client/a/c$2;

    iput-object p2, p0, Lio/socket/engineio/client/a/c$2$5;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 135
    iget-object v0, p0, Lio/socket/engineio/client/a/c$2$5;->zI:Lio/socket/engineio/client/a/c$2;

    iget-object v0, v0, Lio/socket/engineio/client/a/c$2;->zG:Lio/socket/engineio/client/a/c;

    const-string v1, "websocket error"

    iget-object v2, p0, Lio/socket/engineio/client/a/c$2$5;->val$t:Ljava/lang/Throwable;

    check-cast v2, Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Lio/socket/engineio/client/a/c;->a(Lio/socket/engineio/client/a/c;Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;

    return-void
.end method
