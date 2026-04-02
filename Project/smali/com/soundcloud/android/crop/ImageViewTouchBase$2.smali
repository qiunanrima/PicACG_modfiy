.class Lcom/soundcloud/android/crop/ImageViewTouchBase$2;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soundcloud/android/crop/ImageViewTouchBase;->d(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wo:Lcom/soundcloud/android/crop/ImageViewTouchBase;

.field final synthetic wp:F

.field final synthetic wq:J

.field final synthetic wr:F

.field final synthetic ws:F

.field final synthetic wt:F

.field final synthetic wu:F


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/ImageViewTouchBase;FJFFFF)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->wo:Lcom/soundcloud/android/crop/ImageViewTouchBase;

    iput p2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->wp:F

    iput-wide p3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->wq:J

    iput p5, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->wr:F

    iput p6, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->ws:F

    iput p7, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->wt:F

    iput p8, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->wu:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 331
    iget v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->wp:F

    iget-wide v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->wq:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 332
    iget v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->wr:F

    iget v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->ws:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 333
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->wo:Lcom/soundcloud/android/crop/ImageViewTouchBase;

    iget v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->wt:F

    iget v4, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->wu:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->c(FFF)V

    .line 335
    iget v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->wp:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->wo:Lcom/soundcloud/android/crop/ImageViewTouchBase;

    iget-object v0, v0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
