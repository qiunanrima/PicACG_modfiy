.class Lcom/picacomic/fregata/fragments/ComicDetailFragment$11;
.super Ljava/lang/Object;
.source "ComicDetailFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicDetailFragment;->cJ()V
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
        "Lcom/picacomic/fregata/objects/responses/ComicDetailResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V
    .locals 0

    .line 952
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$11;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

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
            "Lcom/picacomic/fregata/objects/responses/ComicDetailResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 984
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 985
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$11;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->bC()V

    .line 986
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$11;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 987
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
            "Lcom/picacomic/fregata/objects/responses/ComicDetailResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ComicDetailResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 955
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 956
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ComicDetailResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/ComicDetailResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ComicDetailResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/ComicDetailResponse;->getComic()Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 958
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$11;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/ComicDetailResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/ComicDetailResponse;->getComic()Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;Lcom/picacomic/fregata/objects/ComicDetailObject;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    .line 960
    new-instance p1, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$11;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {p2}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;-><init>(Lcom/picacomic/fregata/objects/ComicDetailObject;)V

    .line 962
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$11;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget p2, p2, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->downloadStatus:I

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->setDownloadStatus(I)V

    .line 963
    invoke-static {p1}, Lcom/picacomic/fregata/utils/b;->a(Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;)Z

    .line 964
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$11;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nm:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 965
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$11;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->A(Z)V

    goto :goto_0

    .line 967
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$11;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->A(Z)V

    .line 968
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$11;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->bI()V

    goto :goto_1

    .line 973
    :cond_1
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$11;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 974
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 976
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 979
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$11;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->bC()V

    return-void
.end method
