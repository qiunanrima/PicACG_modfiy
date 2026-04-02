.class Lio/socket/client/Manager$8;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Lio/socket/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager;->eB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xc:Lio/socket/client/Manager;


# direct methods
.method constructor <init>(Lio/socket/client/Manager;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lio/socket/client/Manager$8;->xc:Lio/socket/client/Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 2

    .line 371
    iget-object v0, p0, Lio/socket/client/Manager$8;->xc:Lio/socket/client/Manager;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0, p1}, Lio/socket/client/Manager;->a(Lio/socket/client/Manager;Ljava/lang/Exception;)V

    return-void
.end method
