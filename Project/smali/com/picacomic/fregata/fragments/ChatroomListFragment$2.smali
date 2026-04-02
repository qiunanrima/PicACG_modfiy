.class Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;
.super Ljava/lang/Object;
.source "ChatroomListFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomListFragment;->cm()V
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
        "Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomListFragment;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

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
            "Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 253
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 254
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->bC()V

    .line 255
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 256
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 257
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->bI()V

    .line 258
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->jR:Z

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 198
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 199
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 201
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

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;->getChatList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 202
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 203
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;->getChatList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 205
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->gson:Lcom/google/gson/Gson;

    if-nez p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->gson:Lcom/google/gson/Gson;

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->n(Landroid/content/Context;Ljava/lang/String;)Z

    .line 214
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->arrayList:Ljava/util/ArrayList;

    new-instance v0, Lcom/picacomic/fregata/objects/ChatroomListObject;

    const/4 v1, 0x0

    const-string v2, "\u81ea\u5b9a\u5c0f\u7a0b\u5f0f"

    const-string v3, "\u81ea\u5b9a\u5c0f\u7a0b\u5f0f"

    const-string v4, "custompicaapp"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/picacomic/fregata/objects/ChatroomListObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;->getChatList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 223
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->bI()V

    goto :goto_0

    .line 240
    :cond_1
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->bC()V

    .line 247
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->bI()V

    .line 248
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;->mQ:Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->jR:Z

    return-void
.end method
