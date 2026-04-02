.class Lio/socket/client/Socket$2;
.super Ljava/util/LinkedList;
.source "Socket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/d;->eH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lio/socket/client/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic xH:Lio/socket/client/Manager;

.field final synthetic xI:Lio/socket/client/d;


# direct methods
.method constructor <init>(Lio/socket/client/d;Lio/socket/client/Manager;)V
    .locals 1

    .line 101
    iput-object p1, p0, Lio/socket/client/Socket$2;->xI:Lio/socket/client/d;

    iput-object p2, p0, Lio/socket/client/Socket$2;->xH:Lio/socket/client/Manager;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 102
    iget-object p1, p0, Lio/socket/client/Socket$2;->xH:Lio/socket/client/Manager;

    const-string p2, "open"

    new-instance v0, Lio/socket/client/Socket$2$1;

    invoke-direct {v0, p0}, Lio/socket/client/Socket$2$1;-><init>(Lio/socket/client/Socket$2;)V

    invoke-static {p1, p2, v0}, Lio/socket/client/c;->a(Lio/socket/b/a;Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/client/c$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/socket/client/Socket$2;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object p1, p0, Lio/socket/client/Socket$2;->xH:Lio/socket/client/Manager;

    const-string p2, "packet"

    new-instance v0, Lio/socket/client/Socket$2$2;

    invoke-direct {v0, p0}, Lio/socket/client/Socket$2$2;-><init>(Lio/socket/client/Socket$2;)V

    invoke-static {p1, p2, v0}, Lio/socket/client/c;->a(Lio/socket/b/a;Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/client/c$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/socket/client/Socket$2;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object p1, p0, Lio/socket/client/Socket$2;->xH:Lio/socket/client/Manager;

    const-string p2, "close"

    new-instance v0, Lio/socket/client/Socket$2$3;

    invoke-direct {v0, p0}, Lio/socket/client/Socket$2$3;-><init>(Lio/socket/client/Socket$2;)V

    invoke-static {p1, p2, v0}, Lio/socket/client/c;->a(Lio/socket/b/a;Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/client/c$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/socket/client/Socket$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
