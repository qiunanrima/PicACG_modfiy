.class Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$3;
.super Ljava/lang/Object;
.source "TitleEditPopupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->bF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$3;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$3;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->editText_newTitle:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$3;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->editText_newTitle:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$3;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->editText_newTitle:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$3;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$3;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->editText_newTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->aj(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
