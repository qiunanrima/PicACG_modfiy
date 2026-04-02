.class public Lio/socket/client/c;
.super Ljava/lang/Object;
.source "On.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/client/c$a;
    }
.end annotation


# direct methods
.method public static a(Lio/socket/b/a;Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/client/c$a;
    .locals 1

    .line 10
    invoke-virtual {p0, p1, p2}, Lio/socket/b/a;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 11
    new-instance v0, Lio/socket/client/c$1;

    invoke-direct {v0, p0, p1, p2}, Lio/socket/client/c$1;-><init>(Lio/socket/b/a;Ljava/lang/String;Lio/socket/b/a$a;)V

    return-object v0
.end method
