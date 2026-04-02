.class Lio/socket/client/Manager$3$1;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xk:Lio/socket/client/Manager$3;


# direct methods
.method constructor <init>(Lio/socket/client/Manager$3;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lio/socket/client/Manager$3$1;->xk:Lio/socket/client/Manager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 550
    iget-object v0, p0, Lio/socket/client/Manager$3$1;->xk:Lio/socket/client/Manager$3;

    iget-object v0, v0, Lio/socket/client/Manager$3;->xd:Lio/socket/client/Manager;

    invoke-static {v0}, Lio/socket/client/Manager;->l(Lio/socket/client/Manager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 552
    :cond_0
    invoke-static {}, Lio/socket/client/Manager;->eG()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "attempting reconnect"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lio/socket/client/Manager$3$1;->xk:Lio/socket/client/Manager$3;

    iget-object v0, v0, Lio/socket/client/Manager$3;->xd:Lio/socket/client/Manager;

    invoke-static {v0}, Lio/socket/client/Manager;->m(Lio/socket/client/Manager;)Lio/socket/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/socket/a/a;->eu()I

    move-result v0

    .line 554
    iget-object v1, p0, Lio/socket/client/Manager$3$1;->xk:Lio/socket/client/Manager$3;

    iget-object v1, v1, Lio/socket/client/Manager$3;->xd:Lio/socket/client/Manager;

    const-string v2, "reconnect_attempt"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lio/socket/client/Manager;->a(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    iget-object v1, p0, Lio/socket/client/Manager$3$1;->xk:Lio/socket/client/Manager$3;

    iget-object v1, v1, Lio/socket/client/Manager$3;->xd:Lio/socket/client/Manager;

    const-string v2, "reconnecting"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lio/socket/client/Manager;->a(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    iget-object v0, p0, Lio/socket/client/Manager$3$1;->xk:Lio/socket/client/Manager$3;

    iget-object v0, v0, Lio/socket/client/Manager$3;->xd:Lio/socket/client/Manager;

    invoke-static {v0}, Lio/socket/client/Manager;->l(Lio/socket/client/Manager;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 560
    :cond_1
    iget-object v0, p0, Lio/socket/client/Manager$3$1;->xk:Lio/socket/client/Manager$3;

    iget-object v0, v0, Lio/socket/client/Manager$3;->xd:Lio/socket/client/Manager;

    new-instance v1, Lio/socket/client/Manager$3$1$1;

    invoke-direct {v1, p0}, Lio/socket/client/Manager$3$1$1;-><init>(Lio/socket/client/Manager$3$1;)V

    invoke-virtual {v0, v1}, Lio/socket/client/Manager;->a(Lio/socket/client/Manager$b;)Lio/socket/client/Manager;

    return-void
.end method
