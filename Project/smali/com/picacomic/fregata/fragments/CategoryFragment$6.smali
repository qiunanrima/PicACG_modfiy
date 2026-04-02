.class Lcom/picacomic/fregata/fragments/CategoryFragment$6;
.super Ljava/lang/Object;
.source "CategoryFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CategoryFragment;->cl()V
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
        "Lcom/picacomic/fregata/objects/responses/CategoryResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic kI:Lcom/picacomic/fregata/fragments/CategoryFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CategoryFragment;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$6;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

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
            "Lcom/picacomic/fregata/objects/responses/CategoryResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 619
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 620
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$6;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 621
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 622
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$6;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CategoryFragment;->bC()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/CategoryResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/CategoryResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 592
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 593
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/CategoryResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/CategoryResponse;->categories:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 595
    :goto_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/CategoryResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/CategoryResponse;->getCategories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$6;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/CategoryResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/CategoryResponse;->getCategories()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 598
    :cond_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 599
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$6;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$6;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/picacomic/fregata/utils/e;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 601
    sget-object p1, Lcom/picacomic/fregata/fragments/CategoryFragment;->TAG:Ljava/lang/String;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$6;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$6;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CategoryFragment;->bI()V

    goto :goto_1

    .line 608
    :cond_1
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$6;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 609
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 611
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 614
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment$6;->kI:Lcom/picacomic/fregata/fragments/CategoryFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CategoryFragment;->bC()V

    return-void
.end method
