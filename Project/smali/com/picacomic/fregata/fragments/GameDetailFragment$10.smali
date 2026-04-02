.class Lcom/picacomic/fregata/fragments/GameDetailFragment$10;
.super Ljava/lang/Object;
.source "GameDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/GameDetailFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$10;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 347
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$10;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    iget-boolean p1, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->nh:Z

    if-eqz p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$10;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_description:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 349
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$10;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->nh:Z

    .line 350
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$10;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$10;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_descriptionHeightControl:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->d(Landroid/view/View;)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$10;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_description:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    .line 353
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$10;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->nh:Z

    .line 354
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$10;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$10;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_descriptionHeightControl:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->e(Landroid/view/View;)V

    :goto_0
    return-void
.end method
