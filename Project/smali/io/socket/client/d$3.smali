.class Lio/socket/client/d$3;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Lio/socket/client/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/d;->ai(I)Lio/socket/client/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xI:Lio/socket/client/d;

.field final synthetic xK:[Z

.field final synthetic xL:I

.field final synthetic xM:Lio/socket/client/d;


# direct methods
.method constructor <init>(Lio/socket/client/d;[ZILio/socket/client/d;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lio/socket/client/d$3;->xI:Lio/socket/client/d;

    iput-object p2, p0, Lio/socket/client/d$3;->xK:[Z

    iput p3, p0, Lio/socket/client/d$3;->xL:I

    iput-object p4, p0, Lio/socket/client/d$3;->xM:Lio/socket/client/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 1

    .line 352
    new-instance v0, Lio/socket/client/d$3$1;

    invoke-direct {v0, p0, p1}, Lio/socket/client/d$3$1;-><init>(Lio/socket/client/d$3;[Ljava/lang/Object;)V

    invoke-static {v0}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method
