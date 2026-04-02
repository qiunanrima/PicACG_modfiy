.class Lcom/picacomic/fregata/fragments/ComicDetailFragment$4;
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

    .line 482
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$4;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 485
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$4;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-boolean p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nh:Z

    if-eqz p1, :cond_0

    .line 486
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$4;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_description:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 487
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$4;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nh:Z

    .line 488
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$4;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$4;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_descriptionHeightControl:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->d(Landroid/view/View;)V

    goto :goto_0

    .line 490
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$4;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_description:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    .line 491
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$4;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nh:Z

    .line 492
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$4;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$4;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_descriptionHeightControl:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->e(Landroid/view/View;)V

    :goto_0
    return-void
.end method
