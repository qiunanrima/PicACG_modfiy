.class Lcom/picacomic/fregata/fragments/ProfileEditFragment$2;
.super Ljava/lang/Object;
.source "ProfileEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ProfileEditFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qP:Lcom/picacomic/fregata/fragments/ProfileEditFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ProfileEditFragment;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment$2;->qP:Lcom/picacomic/fregata/fragments/ProfileEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment$2;->qP:Lcom/picacomic/fregata/fragments/ProfileEditFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->editText_slogan:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment$2;->qP:Lcom/picacomic/fregata/fragments/ProfileEditFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->editText_slogan:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment$2;->qP:Lcom/picacomic/fregata/fragments/ProfileEditFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment$2;->qP:Lcom/picacomic/fregata/fragments/ProfileEditFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->editText_slogan:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->ag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
