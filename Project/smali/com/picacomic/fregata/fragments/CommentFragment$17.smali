.class Lcom/picacomic/fregata/fragments/CommentFragment$17;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CommentFragment;->a(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
        "Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic oB:Z

.field final synthetic ow:Lcom/picacomic/fregata/fragments/CommentFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CommentFragment;ZI)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iput-boolean p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->oB:Z

    iput p3, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 745
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->or:Z

    .line 746
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 747
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->bC()V

    .line 748
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 749
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 700
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_4

    .line 701
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->getDocs()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 704
    iget-boolean p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->oB:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 705
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->val$position:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1, v1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->setCurrentPage(I)V

    .line 706
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->val$position:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->setArrayList(Ljava/util/ArrayList;)V

    .line 709
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->val$position:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    .line 711
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const/4 v2, 0x0

    .line 713
    :goto_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v3, v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v3, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->getDocs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 714
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v3, v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v3, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->getDocs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 719
    :cond_2
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v3, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v2, p1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->setArrayList(Ljava/util/ArrayList;)V

    .line 720
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->val$position:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v3, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCurrentPage()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->setCurrentPage(I)V

    .line 721
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->val$position:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v2, v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->getPages()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->setTotalPage(I)V

    .line 722
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->val$position:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->getTotal()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->setChildsCount(I)V

    .line 725
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->val$position:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCurrentPage()I

    move-result p1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->val$position:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getTotalPage()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 726
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    iget p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->val$position:I

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v3, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1, p2, v2, v1}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->a(ILjava/util/ArrayList;Z)V

    goto :goto_1

    .line 728
    :cond_3
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    iget p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->val$position:I

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v0}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->a(ILjava/util/ArrayList;Z)V

    goto :goto_1

    .line 733
    :cond_4
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {v1}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, v2, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 734
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 736
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 739
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->or:Z

    .line 740
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$17;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->bC()V

    return-void
.end method
