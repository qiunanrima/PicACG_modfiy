.class Lio/socket/engineio/client/a/b$3$1;
.super Ljava/lang/Object;
.source "PollingXHR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/a/b$3;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zv:Lio/socket/engineio/client/a/b$3;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/a/b$3;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lio/socket/engineio/client/a/b$3$1;->zv:Lio/socket/engineio/client/a/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 76
    iget-object v0, p0, Lio/socket/engineio/client/a/b$3$1;->zv:Lio/socket/engineio/client/a/b$3;

    iget-object v0, v0, Lio/socket/engineio/client/a/b$3;->yI:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
