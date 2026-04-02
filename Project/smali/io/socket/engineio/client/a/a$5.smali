.class Lio/socket/engineio/client/a/a$5;
.super Ljava/lang/Object;
.source "Polling.java"

# interfaces
.implements Lio/socket/engineio/parser/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/a/a;->b([Lio/socket/engineio/parser/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/socket/engineio/parser/c$b<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic zm:Lio/socket/engineio/client/a/a;

.field final synthetic zn:Lio/socket/engineio/client/a/a;

.field final synthetic zr:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/a/a;Lio/socket/engineio/client/a/a;Ljava/lang/Runnable;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lio/socket/engineio/client/a/a$5;->zm:Lio/socket/engineio/client/a/a;

    iput-object p2, p0, Lio/socket/engineio/client/a/a$5;->zn:Lio/socket/engineio/client/a/a;

    iput-object p3, p0, Lio/socket/engineio/client/a/a$5;->zr:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 186
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/socket/engineio/client/a/a$5;->d([B)V

    return-void
.end method

.method public d([B)V
    .locals 2

    .line 189
    iget-object v0, p0, Lio/socket/engineio/client/a/a$5;->zn:Lio/socket/engineio/client/a/a;

    iget-object v1, p0, Lio/socket/engineio/client/a/a$5;->zr:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, v1}, Lio/socket/engineio/client/a/a;->c([BLjava/lang/Runnable;)V

    return-void
.end method
