.class Lcom/picacomic/fregata/fragments/GameDetailFragment$2;
.super Ljava/lang/Object;
.source "GameDetailFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/GameDetailFragment;->dg()V
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
        "Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$2;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

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
            "Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 528
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "dismiss progress"

    .line 529
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 530
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$2;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->bC()V

    .line 531
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$2;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 532
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
            "Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 482
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    .line 483
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;->getGame()Lcom/picacomic/fregata/objects/GameDetailObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 485
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;->getGame()Lcom/picacomic/fregata/objects/GameDetailObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/GameDetailObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 497
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$2;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;->getGame()Lcom/picacomic/fregata/objects/GameDetailObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->a(Lcom/picacomic/fregata/fragments/GameDetailFragment;Lcom/picacomic/fregata/objects/GameDetailObject;)Lcom/picacomic/fregata/objects/GameDetailObject;

    const/4 p1, 0x0

    .line 501
    :goto_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;->getGame()Lcom/picacomic/fregata/objects/GameDetailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/GameDetailObject;->getScreenshots()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-nez p1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$2;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;->getGame()Lcom/picacomic/fregata/objects/GameDetailObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/GameDetailObject;->getScreenshots()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/ThumbnailObject;

    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oY:Lcom/picacomic/fregata/objects/ThumbnailObject;

    goto :goto_1

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$2;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oX:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;->getGame()Lcom/picacomic/fregata/objects/GameDetailObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/GameDetailObject;->getScreenshots()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 511
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$2;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->bI()V

    goto :goto_2

    .line 516
    :cond_2
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$2;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 517
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 519
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    const-string p1, "dismiss progress"

    .line 522
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 523
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$2;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->bC()V

    return-void
.end method
