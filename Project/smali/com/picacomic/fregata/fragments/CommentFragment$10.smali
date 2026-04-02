.class Lcom/picacomic/fregata/fragments/CommentFragment$10;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CommentFragment;->k(II)V
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

    .line 1345
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iput p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ox:I

    iput p3, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 1380
    :pswitch_0
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/picacomic/fregata/fragments/CommentFragment$10$2;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/CommentFragment$10$2;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment$10;)V

    invoke-static {p2, v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->hideComment(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1373
    :pswitch_1
    iget p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ox:I

    if-ltz p2, :cond_0

    .line 1374
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0f0209

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1375
    :cond_0
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    if-le p2, v0, :cond_2

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCommentId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1376
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/picacomic/fregata/fragments/CommentFragment;->ac(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1363
    :pswitch_2
    iget p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ox:I

    if-ltz p2, :cond_1

    .line 1364
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    if-le p2, v0, :cond_2

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    .line 1365
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ox:I

    if-le p2, v0, :cond_2

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object p2

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ox:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object p2

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ox:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object p2

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ox:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1366
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ox:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/picacomic/fregata/fragments/CommentFragment;->ab(Ljava/lang/String;)V

    goto :goto_0

    .line 1368
    :cond_1
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    if-le p2, v0, :cond_2

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1369
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->oz:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/picacomic/fregata/fragments/CommentFragment;->ab(Ljava/lang/String;)V

    goto :goto_0

    .line 1350
    :pswitch_3
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$10;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/picacomic/fregata/fragments/CommentFragment$10$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/CommentFragment$10$1;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment$10;)V

    invoke-static {p2, v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->reportComment(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 1393
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
