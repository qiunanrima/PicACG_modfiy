.class Lio/socket/engineio/client/a/c$3;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/a/c;->b([Lio/socket/engineio/parser/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zF:Lio/socket/engineio/client/a/c;

.field final synthetic zG:Lio/socket/engineio/client/a/c;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/a/c;Lio/socket/engineio/client/a/c;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lio/socket/engineio/client/a/c$3;->zF:Lio/socket/engineio/client/a/c;

    iput-object p2, p0, Lio/socket/engineio/client/a/c$3;->zG:Lio/socket/engineio/client/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 152
    new-instance v0, Lio/socket/engineio/client/a/c$3$1;

    invoke-direct {v0, p0}, Lio/socket/engineio/client/a/c$3$1;-><init>(Lio/socket/engineio/client/a/c$3;)V

    invoke-static {v0}, Lio/socket/g/a;->c(Ljava/lang/Runnable;)V

    return-void
.end method
