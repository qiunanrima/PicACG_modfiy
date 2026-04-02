.class Lio/socket/engineio/client/Socket$13$4;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Lio/socket/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yL:Lio/socket/engineio/client/Socket$13;

.field final synthetic yN:Ljava/lang/Runnable;

.field final synthetic yO:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$13;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lio/socket/engineio/client/Socket$13$4;->yL:Lio/socket/engineio/client/Socket$13;

    iput-object p2, p0, Lio/socket/engineio/client/Socket$13$4;->yO:Ljava/lang/Runnable;

    iput-object p3, p0, Lio/socket/engineio/client/Socket$13$4;->yN:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 0

    .line 751
    iget-object p1, p0, Lio/socket/engineio/client/Socket$13$4;->yL:Lio/socket/engineio/client/Socket$13;

    iget-object p1, p1, Lio/socket/engineio/client/Socket$13;->yv:Lio/socket/engineio/client/Socket;

    invoke-static {p1}, Lio/socket/engineio/client/Socket;->h(Lio/socket/engineio/client/Socket;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 752
    iget-object p1, p0, Lio/socket/engineio/client/Socket$13$4;->yO:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 754
    :cond_0
    iget-object p1, p0, Lio/socket/engineio/client/Socket$13$4;->yN:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
