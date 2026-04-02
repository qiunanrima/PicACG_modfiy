.class Lcom/picacomic/fregata/fragments/ApkVersionListFragment$1;
.super Ljava/lang/Object;
.source "ApkVersionListFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->ce()V
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
        "Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic ko:Lcom/picacomic/fregata/fragments/ApkVersionListFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ApkVersionListFragment;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment$1;->ko:Lcom/picacomic/fregata/fragments/ApkVersionListFragment;

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
            "Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 161
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "dismiss progress"

    .line 162
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment$1;->ko:Lcom/picacomic/fregata/fragments/ApkVersionListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->bC()V

    .line 164
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment$1;->ko:Lcom/picacomic/fregata/fragments/ApkVersionListFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 165
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
            "Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 131
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 132
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

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;->getApplications()Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 134
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment$1;->ko:Lcom/picacomic/fregata/fragments/ApkVersionListFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;->getApplications()Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;->getPage()I

    move-result v0

    iput v0, p1, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->page:I

    .line 135
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment$1;->ko:Lcom/picacomic/fregata/fragments/ApkVersionListFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;->getApplications()Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;->getPages()I

    move-result v0

    iput v0, p1, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->totalPage:I

    .line 138
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;->getApplications()Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;->getDocs()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment$1;->ko:Lcom/picacomic/fregata/fragments/ApkVersionListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;->getApplications()Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;->getDocs()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment$1;->ko:Lcom/picacomic/fregata/fragments/ApkVersionListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment$1;->ko:Lcom/picacomic/fregata/fragments/ApkVersionListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->bI()V

    goto :goto_0

    .line 149
    :cond_1
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment$1;->ko:Lcom/picacomic/fregata/fragments/ApkVersionListFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const-string p1, "dismiss progress"

    .line 155
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment$1;->ko:Lcom/picacomic/fregata/fragments/ApkVersionListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->bC()V

    return-void
.end method
