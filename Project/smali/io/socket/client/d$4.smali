.class Lio/socket/client/d$4;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/d;->eN()Lio/socket/client/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xI:Lio/socket/client/d;


# direct methods
.method constructor <init>(Lio/socket/client/d;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lio/socket/client/d$4;->xI:Lio/socket/client/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 433
    iget-object v0, p0, Lio/socket/client/d$4;->xI:Lio/socket/client/d;

    invoke-static {v0}, Lio/socket/client/d;->c(Lio/socket/client/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-static {}, Lio/socket/client/d;->eP()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "performing disconnect (%s)"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/socket/client/d$4;->xI:Lio/socket/client/d;

    invoke-static {v5}, Lio/socket/client/d;->j(Lio/socket/client/d;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lio/socket/client/d$4;->xI:Lio/socket/client/d;

    new-instance v1, Lio/socket/f/b;

    invoke-direct {v1, v2}, Lio/socket/f/b;-><init>(I)V

    invoke-static {v0, v1}, Lio/socket/client/d;->b(Lio/socket/client/d;Lio/socket/f/b;)V

    .line 438
    :cond_0
    iget-object v0, p0, Lio/socket/client/d$4;->xI:Lio/socket/client/d;

    invoke-static {v0}, Lio/socket/client/d;->k(Lio/socket/client/d;)V

    .line 440
    iget-object v0, p0, Lio/socket/client/d$4;->xI:Lio/socket/client/d;

    invoke-static {v0}, Lio/socket/client/d;->c(Lio/socket/client/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lio/socket/client/d$4;->xI:Lio/socket/client/d;

    const-string v1, "io client disconnect"

    invoke-static {v0, v1}, Lio/socket/client/d;->a(Lio/socket/client/d;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
