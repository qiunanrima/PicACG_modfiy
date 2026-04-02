.class Lio/socket/client/Manager$1$2;
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

    .line 271
    iput-object p1, p0, Lio/socket/client/Manager$1$2;->xe:Lio/socket/client/Manager$1;

    iput-object p2, p0, Lio/socket/client/Manager$1$2;->xd:Lio/socket/client/Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 1

    .line 274
    iget-object p1, p0, Lio/socket/client/Manager$1$2;->xd:Lio/socket/client/Manager;

    invoke-static {p1}, Lio/socket/client/Manager;->c(Lio/socket/client/Manager;)V

    .line 275
    iget-object p1, p0, Lio/socket/client/Manager$1$2;->xe:Lio/socket/client/Manager$1;

    iget-object p1, p1, Lio/socket/client/Manager$1;->xb:Lio/socket/client/Manager$b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/socket/client/Manager$1$2;->xe:Lio/socket/client/Manager$1;

    iget-object p1, p1, Lio/socket/client/Manager$1;->xb:Lio/socket/client/Manager$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/socket/client/Manager$b;->b(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
