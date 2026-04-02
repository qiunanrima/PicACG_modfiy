.class Lcom/picacomic/fregata/fragments/CommentFragment$8;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CommentFragment;->i(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ow:Lcom/picacomic/fregata/fragments/CommentFragment;

.field final synthetic ox:I

.field final synthetic oz:I


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CommentFragment;II)V
    .locals 0

    .line 1291
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$8;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iput p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$8;->oz:I

    iput p3, p0, Lcom/picacomic/fregata/fragments/CommentFragment$8;->ox:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1294
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$8;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$8;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$8;->oz:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$8;->ox:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentObject;->getCommentId()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$8;->oz:I

    iget v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$8;->ox:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/picacomic/fregata/fragments/CommentFragment;->a(Ljava/lang/String;II)V

    return-void
.end method
