.class public Lcom/picacomic/fregata/services/DownloadService;
.super Landroid/app/IntentService;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/picacomic/fregata/services/DownloadService$a;,
        Lcom/picacomic/fregata/services/DownloadService$b;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DownloadService"

.field public static final tN:Ljava/lang/String;


# instance fields
.field hZ:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private tO:Ljava/util/concurrent/ExecutorService;

.field private tP:Ljava/util/concurrent/CompletionService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletionService<",
            "Lcom/picacomic/fregata/services/DownloadService$b;",
            ">;"
        }
    .end annotation
.end field

.field private tQ:Landroid/support/v4/content/LocalBroadcastManager;

.field private tR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/picacomic/fregata/services/DownloadService$a;",
            ">;"
        }
    .end annotation
.end field

.field tS:Z

.field tT:I

.field tU:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/picacomic/fregata/services/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".progress_update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/picacomic/fregata/services/DownloadService;->tN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 69
    sget-object v0, Lcom/picacomic/fregata/services/DownloadService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/picacomic/fregata/services/DownloadService;->tS:Z

    const/16 v0, 0xfa0

    .line 64
    iput v0, p0, Lcom/picacomic/fregata/services/DownloadService;->tT:I

    const/4 v0, 0x1

    .line 71
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/services/DownloadService;->tO:Ljava/util/concurrent/ExecutorService;

    .line 72
    new-instance v0, Ljava/util/concurrent/ExecutorCompletionService;

    iget-object v1, p0, Lcom/picacomic/fregata/services/DownloadService;->tO:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/picacomic/fregata/services/DownloadService;->tP:Ljava/util/concurrent/CompletionService;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/services/DownloadService;->tR:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/picacomic/fregata/services/DownloadService;->tS:Z

    const/16 p1, 0xfa0

    .line 64
    iput p1, p0, Lcom/picacomic/fregata/services/DownloadService;->tT:I

    const/4 p1, 0x1

    .line 84
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/services/DownloadService;->tO:Ljava/util/concurrent/ExecutorService;

    .line 85
    new-instance p1, Ljava/util/concurrent/ExecutorCompletionService;

    iget-object v0, p0, Lcom/picacomic/fregata/services/DownloadService;->tO:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/picacomic/fregata/services/DownloadService;->tP:Ljava/util/concurrent/CompletionService;

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/services/DownloadService;->tR:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    monitor-enter p0

    .line 430
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/picacomic/fregata/services/DownloadService;->tU:J

    .line 431
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 432
    sget-object v1, Lcom/picacomic/fregata/services/DownloadService;->tN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "COMIC_ID"

    .line 433
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "EPISODE_ID"

    .line 434
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "COMIC_NAME"

    .line 435
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "EPISODE_TITLE"

    .line 436
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "PROGRESS_CURRENT"

    .line 437
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "PROGRESS_TOTAL"

    .line 438
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    iget-object p1, p0, Lcom/picacomic/fregata/services/DownloadService;->tQ:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 429
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 312
    sget-object v0, Lcom/picacomic/fregata/services/DownloadService;->TAG:Ljava/lang/String;

    const-string v1, "Call Comic Page ?"

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v10, Lcom/picacomic/fregata/b/d;

    invoke-direct {v10, v8}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 323
    invoke-static/range {p1 .. p1}, Lcom/picacomic/fregata/utils/b;->aw(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v11, v0

    .line 328
    invoke-static/range {p2 .. p2}, Lcom/picacomic/fregata/utils/b;->ay(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v1, :cond_9

    const/4 v0, 0x2

    if-eqz v12, :cond_1

    .line 335
    invoke-virtual {v12, v0}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->setStatus(I)V

    .line 336
    invoke-virtual {v12}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->save()J

    goto :goto_1

    .line 338
    :cond_1
    sget-object v3, Lcom/picacomic/fregata/services/DownloadService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB error, missing DownloadComicEpisodeObject, episodeId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_1
    invoke-virtual {v10}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v7, v15, 0x1

    invoke-interface {v3, v4, v9, v7}, Lcom/picacomic/fregata/b/a;->e(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v3

    iput-object v3, v8, Lcom/picacomic/fregata/services/DownloadService;->hZ:Lretrofit2/Call;

    .line 344
    :try_start_0
    iget-object v3, v8, Lcom/picacomic/fregata/services/DownloadService;->hZ:Lretrofit2/Call;

    invoke-interface {v3}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v16

    if-eqz v16, :cond_8

    .line 346
    invoke-virtual/range {v16 .. v16}, Lretrofit2/Response;->code()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_8

    .line 347
    sget-object v3, Lcom/picacomic/fregata/services/DownloadService;->TAG:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v4, v4, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v4, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/picacomic/fregata/utils/f;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {v16 .. v16}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v3, v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v3, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getPages()I

    move-result v17
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 349
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getTotal()I

    move-result v6

    .line 350
    invoke-virtual/range {v16 .. v16}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getLimit()I

    move-result v18

    .line 351
    invoke-virtual/range {v16 .. v16}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getEp()Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getTitle()Ljava/lang/String;

    move-result-object v19
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-nez v2, :cond_2

    if-eqz v12, :cond_2

    .line 355
    :try_start_2
    invoke-virtual {v12, v6}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->setTotal(I)V

    .line 356
    invoke-virtual {v12}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->save()J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v20, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move/from16 v20, v2

    goto/16 :goto_6

    :cond_2
    move/from16 v20, v2

    .line 361
    :goto_2
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz v1, :cond_7

    invoke-virtual/range {v16 .. v16}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getDocs()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz v12, :cond_3

    .line 367
    invoke-virtual {v12, v0}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->setStatus(I)V

    .line 368
    invoke-virtual {v12}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->save()J

    goto :goto_3

    .line 370
    :cond_3
    sget-object v0, Lcom/picacomic/fregata/services/DownloadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB error, missing DownloadComicEpisodeObject, episodeId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 v1, 0x0

    .line 375
    :goto_4
    invoke-virtual/range {v16 .. v16}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getDocs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 380
    invoke-virtual/range {v16 .. v16}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getDocs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/picacomic/fregata/objects/ComicPageObject;

    .line 381
    invoke-static {}, Lcom/picacomic/fregata/utils/c;->ec()Ljava/lang/String;

    move-result-object v3

    .line 382
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicPageObject;->getMedia()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 388
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 389
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 395
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicPageObject;->getMedia()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v13}, Lcom/picacomic/fregata/utils/g;->a(Ljava/lang/String;Ljava/io/File;Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_1
    move-exception v0

    .line 397
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    :goto_5
    new-instance v0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;

    move-object/from16 v5, p1

    invoke-direct {v0, v5, v9, v3, v2}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/ComicPageObject;)V

    .line 401
    invoke-static {v0}, Lcom/picacomic/fregata/utils/b;->a(Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;)Z

    .line 405
    sget-object v2, Lcom/picacomic/fregata/services/DownloadService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Downloaded "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " Image"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v1, 0x1

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/picacomic/fregata/utils/f;->F(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    mul-int v0, v15, v18

    add-int/2addr v0, v1

    const/4 v14, 0x1

    add-int/2addr v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v11

    move-object/from16 v5, v19

    move/from16 v21, v6

    move v6, v0

    move/from16 v22, v7

    move/from16 v7, v21

    .line 408
    :try_start_6
    invoke-direct/range {v1 .. v7}, Lcom/picacomic/fregata/services/DownloadService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move v1, v13

    move/from16 v6, v21

    move/from16 v7, v22

    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_5
    move/from16 v22, v7

    const/4 v14, 0x1

    if-eqz v12, :cond_6

    const/4 v0, 0x4

    .line 413
    invoke-virtual {v12, v0}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->setStatus(I)V

    .line 414
    invoke-virtual {v12}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->save()J

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    .line 416
    :cond_6
    sget-object v0, Lcom/picacomic/fregata/services/DownloadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB error, missing DownloadComicEpisodeObject, episodeId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_9

    :cond_7
    move/from16 v22, v7

    const/4 v14, 0x1

    goto :goto_9

    :catch_3
    move-exception v0

    :goto_6
    move/from16 v22, v7

    const/4 v14, 0x1

    goto :goto_8

    :catch_4
    move-exception v0

    move/from16 v22, v7

    const/4 v14, 0x1

    goto :goto_7

    :cond_8
    move/from16 v22, v7

    const/4 v14, 0x1

    goto :goto_a

    :catch_5
    move-exception v0

    move/from16 v22, v7

    const/4 v14, 0x1

    move/from16 v17, v1

    :goto_7
    move/from16 v20, v2

    .line 423
    :goto_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_9
    move/from16 v1, v17

    move/from16 v2, v20

    :goto_a
    move/from16 v15, v22

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public dQ()V
    .locals 3

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/services/DownloadService;->tP:Ljava/util/concurrent/CompletionService;

    invoke-interface {v0}, Ljava/util/concurrent/CompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/services/DownloadService$b;

    if-eqz v0, :cond_0

    .line 241
    iget-boolean v0, v0, Lcom/picacomic/fregata/services/DownloadService$b;->tW:Z

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/picacomic/fregata/services/DownloadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Success /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/services/DownloadService;->tR:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 303
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 304
    sget-object v0, Lcom/picacomic/fregata/services/DownloadService;->TAG:Ljava/lang/String;

    const-string v1, "Run Destroy and ShutDown"

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/picacomic/fregata/services/DownloadService;->hZ:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/picacomic/fregata/services/DownloadService;->hZ:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/services/DownloadService;->tO:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "COMIC_ID"

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EPISODE_ID"

    .line 111
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    iget-boolean v1, p0, Lcom/picacomic/fregata/services/DownloadService;->tS:Z

    if-eqz v1, :cond_0

    .line 127
    new-instance v1, Lcom/picacomic/fregata/services/DownloadService$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/picacomic/fregata/services/DownloadService$a;-><init>(Lcom/picacomic/fregata/services/DownloadService;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/picacomic/fregata/services/DownloadService;->tR:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/picacomic/fregata/services/DownloadService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add Intent Task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Total Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/picacomic/fregata/services/DownloadService;->tR:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/picacomic/fregata/utils/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/picacomic/fregata/services/DownloadService;->tP:Ljava/util/concurrent/CompletionService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 131
    sget-object v0, Lcom/picacomic/fregata/services/DownloadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Submit Intent Task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Total Task "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/picacomic/fregata/services/DownloadService;->tR:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/picacomic/fregata/utils/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/picacomic/fregata/services/DownloadService;->dQ()V

    .line 162
    sget-object p1, Lcom/picacomic/fregata/services/DownloadService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish intent Tasks - Total:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/services/DownloadService;->tR:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 167
    iput-boolean v1, p0, Lcom/picacomic/fregata/services/DownloadService;->tS:Z

    .line 170
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iput-object v1, p0, Lcom/picacomic/fregata/services/DownloadService;->tQ:Landroid/support/v4/content/LocalBroadcastManager;

    .line 179
    iget-object v1, p0, Lcom/picacomic/fregata/services/DownloadService;->tR:Ljava/util/List;

    new-instance v2, Lcom/picacomic/fregata/services/DownloadService$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/picacomic/fregata/services/DownloadService$a;-><init>(Lcom/picacomic/fregata/services/DownloadService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object p1, p0, Lcom/picacomic/fregata/services/DownloadService;->tR:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/services/DownloadService$a;

    .line 182
    iget-object v1, p0, Lcom/picacomic/fregata/services/DownloadService;->tP:Ljava/util/concurrent/CompletionService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 183
    sget-object v0, Lcom/picacomic/fregata/services/DownloadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Submit Task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/services/DownloadService;->tT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Total Task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/services/DownloadService;->tR:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 196
    :goto_1
    iget-object v0, p0, Lcom/picacomic/fregata/services/DownloadService;->tR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/picacomic/fregata/services/DownloadService;->dQ()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 228
    :cond_2
    sget-object p1, Lcom/picacomic/fregata/services/DownloadService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish All Tasks - Total:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/services/DownloadService;->tR:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/picacomic/fregata/services/DownloadService;->tS:Z

    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
