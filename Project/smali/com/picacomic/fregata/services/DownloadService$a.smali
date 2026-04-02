.class Lcom/picacomic/fregata/services/DownloadService$a;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picacomic/fregata/services/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/picacomic/fregata/services/DownloadService$b;",
        ">;"
    }
.end annotation


# instance fields
.field comicId:Ljava/lang/String;

.field episodeId:Ljava/lang/String;

.field final synthetic tV:Lcom/picacomic/fregata/services/DownloadService;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/services/DownloadService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/picacomic/fregata/services/DownloadService$a;->tV:Lcom/picacomic/fregata/services/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p2, p0, Lcom/picacomic/fregata/services/DownloadService$a;->comicId:Ljava/lang/String;

    .line 286
    iput-object p3, p0, Lcom/picacomic/fregata/services/DownloadService$a;->episodeId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lcom/picacomic/fregata/services/DownloadService$a;->dR()Lcom/picacomic/fregata/services/DownloadService$b;

    move-result-object v0

    return-object v0
.end method

.method public dR()Lcom/picacomic/fregata/services/DownloadService$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/picacomic/fregata/services/DownloadService$a;->tV:Lcom/picacomic/fregata/services/DownloadService;

    iget-object v1, p0, Lcom/picacomic/fregata/services/DownloadService$a;->comicId:Ljava/lang/String;

    iget-object v2, p0, Lcom/picacomic/fregata/services/DownloadService$a;->episodeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/picacomic/fregata/services/DownloadService;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/picacomic/fregata/services/DownloadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish TaskId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/services/DownloadService$a;->episodeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v0, Lcom/picacomic/fregata/services/DownloadService$b;

    iget-object v1, p0, Lcom/picacomic/fregata/services/DownloadService$a;->tV:Lcom/picacomic/fregata/services/DownloadService;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/picacomic/fregata/services/DownloadService$b;-><init>(Lcom/picacomic/fregata/services/DownloadService;ZLcom/picacomic/fregata/services/DownloadService$1;)V

    return-object v0
.end method
