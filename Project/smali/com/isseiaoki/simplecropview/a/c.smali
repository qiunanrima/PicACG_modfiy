.class public Lcom/isseiaoki/simplecropview/a/c;
.super Ljava/lang/Object;
.source "ValueAnimatorV14.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Lcom/isseiaoki/simplecropview/a/a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private bX:Landroid/animation/ValueAnimator;

.field private bY:Lcom/isseiaoki/simplecropview/a/b;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/isseiaoki/simplecropview/a/c$1;

    invoke-direct {v0, p0}, Lcom/isseiaoki/simplecropview/a/c$1;-><init>(Lcom/isseiaoki/simplecropview/a/c;)V

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/a/c;->bY:Lcom/isseiaoki/simplecropview/a/b;

    const/4 v0, 0x2

    .line 33
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/a/c;->bX:Landroid/animation/ValueAnimator;

    .line 34
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/a/c;->bX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 35
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/a/c;->bX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/a/c;->bX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 42
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/a/c;->bX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/a/c;->bX:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 46
    :goto_0
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/a/c;->bX:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public a(Lcom/isseiaoki/simplecropview/a/b;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 61
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/a/c;->bY:Lcom/isseiaoki/simplecropview/a/b;

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/a/c;->bX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/a/c;->bY:Lcom/isseiaoki/simplecropview/a/b;

    invoke-interface {p1}, Lcom/isseiaoki/simplecropview/a/b;->k()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/a/c;->bY:Lcom/isseiaoki/simplecropview/a/b;

    invoke-interface {p1}, Lcom/isseiaoki/simplecropview/a/b;->k()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/a/c;->bY:Lcom/isseiaoki/simplecropview/a/b;

    invoke-interface {p1}, Lcom/isseiaoki/simplecropview/a/b;->j()V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/a/c;->bY:Lcom/isseiaoki/simplecropview/a/b;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/isseiaoki/simplecropview/a/b;->h(F)V

    return-void
.end method
