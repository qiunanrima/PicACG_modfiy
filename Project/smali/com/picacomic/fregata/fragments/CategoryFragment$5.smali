.class Lcom/picacomic/fregata/fragments/CategoryFragment$5;
.super Ljava/lang/Object;
.source "CategoryFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CategoryFragment;->ck()V
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
        "Lcom/picacomic/fregata/objects/responses/KeywordsResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic kI:Lcom/picacomic/fregata/fragments/CategoryFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CategoryFragment;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$5;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

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
            "Lcom/picacomic/fregata/objects/responses/KeywordsResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 471
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 472
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$5;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 473
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 474
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$5;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CategoryFragment;->bC()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/KeywordsResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/KeywordsResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 442
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    .line 443
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

    check-cast p1, Lcom/picacomic/fregata/objects/responses/KeywordsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/KeywordsResponse;->getKeywords()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/KeywordsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/KeywordsResponse;->getKeywords()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 444
    sget-object p1, Lcom/picacomic/fregata/fragments/CategoryFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEYWORD = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/KeywordsResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/KeywordsResponse;->getKeywords()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$5;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CategoryFragment;->kB:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 447
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$5;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CategoryFragment;->kB:Ljava/util/ArrayList;

    :cond_0
    const/4 p1, 0x0

    .line 449
    :goto_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/KeywordsResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/KeywordsResponse;->getKeywords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$5;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kB:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v2, v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/picacomic/fregata/objects/responses/KeywordsResponse;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/KeywordsResponse;->getKeywords()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 453
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$5;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 454
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$5;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CategoryFragment;->cj()V

    goto :goto_1

    .line 460
    :cond_2
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$5;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 463
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 466
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$5;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CategoryFragment;->bC()V

    return-void
.end method
