.class final Lio/socket/client/c$1;
.super Ljava/lang/Object;
.source "On.java"

# interfaces
.implements Lio/socket/client/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/c;->a(Lio/socket/b/a;Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/client/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic xx:Lio/socket/b/a;

.field final synthetic xy:Ljava/lang/String;

.field final synthetic xz:Lio/socket/b/a$a;


# direct methods
.method constructor <init>(Lio/socket/b/a;Ljava/lang/String;Lio/socket/b/a$a;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lio/socket/client/c$1;->xx:Lio/socket/b/a;

    iput-object p2, p0, Lio/socket/client/c$1;->xy:Ljava/lang/String;

    iput-object p3, p0, Lio/socket/client/c$1;->xz:Lio/socket/b/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 14
    iget-object v0, p0, Lio/socket/client/c$1;->xx:Lio/socket/b/a;

    iget-object v1, p0, Lio/socket/client/c$1;->xy:Ljava/lang/String;

    iget-object v2, p0, Lio/socket/client/c$1;->xz:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/b/a;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    return-void
.end method
