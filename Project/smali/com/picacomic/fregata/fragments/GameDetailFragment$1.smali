.class Lcom/picacomic/fregata/fragments/GameDetailFragment$1;
.super Ljava/lang/Object;
.source "GameDetailFragment.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/GameDetailFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pc:Z

.field pd:I

.field final synthetic pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$1;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 270
    iput-boolean p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$1;->pc:Z

    const/4 p1, -0x1

    .line 271
    iput p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$1;->pd:I

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 2

    .line 274
    iget v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$1;->pd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 275
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$1;->pd:I

    .line 277
    :cond_0
    iget p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$1;->pd:I

    add-int/2addr p1, p2

    if-nez p1, :cond_1

    .line 278
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$1;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->collapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string p2, "Title"

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 279
    iput-boolean p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$1;->pc:Z

    goto :goto_0

    .line 280
    :cond_1
    iget-boolean p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$1;->pc:Z

    if-eqz p1, :cond_2

    .line 281
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$1;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->collapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$1;->pc:Z

    :cond_2
    :goto_0
    return-void
.end method
