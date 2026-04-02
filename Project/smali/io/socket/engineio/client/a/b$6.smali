.class Lio/socket/engineio/client/a/b$6;
.super Ljava/lang/Object;
.source "PollingXHR.java"

# interfaces
.implements Lio/socket/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/a/b;->fg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zs:Lio/socket/engineio/client/a/b;

.field final synthetic zt:Lio/socket/engineio/client/a/b;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/a/b;Lio/socket/engineio/client/a/b;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lio/socket/engineio/client/a/b$6;->zt:Lio/socket/engineio/client/a/b;

    iput-object p2, p0, Lio/socket/engineio/client/a/b$6;->zs:Lio/socket/engineio/client/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 1

    .line 120
    new-instance v0, Lio/socket/engineio/client/a/b$6$1;

    invoke-direct {v0, p0, p1}, Lio/socket/engineio/client/a/b$6$1;-><init>(Lio/socket/engineio/client/a/b$6;[Ljava/lang/Object;)V

    invoke-static {v0}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method
