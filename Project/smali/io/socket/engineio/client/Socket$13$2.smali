.class Lio/socket/engineio/client/Socket$13$2;
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
.field final synthetic yB:Lio/socket/engineio/client/Socket;

.field final synthetic yL:Lio/socket/engineio/client/Socket$13;

.field final synthetic yM:[Lio/socket/b/a$a;

.field final synthetic yN:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$13;Lio/socket/engineio/client/Socket;[Lio/socket/b/a$a;Ljava/lang/Runnable;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lio/socket/engineio/client/Socket$13$2;->yL:Lio/socket/engineio/client/Socket$13;

    iput-object p2, p0, Lio/socket/engineio/client/Socket$13$2;->yB:Lio/socket/engineio/client/Socket;

    iput-object p3, p0, Lio/socket/engineio/client/Socket$13$2;->yM:[Lio/socket/b/a$a;

    iput-object p4, p0, Lio/socket/engineio/client/Socket$13$2;->yN:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 3

    .line 732
    iget-object p1, p0, Lio/socket/engineio/client/Socket$13$2;->yB:Lio/socket/engineio/client/Socket;

    const-string v0, "upgrade"

    iget-object v1, p0, Lio/socket/engineio/client/Socket$13$2;->yM:[Lio/socket/b/a$a;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1, v0, v1}, Lio/socket/engineio/client/Socket;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 733
    iget-object p1, p0, Lio/socket/engineio/client/Socket$13$2;->yB:Lio/socket/engineio/client/Socket;

    const-string v0, "upgradeError"

    iget-object v1, p0, Lio/socket/engineio/client/Socket$13$2;->yM:[Lio/socket/b/a$a;

    aget-object v1, v1, v2

    invoke-virtual {p1, v0, v1}, Lio/socket/engineio/client/Socket;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 734
    iget-object p1, p0, Lio/socket/engineio/client/Socket$13$2;->yN:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
