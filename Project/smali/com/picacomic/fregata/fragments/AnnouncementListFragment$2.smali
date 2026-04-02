.class Lcom/picacomic/fregata/fragments/AnnouncementListFragment$2;
.super Ljava/lang/Object;
.source "AnnouncementListFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->cb()V
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
        "Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic jS:Lcom/picacomic/fregata/fragments/AnnouncementListFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/AnnouncementListFragment;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment$2;->jS:Lcom/picacomic/fregata/fragments/AnnouncementListFragment;

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
            "Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 190
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 191
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment$2;->jS:Lcom/picacomic/fregata/fragments/AnnouncementListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->bC()V

    .line 192
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment$2;->jS:Lcom/picacomic/fregata/fragments/AnnouncementListFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 194
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment$2;->jS:Lcom/picacomic/fregata/fragments/AnnouncementListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->bI()V

    .line 195
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment$2;->jS:Lcom/picacomic/fregata/fragments/AnnouncementListFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->jR:Z

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 161
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 162
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;->getAnnouncements()Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;->getAnnouncements()Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->getDocs()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment$2;->jS:Lcom/picacomic/fregata/fragments/AnnouncementListFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;->getAnnouncements()Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->getPage()I

    move-result v0

    iput v0, p1, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->page:I

    .line 170
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment$2;->jS:Lcom/picacomic/fregata/fragments/AnnouncementListFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;->getAnnouncements()Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->getPages()I

    move-result v0

    iput v0, p1, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->totalPage:I

    .line 171
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment$2;->jS:Lcom/picacomic/fregata/fragments/AnnouncementListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;->getAnnouncements()Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->getDocs()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 177
    :cond_0
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment$2;->jS:Lcom/picacomic/fregata/fragments/AnnouncementListFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment$2;->jS:Lcom/picacomic/fregata/fragments/AnnouncementListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->bC()V

    .line 184
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment$2;->jS:Lcom/picacomic/fregata/fragments/AnnouncementListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->bI()V

    .line 185
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment$2;->jS:Lcom/picacomic/fregata/fragments/AnnouncementListFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->jR:Z

    return-void
.end method
