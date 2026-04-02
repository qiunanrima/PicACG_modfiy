.class Lio/socket/client/Manager$1$1;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Lio/socket/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xd:Lio/socket/client/Manager;

.field final synthetic xe:Lio/socket/client/Manager$1;


# direct methods
.method constructor <init>(Lio/socket/client/Manager$1;Lio/socket/client/Manager;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lio/socket/client/Manager$1$1;->xe:Lio/socket/client/Manager$1;

    iput-object p2, p0, Lio/socket/client/Manager$1$1;->xd:Lio/socket/client/Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lio/socket/client/Manager$1$1;->xd:Lio/socket/client/Manager;

    const-string v1, "transport"

    invoke-virtual {v0, v1, p1}, Lio/socket/client/Manager;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method
