.class Lcom/picacomic/fregata/fragments/CommentFragment$10$1;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CommentFragment$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oA:Lcom/picacomic/fregata/fragments/CommentFragment$10;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CommentFragment$10;)V
    .locals 0

    .line 1350
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10$1;->oA:Lcom/picacomic/fregata/fragments/CommentFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1353
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10$1;->oA:Lcom/picacomic/fregata/fragments/CommentFragment$10;

    iget p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ox:I

    if-ltz p1, :cond_0

    .line 1354
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10$1;->oA:Lcom/picacomic/fregata/fragments/CommentFragment$10;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10$1;->oA:Lcom/picacomic/fregata/fragments/CommentFragment$10;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10$1;->oA:Lcom/picacomic/fregata/fragments/CommentFragment$10;

    iget v1, v1, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10$1;->oA:Lcom/picacomic/fregata/fragments/CommentFragment$10;

    iget v1, v1, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ox:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentObject;->getCommentId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10$1;->oA:Lcom/picacomic/fregata/fragments/CommentFragment$10;

    iget v1, v1, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10$1;->oA:Lcom/picacomic/fregata/fragments/CommentFragment$10;

    iget v2, v2, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ox:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/picacomic/fregata/fragments/CommentFragment;->b(Ljava/lang/String;II)V

    goto :goto_0

    .line 1356
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10$1;->oA:Lcom/picacomic/fregata/fragments/CommentFragment$10;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10$1;->oA:Lcom/picacomic/fregata/fragments/CommentFragment$10;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10$1;->oA:Lcom/picacomic/fregata/fragments/CommentFragment$10;

    iget v1, v1, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCommentId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10$1;->oA:Lcom/picacomic/fregata/fragments/CommentFragment$10;

    iget v1, v1, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/picacomic/fregata/fragments/CommentFragment;->b(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method
