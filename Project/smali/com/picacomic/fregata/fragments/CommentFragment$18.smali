.class Lcom/picacomic/fregata/fragments/CommentFragment$18;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CommentFragment;->dc()V
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
        "Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic ow:Lcom/picacomic/fregata/fragments/CommentFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CommentFragment;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$18;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

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
            "Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 785
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 786
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$18;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->bC()V

    .line 787
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$18;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 788
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
            "Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 765
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 768
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$18;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->editText_inputField:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$18;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$18;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->ou:Ljava/lang/String;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$18;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget v0, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->ov:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/picacomic/fregata/fragments/CommentFragment;->a(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 774
    :cond_0
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$18;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 775
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 777
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 780
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$18;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->bC()V

    return-void
.end method
