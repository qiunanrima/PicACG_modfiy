.class Lio/socket/client/Manager$12;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Lio/socket/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager;->aE(Ljava/lang/String;)Lio/socket/client/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xc:Lio/socket/client/Manager;

.field final synthetic xd:Lio/socket/client/Manager;

.field final synthetic xm:Lio/socket/client/d;


# direct methods
.method constructor <init>(Lio/socket/client/Manager;Lio/socket/client/d;Lio/socket/client/Manager;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lio/socket/client/Manager$12;->xc:Lio/socket/client/Manager;

    iput-object p2, p0, Lio/socket/client/Manager$12;->xm:Lio/socket/client/d;

    iput-object p3, p0, Lio/socket/client/Manager$12;->xd:Lio/socket/client/Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 1

    .line 440
    iget-object p1, p0, Lio/socket/client/Manager$12;->xm:Lio/socket/client/d;

    iget-object v0, p0, Lio/socket/client/Manager$12;->xd:Lio/socket/client/Manager;

    iget-object v0, v0, Lio/socket/client/Manager;->wX:Lio/socket/engineio/client/Socket;

    invoke-virtual {v0}, Lio/socket/engineio/client/Socket;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lio/socket/client/d;->id:Ljava/lang/String;

    return-void
.end method
