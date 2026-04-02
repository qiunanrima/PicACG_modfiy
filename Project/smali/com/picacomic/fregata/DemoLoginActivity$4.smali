.class Lcom/picacomic/fregata/DemoLoginActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DemoLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/DemoLoginActivity;->g(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hf:Lcom/picacomic/fregata/DemoLoginActivity;

.field final synthetic hg:Z


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/DemoLoginActivity;Z)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/picacomic/fregata/DemoLoginActivity$4;->hf:Lcom/picacomic/fregata/DemoLoginActivity;

    iput-boolean p2, p0, Lcom/picacomic/fregata/DemoLoginActivity$4;->hg:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/picacomic/fregata/DemoLoginActivity$4;->hf:Lcom/picacomic/fregata/DemoLoginActivity;

    invoke-static {p1}, Lcom/picacomic/fregata/DemoLoginActivity;->b(Lcom/picacomic/fregata/DemoLoginActivity;)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/picacomic/fregata/DemoLoginActivity$4;->hg:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
