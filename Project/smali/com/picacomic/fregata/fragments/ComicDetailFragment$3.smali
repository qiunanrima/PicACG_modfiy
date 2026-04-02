.class Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;
.super Ljava/lang/Object;
.source "ComicDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 451
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 454
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ng:[Landroid/widget/Button;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ng:[Landroid/widget/Button;

    array-length p1, p1

    if-lez p1, :cond_2

    .line 455
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-boolean p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ni:Z

    const/4 v0, 0x0

    const/4 v1, -0x2

    if-eqz p1, :cond_0

    .line 458
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->linearLayout_tags:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 459
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 460
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->linearLayout_tags:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ni:Z

    .line 462
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_tagHeightControl:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->d(Landroid/view/View;)V

    goto :goto_1

    .line 466
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->linearLayout_tags:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 467
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ng:[Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ng:[Landroid/widget/Button;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ng:[Landroid/widget/Button;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, v1}, Landroid/widget/Button;->measure(II)V

    .line 469
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ng:[Landroid/widget/Button;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x50

    .line 472
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 474
    :goto_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->linearLayout_tags:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ni:Z

    .line 476
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_tagHeightControl:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->e(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method
