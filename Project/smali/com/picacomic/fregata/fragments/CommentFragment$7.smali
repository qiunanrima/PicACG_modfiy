.class Lcom/picacomic/fregata/fragments/CommentFragment$7;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CommentFragment;->S(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ow:Lcom/picacomic/fregata/fragments/CommentFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CommentFragment;I)V
    .locals 0

    .line 1280
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$7;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iput p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1283
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$7;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$7;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$7;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCommentId()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$7;->val$position:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/picacomic/fregata/fragments/CommentFragment;->a(Ljava/lang/String;II)V

    return-void
.end method
