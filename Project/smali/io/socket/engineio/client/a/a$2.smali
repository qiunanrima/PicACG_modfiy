.class Lio/socket/engineio/client/a/a$2;
.super Ljava/lang/Object;
.source "Polling.java"

# interfaces
.implements Lio/socket/engineio/parser/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/a/a;->c(Ljava/lang/Object;)V
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

    .line 112
    iput-object p1, p0, Lio/socket/engineio/client/a/a$2;->zm:Lio/socket/engineio/client/a/a;

    iput-object p2, p0, Lio/socket/engineio/client/a/a$2;->zn:Lio/socket/engineio/client/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/socket/engineio/parser/b;II)Z
    .locals 0

    .line 115
    iget-object p2, p0, Lio/socket/engineio/client/a/a$2;->zn:Lio/socket/engineio/client/a/a;

    invoke-static {p2}, Lio/socket/engineio/client/a/a;->b(Lio/socket/engineio/client/a/a;)Lio/socket/engineio/client/Transport$ReadyState;

    move-result-object p2

    sget-object p3, Lio/socket/engineio/client/Transport$ReadyState;->zf:Lio/socket/engineio/client/Transport$ReadyState;

    if-ne p2, p3, :cond_0

    .line 116
    iget-object p2, p0, Lio/socket/engineio/client/a/a$2;->zn:Lio/socket/engineio/client/a/a;

    invoke-static {p2}, Lio/socket/engineio/client/a/a;->c(Lio/socket/engineio/client/a/a;)V

    :cond_0
    const-string p2, "close"

    .line 119
    iget-object p3, p1, Lio/socket/engineio/parser/b;->type:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 120
    iget-object p1, p0, Lio/socket/engineio/client/a/a$2;->zn:Lio/socket/engineio/client/a/a;

    invoke-static {p1}, Lio/socket/engineio/client/a/a;->d(Lio/socket/engineio/client/a/a;)V

    const/4 p1, 0x0

    return p1

    .line 124
    :cond_1
    iget-object p2, p0, Lio/socket/engineio/client/a/a$2;->zn:Lio/socket/engineio/client/a/a;

    invoke-static {p2, p1}, Lio/socket/engineio/client/a/a;->a(Lio/socket/engineio/client/a/a;Lio/socket/engineio/parser/b;)V

    const/4 p1, 0x1

    return p1
.end method
