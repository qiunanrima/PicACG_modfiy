.class Lcom/picacomic/fregata/fragments/ProfileFragment$7;
.super Landroid/os/CountDownTimer;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ProfileFragment;->j(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

.field final synthetic qX:F


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ProfileFragment;JJF)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$7;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    iput p6, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$7;->qX:F

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$7;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->expCircleView:Lcom/picacomic/fregata/utils/views/ExpCircleView;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$7;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->expCircleView:Lcom/picacomic/fregata/utils/views/ExpCircleView;

    iget v1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$7;->qX:F

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->setAngle(F)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$7;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->expCircleView:Lcom/picacomic/fregata/utils/views/ExpCircleView;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    sub-long/2addr v0, p1

    long-to-float p1, v0

    .line 242
    iget p2, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$7;->qX:F

    mul-float p1, p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 243
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$7;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ProfileFragment;->expCircleView:Lcom/picacomic/fregata/utils/views/ExpCircleView;

    invoke-virtual {p2, p1}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->setAngle(F)V

    :cond_0
    return-void
.end method
