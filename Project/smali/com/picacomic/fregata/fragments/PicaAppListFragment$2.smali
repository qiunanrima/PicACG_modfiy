.class Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;
.super Ljava/lang/Object;
.source "PicaAppListFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/PicaAppListFragment;->du()V
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
        "Lcom/picacomic/fregata/objects/responses/DataClass/PicaAppsResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/PicaAppListFragment;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

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
            "Lcom/picacomic/fregata/objects/responses/DataClass/PicaAppsResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 237
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 238
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->bC()V

    .line 239
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 240
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 241
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->bI()V

    .line 242
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->jR:Z

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/PicaAppsResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/PicaAppsResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 196
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 197
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/PicaAppsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/PicaAppsResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 198
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

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/PicaAppsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/PicaAppsResponse;->getApps()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 199
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 200
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/DataClass/PicaAppsResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/PicaAppsResponse;->getApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 204
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->arrayList:Ljava/util/ArrayList;

    new-instance v0, Lcom/picacomic/fregata/objects/PicaAppObject;

    const-string v1, "\u55f6\u5494\u840c\u7d04"

    const-string v2, "\u53ef\u80fd\u662f\u6700\u6709\u7528\u7684\u540c\u6027\u4ea4\u53cb\u61c9\u7528"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/picacomic/fregata/objects/PicaAppObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->gson:Lcom/google/gson/Gson;

    if-nez p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->gson:Lcom/google/gson/Gson;

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->o(Landroid/content/Context;Ljava/lang/String;)Z

    .line 216
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/PicaAppsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/PicaAppsResponse;->getApps()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 217
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->bI()V

    goto :goto_0

    .line 224
    :cond_1
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->bC()V

    .line 231
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->bI()V

    .line 232
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppListFragment$2;->qD:Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/picacomic/fregata/fragments/PicaAppListFragment;->jR:Z

    return-void
.end method
