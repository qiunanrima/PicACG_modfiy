.class Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;
.super Ljava/lang/Object;
.source "ChatroomContainerFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->cm()V
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
.field final synthetic kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

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

    .line 202
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->bC()V

    .line 204
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 205
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 206
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->bI()V

    .line 207
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->jR:Z

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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

    .line 159
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 160
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 162
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

    .line 163
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 164
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;->getChatList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->gson:Lcom/google/gson/Gson;

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->gson:Lcom/google/gson/Gson;

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->n(Landroid/content/Context;Ljava/lang/String;)Z

    .line 171
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

    .line 172
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->bI()V

    goto :goto_0

    .line 189
    :cond_1
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->bC()V

    .line 196
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->bI()V

    .line 197
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;->kU:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->jR:Z

    return-void
.end method
