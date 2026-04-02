.class Lio/socket/engineio/client/a/a$4;
.super Ljava/lang/Object;
.source "Polling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/a/a;->b([Lio/socket/engineio/parser/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zm:Lio/socket/engineio/client/a/a;

.field final synthetic zn:Lio/socket/engineio/client/a/a;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/a/a;Lio/socket/engineio/client/a/a;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lio/socket/engineio/client/a/a$4;->zm:Lio/socket/engineio/client/a/a;

    iput-object p2, p0, Lio/socket/engineio/client/a/a$4;->zn:Lio/socket/engineio/client/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 181
    iget-object v0, p0, Lio/socket/engineio/client/a/a$4;->zn:Lio/socket/engineio/client/a/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/socket/engineio/client/a/a;->za:Z

    .line 182
    iget-object v0, p0, Lio/socket/engineio/client/a/a$4;->zn:Lio/socket/engineio/client/a/a;

    const-string v1, "drain"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/socket/engineio/client/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method
