.class Lcom/picacomic/fregata/activities/ComicViewerActivity$20;
.super Ljava/lang/Object;
.source "ComicViewerActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/activities/ComicViewerActivity;->d(IIZ)V
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
        "Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

.field final synthetic il:Z


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;Z)V
    .locals 0

    .line 1311
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iput-boolean p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->il:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1393
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hR:Z

    .line 1394
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1395
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bC()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1314
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_4

    .line 1315
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getDocs()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1319
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getLimit()I

    move-result p1

    sput p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    .line 1321
    iget-boolean p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->il:Z

    if-eqz p1, :cond_0

    .line 1322
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bG()V

    .line 1323
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1327
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getTotal()I

    move-result v1

    iput v1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hH:I

    .line 1328
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getPage()I

    move-result v1

    iput v1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hF:I

    .line 1329
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getPages()I

    move-result v1

    iput v1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hG:I

    .line 1330
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getEp()Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    move-result-object v1

    iput-object v1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hK:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    .line 1332
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 1333
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    :cond_1
    const/4 p1, 0x0

    .line 1340
    :goto_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getDocs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 1341
    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object v1, v1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v2, v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getDocs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1354
    :cond_2
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current Page = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comic Paging Page = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hF:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comic Paging Page Total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hG:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jumpingPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hP:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "episodeOrder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "episodeTotal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeTotal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "episodePagingPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "episodePagingPageTotal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hJ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hz:Lcom/picacomic/fregata/a/c;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getDocs()Ljava/util/ArrayList;

    move-result-object p2

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v1, v1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hP:I

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-boolean v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hU:Z

    iget-boolean v3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->il:Z

    invoke-interface {p1, p2, v1, v2, v3}, Lcom/picacomic/fregata/a/c;->a(Ljava/util/ArrayList;IZZ)V

    .line 1366
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-boolean p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hU:Z

    if-eqz p1, :cond_3

    .line 1367
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iput-boolean v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hU:Z

    .line 1371
    :cond_3
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p2, p2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->o(I)V

    .line 1374
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bI()V

    goto :goto_1

    .line 1381
    :cond_4
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, v2, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1382
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1384
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1387
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iput-boolean v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hR:Z

    .line 1388
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bC()V

    return-void
.end method
