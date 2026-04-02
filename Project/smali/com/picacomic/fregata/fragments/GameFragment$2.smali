.class Lcom/picacomic/fregata/fragments/GameFragment$2;
.super Ljava/lang/Object;
.source "GameFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/GameFragment;->di()V
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
        "Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic pl:Lcom/picacomic/fregata/fragments/GameFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/GameFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/GameFragment$2;->pl:Lcom/picacomic/fregata/fragments/GameFragment;

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
            "Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 199
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "dismiss progress"

    .line 200
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameFragment$2;->pl:Lcom/picacomic/fregata/fragments/GameFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/GameFragment;->bC()V

    .line 202
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/GameFragment$2;->pl:Lcom/picacomic/fregata/fragments/GameFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/GameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 164
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    .line 165
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

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;->getGames()Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListData;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 173
    :goto_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;->getGames()Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListData;->getDocs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/GameFragment$2;->pl:Lcom/picacomic/fregata/fragments/GameFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/GameFragment;->pk:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v2, v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;->getGames()Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListData;->getDocs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameFragment$2;->pl:Lcom/picacomic/fregata/fragments/GameFragment;

    iget v1, v0, Lcom/picacomic/fregata/fragments/GameFragment;->page:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/picacomic/fregata/fragments/GameFragment;->page:I

    .line 179
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameFragment$2;->pl:Lcom/picacomic/fregata/fragments/GameFragment;

    iget v0, v0, Lcom/picacomic/fregata/fragments/GameFragment;->page:I

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;->getGames()Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListData;->getPages()I

    move-result p2

    if-le v0, p2, :cond_1

    .line 180
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/GameFragment$2;->pl:Lcom/picacomic/fregata/fragments/GameFragment;

    iput-boolean p1, p2, Lcom/picacomic/fregata/fragments/GameFragment;->ph:Z

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameFragment$2;->pl:Lcom/picacomic/fregata/fragments/GameFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/GameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 182
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameFragment$2;->pl:Lcom/picacomic/fregata/fragments/GameFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/GameFragment;->bI()V

    goto :goto_1

    .line 187
    :cond_2
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameFragment$2;->pl:Lcom/picacomic/fregata/fragments/GameFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/GameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    const-string p1, "dismiss progress"

    .line 193
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameFragment$2;->pl:Lcom/picacomic/fregata/fragments/GameFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/GameFragment;->bC()V

    return-void
.end method
