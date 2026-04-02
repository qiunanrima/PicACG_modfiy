.class Lio/socket/b/a$b;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Lio/socket/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public final xR:Ljava/lang/String;

.field public final xS:Lio/socket/b/a$a;

.field final synthetic xT:Lio/socket/b/a;


# direct methods
.method public constructor <init>(Lio/socket/b/a;Ljava/lang/String;Lio/socket/b/a$a;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lio/socket/b/a$b;->xT:Lio/socket/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lio/socket/b/a$b;->xR:Ljava/lang/String;

    .line 158
    iput-object p3, p0, Lio/socket/b/a$b;->xS:Lio/socket/b/a$a;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lio/socket/b/a$b;->xT:Lio/socket/b/a;

    iget-object v1, p0, Lio/socket/b/a$b;->xR:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lio/socket/b/a;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 164
    iget-object v0, p0, Lio/socket/b/a$b;->xS:Lio/socket/b/a$a;

    invoke-interface {v0, p1}, Lio/socket/b/a$a;->a([Ljava/lang/Object;)V

    return-void
.end method
