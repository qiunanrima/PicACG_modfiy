.class Lio/socket/engineio/client/Transport$3;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Transport;->a([Lio/socket/engineio/parser/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zd:Lio/socket/engineio/client/Transport;

.field final synthetic ze:[Lio/socket/engineio/parser/b;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Transport;[Lio/socket/engineio/parser/b;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lio/socket/engineio/client/Transport$3;->zd:Lio/socket/engineio/client/Transport;

    iput-object p2, p0, Lio/socket/engineio/client/Transport$3;->ze:[Lio/socket/engineio/parser/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 106
    iget-object v0, p0, Lio/socket/engineio/client/Transport$3;->zd:Lio/socket/engineio/client/Transport;

    iget-object v0, v0, Lio/socket/engineio/client/Transport;->zc:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v1, Lio/socket/engineio/client/Transport$ReadyState;->zg:Lio/socket/engineio/client/Transport$ReadyState;

    if-ne v0, v1, :cond_0

    .line 108
    :try_start_0
    iget-object v0, p0, Lio/socket/engineio/client/Transport$3;->zd:Lio/socket/engineio/client/Transport;

    iget-object v1, p0, Lio/socket/engineio/client/Transport$3;->ze:[Lio/socket/engineio/parser/b;

    invoke-virtual {v0, v1}, Lio/socket/engineio/client/Transport;->b([Lio/socket/engineio/parser/b;)V
    :try_end_0
    .catch Lio/socket/utf8/UTF8Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Transport not open"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
