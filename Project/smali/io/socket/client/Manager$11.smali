.class Lio/socket/client/Manager$11;
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
.method constructor <init>(Lio/socket/client/Manager;Lio/socket/client/Manager;Lio/socket/client/d;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lio/socket/client/Manager$11;->xc:Lio/socket/client/Manager;

    iput-object p2, p0, Lio/socket/client/Manager$11;->xd:Lio/socket/client/Manager;

    iput-object p3, p0, Lio/socket/client/Manager$11;->xm:Lio/socket/client/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 1

    .line 434
    iget-object p1, p0, Lio/socket/client/Manager$11;->xd:Lio/socket/client/Manager;

    invoke-static {p1}, Lio/socket/client/Manager;->j(Lio/socket/client/Manager;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lio/socket/client/Manager$11;->xm:Lio/socket/client/d;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
