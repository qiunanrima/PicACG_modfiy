.class Lio/socket/engineio/client/Socket$12;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket;->eR()Lio/socket/engineio/client/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yv:Lio/socket/engineio/client/Socket;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lio/socket/engineio/client/Socket$12;->yv:Lio/socket/engineio/client/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 230
    iget-object v0, p0, Lio/socket/engineio/client/Socket$12;->yv:Lio/socket/engineio/client/Socket;

    invoke-static {v0}, Lio/socket/engineio/client/Socket;->a(Lio/socket/engineio/client/Socket;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/socket/engineio/client/Socket;->eY()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/socket/engineio/client/Socket$12;->yv:Lio/socket/engineio/client/Socket;

    invoke-static {v0}, Lio/socket/engineio/client/Socket;->b(Lio/socket/engineio/client/Socket;)Ljava/util/List;

    move-result-object v0

    const-string v1, "websocket"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "websocket"

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lio/socket/engineio/client/Socket$12;->yv:Lio/socket/engineio/client/Socket;

    invoke-static {v0}, Lio/socket/engineio/client/Socket;->b(Lio/socket/engineio/client/Socket;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lio/socket/engineio/client/Socket$12;->yv:Lio/socket/engineio/client/Socket;

    .line 235
    new-instance v1, Lio/socket/engineio/client/Socket$12$1;

    invoke-direct {v1, p0, v0}, Lio/socket/engineio/client/Socket$12$1;-><init>(Lio/socket/engineio/client/Socket$12;Lio/socket/engineio/client/Socket;)V

    invoke-static {v1}, Lio/socket/g/a;->c(Ljava/lang/Runnable;)V

    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lio/socket/engineio/client/Socket$12;->yv:Lio/socket/engineio/client/Socket;

    invoke-static {v0}, Lio/socket/engineio/client/Socket;->b(Lio/socket/engineio/client/Socket;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    :goto_0
    iget-object v1, p0, Lio/socket/engineio/client/Socket$12;->yv:Lio/socket/engineio/client/Socket;

    sget-object v2, Lio/socket/engineio/client/Socket$ReadyState;->yV:Lio/socket/engineio/client/Socket$ReadyState;

    invoke-static {v1, v2}, Lio/socket/engineio/client/Socket;->a(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket$ReadyState;)Lio/socket/engineio/client/Socket$ReadyState;

    .line 246
    iget-object v1, p0, Lio/socket/engineio/client/Socket$12;->yv:Lio/socket/engineio/client/Socket;

    invoke-static {v1, v0}, Lio/socket/engineio/client/Socket;->a(Lio/socket/engineio/client/Socket;Ljava/lang/String;)Lio/socket/engineio/client/Transport;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lio/socket/engineio/client/Socket$12;->yv:Lio/socket/engineio/client/Socket;

    invoke-static {v1, v0}, Lio/socket/engineio/client/Socket;->a(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Transport;)V

    .line 248
    invoke-virtual {v0}, Lio/socket/engineio/client/Transport;->fa()Lio/socket/engineio/client/Transport;

    return-void
.end method
