.class Lcom/picacomic/fregata/fragments/NotificationFragment$2;
.super Ljava/lang/Object;
.source "NotificationFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/NotificationFragment;->ds()V
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
        "Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic ql:Lcom/picacomic/fregata/fragments/NotificationFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/NotificationFragment;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/NotificationFragment$2;->ql:Lcom/picacomic/fregata/fragments/NotificationFragment;

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
            "Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 188
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/NotificationFragment$2;->ql:Lcom/picacomic/fregata/fragments/NotificationFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/NotificationFragment;->bC()V

    .line 190
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/NotificationFragment$2;->ql:Lcom/picacomic/fregata/fragments/NotificationFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/NotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 191
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 192
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/NotificationFragment$2;->ql:Lcom/picacomic/fregata/fragments/NotificationFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/NotificationFragment;->bI()V

    .line 193
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/NotificationFragment$2;->ql:Lcom/picacomic/fregata/fragments/NotificationFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/picacomic/fregata/fragments/NotificationFragment;->or:Z

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 160
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_1

    .line 161
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;->getNotifications()Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;->getNotifications()Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->getDocs()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 164
    :goto_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;->getNotifications()Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->getDocs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/NotificationFragment$2;->ql:Lcom/picacomic/fregata/fragments/NotificationFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v2, v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;->getNotifications()Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->getDocs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/NotificationFragment$2;->ql:Lcom/picacomic/fregata/fragments/NotificationFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;->getNotifications()Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->getPages()I

    move-result p2

    iput p2, p1, Lcom/picacomic/fregata/fragments/NotificationFragment;->totalPage:I

    .line 169
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/NotificationFragment$2;->ql:Lcom/picacomic/fregata/fragments/NotificationFragment;

    iget p2, p1, Lcom/picacomic/fregata/fragments/NotificationFragment;->page:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/picacomic/fregata/fragments/NotificationFragment;->page:I

    goto :goto_1

    .line 174
    :cond_1
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/NotificationFragment$2;->ql:Lcom/picacomic/fregata/fragments/NotificationFragment;

    invoke-virtual {v1}, Lcom/picacomic/fregata/fragments/NotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, v2, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/NotificationFragment$2;->ql:Lcom/picacomic/fregata/fragments/NotificationFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/NotificationFragment;->bC()V

    .line 181
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/NotificationFragment$2;->ql:Lcom/picacomic/fregata/fragments/NotificationFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/NotificationFragment;->bI()V

    .line 183
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/NotificationFragment$2;->ql:Lcom/picacomic/fregata/fragments/NotificationFragment;

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/NotificationFragment;->or:Z

    return-void
.end method
