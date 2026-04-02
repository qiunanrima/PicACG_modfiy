.class Lcom/picacomic/fregata/fragments/LockDialogFragment$1;
.super Ljava/lang/Object;
.source "LockDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/LockDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/LockDialogFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$1;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 80
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$1;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    iget p1, p1, Lcom/picacomic/fregata/fragments/LockDialogFragment;->count:I

    const/16 v0, 0x1e

    if-le p1, v0, :cond_0

    .line 81
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$1;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LockDialogFragment;->dismiss()V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$1;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    iget v1, p1, Lcom/picacomic/fregata/fragments/LockDialogFragment;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/picacomic/fregata/fragments/LockDialogFragment;->count:I

    .line 84
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$1;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    iget p1, p1, Lcom/picacomic/fregata/fragments/LockDialogFragment;->count:I

    rsub-int/lit8 p1, p1, 0x1e

    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$1;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pQ:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$1;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    iget v2, v2, Lcom/picacomic/fregata/fragments/LockDialogFragment;->count:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
