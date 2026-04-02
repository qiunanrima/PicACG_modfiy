.class Lcom/picacomic/fregata/fragments/CommentFragment$11;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 345
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$11;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 349
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$11;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->page:I

    .line 351
    :try_start_0
    iget-object p3, p0, Lcom/picacomic/fregata/fragments/CommentFragment$11;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p3, Lcom/picacomic/fregata/fragments/CommentFragment;->page:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$11;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iput p2, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->page:I

    .line 356
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$11;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/fragments/CommentFragment;->C(Z)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
