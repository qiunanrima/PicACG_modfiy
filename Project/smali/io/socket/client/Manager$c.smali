.class public Lio/socket/client/Manager$c;
.super Lio/socket/engineio/client/Socket$a;
.source "Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/client/Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public xn:Z

.field public xo:I

.field public xp:J

.field public xq:J

.field public xr:D

.field public xs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 610
    invoke-direct {p0}, Lio/socket/engineio/client/Socket$a;-><init>()V

    const/4 v0, 0x1

    .line 612
    iput-boolean v0, p0, Lio/socket/client/Manager$c;->xn:Z

    const-wide/16 v0, 0x4e20

    .line 621
    iput-wide v0, p0, Lio/socket/client/Manager$c;->xs:J

    return-void
.end method
