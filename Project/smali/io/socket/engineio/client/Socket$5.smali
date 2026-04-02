.class Lio/socket/engineio/client/Socket$5;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket;->aJ(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yA:Lio/socket/b/a$a;

.field final synthetic yB:Lio/socket/engineio/client/Socket;

.field final synthetic yC:Lio/socket/b/a$a;

.field final synthetic yD:Lio/socket/b/a$a;

.field final synthetic yv:Lio/socket/engineio/client/Socket;

.field final synthetic yw:Lio/socket/b/a$a;

.field final synthetic yx:[Lio/socket/engineio/client/Transport;

.field final synthetic yz:Lio/socket/b/a$a;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;[Lio/socket/engineio/client/Transport;Lio/socket/b/a$a;Lio/socket/b/a$a;Lio/socket/b/a$a;Lio/socket/engineio/client/Socket;Lio/socket/b/a$a;Lio/socket/b/a$a;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lio/socket/engineio/client/Socket$5;->yv:Lio/socket/engineio/client/Socket;

    iput-object p2, p0, Lio/socket/engineio/client/Socket$5;->yx:[Lio/socket/engineio/client/Transport;

    iput-object p3, p0, Lio/socket/engineio/client/Socket$5;->yz:Lio/socket/b/a$a;

    iput-object p4, p0, Lio/socket/engineio/client/Socket$5;->yw:Lio/socket/b/a$a;

    iput-object p5, p0, Lio/socket/engineio/client/Socket$5;->yA:Lio/socket/b/a$a;

    iput-object p6, p0, Lio/socket/engineio/client/Socket$5;->yB:Lio/socket/engineio/client/Socket;

    iput-object p7, p0, Lio/socket/engineio/client/Socket$5;->yC:Lio/socket/b/a$a;

    iput-object p8, p0, Lio/socket/engineio/client/Socket$5;->yD:Lio/socket/b/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 457
    iget-object v0, p0, Lio/socket/engineio/client/Socket$5;->yx:[Lio/socket/engineio/client/Transport;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "open"

    iget-object v3, p0, Lio/socket/engineio/client/Socket$5;->yz:Lio/socket/b/a$a;

    invoke-virtual {v0, v2, v3}, Lio/socket/engineio/client/Transport;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 458
    iget-object v0, p0, Lio/socket/engineio/client/Socket$5;->yx:[Lio/socket/engineio/client/Transport;

    aget-object v0, v0, v1

    const-string v2, "error"

    iget-object v3, p0, Lio/socket/engineio/client/Socket$5;->yw:Lio/socket/b/a$a;

    invoke-virtual {v0, v2, v3}, Lio/socket/engineio/client/Transport;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 459
    iget-object v0, p0, Lio/socket/engineio/client/Socket$5;->yx:[Lio/socket/engineio/client/Transport;

    aget-object v0, v0, v1

    const-string v1, "close"

    iget-object v2, p0, Lio/socket/engineio/client/Socket$5;->yA:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/engineio/client/Transport;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 460
    iget-object v0, p0, Lio/socket/engineio/client/Socket$5;->yB:Lio/socket/engineio/client/Socket;

    const-string v1, "close"

    iget-object v2, p0, Lio/socket/engineio/client/Socket$5;->yC:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/engineio/client/Socket;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 461
    iget-object v0, p0, Lio/socket/engineio/client/Socket$5;->yB:Lio/socket/engineio/client/Socket;

    const-string v1, "upgrading"

    iget-object v2, p0, Lio/socket/engineio/client/Socket$5;->yD:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/engineio/client/Socket;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    return-void
.end method
