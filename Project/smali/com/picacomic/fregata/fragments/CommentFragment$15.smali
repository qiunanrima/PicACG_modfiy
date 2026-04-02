.class Lcom/picacomic/fregata/fragments/CommentFragment$15;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CommentFragment;->C(Z)V
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


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CommentFragment;Z)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iput-boolean p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->oB:Z

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

    .line 602
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->or:Z

    .line 603
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 604
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->bC()V

    .line 605
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 606
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 607
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->bI()V

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

    .line 547
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_4

    .line 548
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 549
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

    .line 551
    iget-boolean p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->oB:Z

    if-eqz p1, :cond_2

    .line 552
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 553
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 555
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    .line 559
    :goto_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getTopComments()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getTopComments()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->page:I

    if-ne p1, v1, :cond_1

    .line 561
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getTopComments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->B(I)V

    .line 563
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->getTotal()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v2, v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getTopComments()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->z(I)V

    const/4 p1, 0x0

    .line 565
    :goto_1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getTopComments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 566
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    new-instance v2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v3, v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v3, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getTopComments()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-direct {v2, v3}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;-><init>(Lcom/picacomic/fregata/objects/CommentObject;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 571
    :cond_1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->getLimit()I

    move-result p1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget v2, v2, Lcom/picacomic/fregata/fragments/CommentFragment;->page:I

    sub-int/2addr v2, v1

    mul-int p1, p1, v2

    .line 572
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->B(I)V

    .line 573
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v2, v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->getTotal()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->z(I)V

    :cond_2
    const/4 p1, 0x0

    .line 578
    :goto_2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->getDocs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 579
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    new-instance v2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v3, v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v3, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->getDocs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-direct {v2, v3}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;-><init>(Lcom/picacomic/fregata/objects/CommentObject;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 583
    :cond_3
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->getPages()I

    move-result p2

    iput p2, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->totalPage:I

    goto :goto_3

    .line 589
    :cond_4
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {v1}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, v2, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 590
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 592
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 595
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->or:Z

    .line 596
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->bC()V

    .line 597
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$15;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->bI()V

    return-void
.end method
