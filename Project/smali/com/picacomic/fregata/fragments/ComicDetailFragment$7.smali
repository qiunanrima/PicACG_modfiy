.class Lcom/picacomic/fregata/fragments/ComicDetailFragment$7;
.super Ljava/lang/Object;
.source "ComicDetailFragment.java"

# interfaces
.implements Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$7;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V
    .locals 0

    .line 540
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 541
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p1

    add-int/2addr p3, p1

    sub-int/2addr p2, p3

    if-nez p2, :cond_0

    .line 551
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$7;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->A(Z)V

    :cond_0
    return-void
.end method
