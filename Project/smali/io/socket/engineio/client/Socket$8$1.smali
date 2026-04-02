.class Lio/socket/engineio/client/Socket$8$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yG:Lio/socket/engineio/client/Socket$8;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$8;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lio/socket/engineio/client/Socket$8$1;->yG:Lio/socket/engineio/client/Socket$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 590
    iget-object v0, p0, Lio/socket/engineio/client/Socket$8$1;->yG:Lio/socket/engineio/client/Socket$8;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$8;->yv:Lio/socket/engineio/client/Socket;

    const-string v1, "ping"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method
