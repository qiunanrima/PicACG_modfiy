.class Lcom/picacomic/fregata/fragments/ComicListFragment$2;
.super Ljava/lang/Object;
.source "ComicListFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicListFragment;->cV()V
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
        "Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic nT:Lcom/picacomic/fregata/fragments/ComicListFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicListFragment;)V
    .locals 0

    .line 775
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

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
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 817
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 818
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->bC()V

    .line 819
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 820
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 821
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->bI()V

    .line 822
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nP:Z

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 778
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_3

    .line 779
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;->getComics()Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;->getComics()Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;->getDocs()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 782
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;->getComics()Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;->getLimit()I

    move-result p1

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->L(I)I

    .line 784
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-boolean p1, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nQ:Z

    if-eqz p1, :cond_1

    .line 785
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 786
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 788
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    .line 789
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nQ:Z

    :cond_1
    const/4 p1, 0x0

    .line 792
    :goto_1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;->getComics()Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;->getDocs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 793
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v2, v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;->getComics()Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;->getDocs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 797
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;->getComics()Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;->getPages()I

    move-result p2

    iput p2, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->totalPage:I

    .line 798
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget p2, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->page:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->page:I

    goto :goto_2

    .line 803
    :cond_3
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {v1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, v2, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 804
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 806
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 809
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->bC()V

    .line 810
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->bI()V

    .line 812
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$2;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nP:Z

    return-void
.end method
