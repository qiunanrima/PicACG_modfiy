.class public Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;
.super Lcom/just/agentweb/download/AgentWebDownloader$ExtraService;
.source "DefaultDownloadImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/download/DefaultDownloadImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraServiceImpl"
.end annotation


# instance fields
.field private transient cQ:Lcom/just/agentweb/aj;

.field private transient db:Landroid/webkit/WebView;

.field protected fA:Ljava/lang/String;

.field protected fB:Ljava/lang/String;

.field protected fD:Ljava/lang/String;

.field private fK:Z

.field protected fp:Ljava/lang/String;

.field protected fq:J

.field private transient fy:Lcom/just/agentweb/download/c;

.field private transient mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 516
    invoke-direct {p0}, Lcom/just/agentweb/download/AgentWebDownloader$ExtraService;-><init>()V

    const/4 v0, 0x0

    .line 527
    iput-boolean v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->fK:Z

    return-void
.end method


# virtual methods
.method protected aO()Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 622
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    const/4 v1, 0x1

    .line 623
    iput-boolean v1, v0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->fK:Z

    const/4 v1, 0x0

    .line 624
    iput-object v1, v0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->mActivity:Landroid/app/Activity;

    .line 625
    iput-object v1, v0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->fy:Lcom/just/agentweb/download/c;

    .line 626
    iput-object v1, v0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->cQ:Lcom/just/agentweb/aj;

    .line 627
    iput-object v1, v0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->db:Landroid/webkit/WebView;

    return-object v0
.end method

.method protected b(J)Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;
    .locals 0

    .line 595
    iput-wide p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->fq:J

    return-object p0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 516
    invoke-virtual {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->aO()Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 590
    iget-wide v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->fq:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->fp:Ljava/lang/String;

    return-object v0
.end method

.method protected v(Ljava/lang/String;)Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->fp:Ljava/lang/String;

    return-object p0
.end method

.method protected w(Ljava/lang/String;)Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->fD:Ljava/lang/String;

    return-object p0
.end method

.method protected x(Ljava/lang/String;)Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->fA:Ljava/lang/String;

    return-object p0
.end method

.method protected y(Ljava/lang/String;)Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->fB:Ljava/lang/String;

    return-object p0
.end method
