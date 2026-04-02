.class Lcom/picacomic/fregata/activities/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/activities/MainActivity;->bK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iO:Lcom/picacomic/fregata/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/MainActivity;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity$3;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity$3;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/MainActivity;->linearLayout_tabbar:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
