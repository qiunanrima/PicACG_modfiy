.class Lcom/picacomic/fregata/fragments/CommentFragment$4;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CommentFragment;->b(Ljava/lang/String;II)V
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
        "Lcom/picacomic/fregata/objects/responses/MessageResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic ow:Lcom/picacomic/fregata/fragments/CommentFragment;

.field final synthetic ox:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CommentFragment;II)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iput p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ox:I

    iput p3, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/MessageResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1018
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1019
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->bC()V

    .line 1020
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 1021
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/MessageResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/MessageResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 958
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3

    .line 969
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u8209\u5831\u7559\u8a00\u6210\u529f\uff01"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 983
    iget p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ox:I

    const/4 v0, 0x1

    if-gez p1, :cond_1

    .line 984
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->val$position:I

    if-le p1, v1, :cond_4

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    if-eqz p1, :cond_4

    .line 985
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->val$position:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->setHide(Z)V

    .line 986
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/MessageResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/MessageResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 987
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->val$position:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/MessageResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/MessageResponse;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->setContent(Ljava/lang/String;)V

    .line 989
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    iget p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->val$position:I

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->notifyItemChanged(I)V

    goto/16 :goto_0

    .line 992
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->val$position:I

    if-le p1, v1, :cond_4

    .line 993
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->val$position:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->val$position:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ox:I

    if-le p1, v1, :cond_4

    .line 994
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->val$position:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ox:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/objects/CommentObject;->setHide(Z)V

    .line 995
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/MessageResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/MessageResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 996
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->val$position:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ox:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/MessageResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/MessageResponse;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/objects/CommentObject;->setContent(Ljava/lang/String;)V

    .line 998
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    iget p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->val$position:I

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 1007
    :cond_3
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1008
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1010
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1013
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$4;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->bC()V

    return-void
.end method
