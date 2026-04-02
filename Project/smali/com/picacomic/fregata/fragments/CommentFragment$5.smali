.class Lcom/picacomic/fregata/fragments/CommentFragment$5;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CommentFragment;->ab(Ljava/lang/String;)V
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
        "Lcom/picacomic/fregata/objects/responses/UserProfileDirtyResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic iQ:Ljava/lang/String;

.field final synthetic ow:Lcom/picacomic/fregata/fragments/CommentFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CommentFragment;Ljava/lang/String;)V
    .locals 0

    .line 1038
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$5;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$5;->iQ:Ljava/lang/String;

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
            "Lcom/picacomic/fregata/objects/responses/UserProfileDirtyResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1063
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1064
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$5;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->bC()V

    .line 1065
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$5;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 1066
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
            "Lcom/picacomic/fregata/objects/responses/UserProfileDirtyResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/UserProfileDirtyResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1042
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 1043
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$5;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 1044
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$5;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$5;->iQ:Ljava/lang/String;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/UserProfileDirtyResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/UserProfileDirtyResponse;->isDirty()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/picacomic/fregata/fragments/CommentFragment;->a(Ljava/lang/String;Z)V

    .line 1047
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$5;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u4fee\u6539\u6c61\u982d\u50cf\u6210\u529f\uff01"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1051
    :cond_1
    :try_start_0
    sget-object p1, Lcom/picacomic/fregata/fragments/CommentFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment$5;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1053
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1055
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1058
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$5;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->bC()V

    return-void
.end method
