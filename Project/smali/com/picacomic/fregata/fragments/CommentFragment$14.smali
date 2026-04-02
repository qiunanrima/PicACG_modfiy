.class Lcom/picacomic/fregata/fragments/CommentFragment$14;
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
        "Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic oB:Z

.field final synthetic ow:Lcom/picacomic/fregata/fragments/CommentFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CommentFragment;Z)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iput-boolean p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->oB:Z

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
            "Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 533
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->or:Z

    .line 534
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 535
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->bC()V

    .line 536
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 537
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 538
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->bI()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 495
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_3

    .line 496
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->getDocs()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 499
    iget-boolean p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->oB:Z

    if-eqz p1, :cond_1

    .line 500
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 501
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 503
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    .line 505
    :goto_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->getLimit()I

    move-result p1

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget v1, v1, Lcom/picacomic/fregata/fragments/CommentFragment;->page:I

    add-int/lit8 v1, v1, -0x1

    mul-int p1, p1, v1

    .line 506
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v2, v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->getTotal()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->z(I)V

    :cond_1
    const/4 p1, 0x0

    .line 509
    :goto_1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->getDocs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 510
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    new-instance v2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v3, v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v3, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->getDocs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/ProfileCommentObject;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;-><init>(Lcom/picacomic/fregata/objects/ProfileCommentObject;Lcom/picacomic/fregata/objects/UserProfileObject;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 513
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;->getComments()Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->getPages()I

    move-result p2

    iput p2, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->totalPage:I

    goto :goto_2

    .line 519
    :cond_3
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {v1}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, v2, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 520
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 522
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 525
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->or:Z

    .line 526
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->bC()V

    .line 527
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$14;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->bI()V

    return-void
.end method
