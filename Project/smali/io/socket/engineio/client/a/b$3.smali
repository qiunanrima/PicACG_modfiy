.class Lio/socket/engineio/client/a/b$3;
.super Ljava/lang/Object;
.source "PollingXHR.java"

# interfaces
.implements Lio/socket/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/a/b;->c([BLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yI:Ljava/lang/Runnable;

.field final synthetic zt:Lio/socket/engineio/client/a/b;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/a/b;Ljava/lang/Runnable;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lio/socket/engineio/client/a/b$3;->zt:Lio/socket/engineio/client/a/b;

    iput-object p2, p0, Lio/socket/engineio/client/a/b$3;->yI:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 0

    .line 73
    new-instance p1, Lio/socket/engineio/client/a/b$3$1;

    invoke-direct {p1, p0}, Lio/socket/engineio/client/a/b$3$1;-><init>(Lio/socket/engineio/client/a/b$3;)V

    invoke-static {p1}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method
