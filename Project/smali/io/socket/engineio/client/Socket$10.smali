.class Lio/socket/engineio/client/Socket$10;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket;->b([BLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yI:Ljava/lang/Runnable;

.field final synthetic yJ:[B

.field final synthetic yv:Lio/socket/engineio/client/Socket;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;[BLjava/lang/Runnable;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lio/socket/engineio/client/Socket$10;->yv:Lio/socket/engineio/client/Socket;

    iput-object p2, p0, Lio/socket/engineio/client/Socket$10;->yJ:[B

    iput-object p3, p0, Lio/socket/engineio/client/Socket$10;->yI:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 668
    iget-object v0, p0, Lio/socket/engineio/client/Socket$10;->yv:Lio/socket/engineio/client/Socket;

    const-string v1, "message"

    iget-object v2, p0, Lio/socket/engineio/client/Socket$10;->yJ:[B

    iget-object v3, p0, Lio/socket/engineio/client/Socket$10;->yI:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lio/socket/engineio/client/Socket;->a(Lio/socket/engineio/client/Socket;Ljava/lang/String;[BLjava/lang/Runnable;)V

    return-void
.end method
