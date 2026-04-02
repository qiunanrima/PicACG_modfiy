.class Lcom/picacomic/fregata/activities/BaseActivity$2;
.super Landroid/os/CountDownTimer;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/activities/BaseActivity;->c(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hp:Lcom/picacomic/fregata/activities/BaseActivity;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/BaseActivity;JJ)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/picacomic/fregata/activities/BaseActivity$2;->hp:Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/picacomic/fregata/activities/BaseActivity$2;->hp:Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/BaseActivity;->bC()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
