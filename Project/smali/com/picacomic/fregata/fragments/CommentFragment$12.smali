.class Lcom/picacomic/fregata/fragments/CommentFragment$12;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CommentFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ow:Lcom/picacomic/fregata/fragments/CommentFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CommentFragment;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$12;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 368
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$12;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->editText_inputField:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$12;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->editText_inputField:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$12;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->editText_inputField:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 369
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$12;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->emptyComment(Landroid/content/Context;)V

    return-void

    .line 373
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$12;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-boolean p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->oq:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$12;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->ou:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$12;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->ou:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 374
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$12;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->dc()V

    goto :goto_0

    .line 376
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$12;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->db()V

    :goto_0
    return-void
.end method
