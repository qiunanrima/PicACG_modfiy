.class Lcom/picacomic/fregata/fragments/HomeFragment$8;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/HomeFragment;->dj()V
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
        "Lcom/picacomic/fregata/objects/responses/BannersResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic py:Lcom/picacomic/fregata/fragments/HomeFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/HomeFragment;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

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
            "Lcom/picacomic/fregata/objects/responses/BannersResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 452
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 454
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 455
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
            "Lcom/picacomic/fregata/objects/responses/BannersResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/BannersResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 417
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3

    .line 418
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/BannersResponse;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/BannersResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/BannersResponse;->getBanners()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 421
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 422
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/BannersResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/BannersResponse;->getBanners()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/picacomic/fregata/utils/e;->m(Landroid/content/Context;Ljava/lang/String;)Z

    .line 424
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 425
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 427
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    .line 428
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/BannersResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/BannersResponse;->getBanners()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 429
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->pq:Lcom/picacomic/fregata/adapters/BannerPagerAdapter;

    if-eqz p1, :cond_1

    .line 430
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->pq:Lcom/picacomic/fregata/adapters/BannerPagerAdapter;

    invoke-virtual {p1}, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->notifyDataSetChanged()V

    .line 431
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->pp:Lcom/picacomic/fregata/utils/views/PagerIndicator;

    if-eqz p1, :cond_2

    .line 432
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->pp:Lcom/picacomic/fregata/utils/views/PagerIndicator;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/utils/views/PagerIndicator;->setSize(I)V

    .line 433
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->textView_bannerTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 434
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->textView_bannerTitle:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/BannerObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/BannerObject;->getShortDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 440
    :cond_3
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment$8;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 443
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
