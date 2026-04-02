.class Lio/socket/client/Manager$1$4;
.super Ljava/util/TimerTask;
.source "Manager.java"


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

.field final synthetic xf:J

.field final synthetic xg:Lio/socket/client/c$a;

.field final synthetic xh:Lio/socket/engineio/client/Socket;


# direct methods
.method constructor <init>(Lio/socket/client/Manager$1;JLio/socket/client/c$a;Lio/socket/engineio/client/Socket;Lio/socket/client/Manager;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lio/socket/client/Manager$1$4;->xe:Lio/socket/client/Manager$1;

    iput-wide p2, p0, Lio/socket/client/Manager$1$4;->xf:J

    iput-object p4, p0, Lio/socket/client/Manager$1$4;->xg:Lio/socket/client/c$a;

    iput-object p5, p0, Lio/socket/client/Manager$1$4;->xh:Lio/socket/engineio/client/Socket;

    iput-object p6, p0, Lio/socket/client/Manager$1$4;->xd:Lio/socket/client/Manager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 306
    new-instance v0, Lio/socket/client/Manager$1$4$1;

    invoke-direct {v0, p0}, Lio/socket/client/Manager$1$4$1;-><init>(Lio/socket/client/Manager$1$4;)V

    invoke-static {v0}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method
