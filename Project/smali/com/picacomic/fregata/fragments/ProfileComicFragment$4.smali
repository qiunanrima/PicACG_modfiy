.class Lcom/picacomic/fregata/fragments/ProfileComicFragment$4;
.super Ljava/lang/Object;
.source "ProfileComicFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ProfileComicFragment;->dz()V
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
        "Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic qM:Lcom/picacomic/fregata/fragments/ProfileComicFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ProfileComicFragment;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment$4;->qM:Lcom/picacomic/fregata/fragments/ProfileComicFragment;

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
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 400
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "dismiss progress"

    .line 401
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 402
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment$4;->qM:Lcom/picacomic/fregata/fragments/ProfileComicFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->bC()V

    .line 403
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment$4;->qM:Lcom/picacomic/fregata/fragments/ProfileComicFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 404
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
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 371
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 372
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;->getComics()Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 374
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment$4;->qM:Lcom/picacomic/fregata/fragments/ProfileComicFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qG:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 375
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment$4;->qM:Lcom/picacomic/fregata/fragments/ProfileComicFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qG:Ljava/util/ArrayList;

    .line 376
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment$4;->qM:Lcom/picacomic/fregata/fragments/ProfileComicFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qG:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;->getComics()Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;->getDocs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 377
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment$4;->qM:Lcom/picacomic/fregata/fragments/ProfileComicFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;->getComics()Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;->getTotal()I

    move-result p2

    iput p2, p1, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qH:I

    .line 378
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment$4;->qM:Lcom/picacomic/fregata/fragments/ProfileComicFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->bI()V

    goto :goto_0

    .line 388
    :cond_0
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment$4;->qM:Lcom/picacomic/fregata/fragments/ProfileComicFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 391
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const-string p1, "dismiss progress"

    .line 394
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 395
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment$4;->qM:Lcom/picacomic/fregata/fragments/ProfileComicFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->bC()V

    return-void
.end method
