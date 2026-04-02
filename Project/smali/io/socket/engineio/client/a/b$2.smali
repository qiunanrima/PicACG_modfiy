.class Lio/socket/engineio/client/a/b$2;
.super Ljava/lang/Object;
.source "PollingXHR.java"

# interfaces
.implements Lio/socket/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/a/b;->a(Lio/socket/engineio/client/a/b$a$a;)Lio/socket/engineio/client/a/b$a;
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

    .line 43
    iput-object p1, p0, Lio/socket/engineio/client/a/b$2;->zt:Lio/socket/engineio/client/a/b;

    iput-object p2, p0, Lio/socket/engineio/client/a/b$2;->zs:Lio/socket/engineio/client/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 4

    .line 47
    iget-object v0, p0, Lio/socket/engineio/client/a/b$2;->zs:Lio/socket/engineio/client/a/b;

    const-string v1, "requestHeaders"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lio/socket/engineio/client/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method
