.class public Lcom/isseiaoki/simplecropview/c/a;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static enabled:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 14
    sget-boolean v0, Lcom/isseiaoki/simplecropview/c/a;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SimpleCropView"

    .line 15
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
