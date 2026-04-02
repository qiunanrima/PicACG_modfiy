.class public abstract Lcom/just/agentweb/download/AgentWebDownloader$Extra;
.super Ljava/lang/Object;
.source "AgentWebDownloader.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/download/AgentWebDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Extra"
.end annotation


# instance fields
.field protected cB:Z

.field protected ez:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fm:Z

.field protected fn:Z

.field protected fo:Z

.field protected fp:Ljava/lang/String;

.field protected fq:J

.field protected fr:Z

.field protected fs:J

.field protected ft:I

.field protected fu:I

.field protected mIcon:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->fm:Z

    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->cB:Z

    .line 41
    sget v2, Lcom/just/agentweb/download/j$a;->ic_file_download_black_24dp:I

    iput v2, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->mIcon:I

    .line 43
    iput-boolean v1, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->fn:Z

    .line 44
    iput-boolean v1, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->fo:Z

    .line 54
    iput-boolean v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->fr:Z

    const-wide v0, 0x7fffffffffffffffL

    .line 68
    iput-wide v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->fs:J

    const/16 v0, 0x2710

    .line 70
    iput v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->ft:I

    const v0, 0x927c0

    .line 74
    iput v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->fu:I

    return-void
.end method


# virtual methods
.method public aA()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->cB:Z

    return v0
.end method

.method public aB()J
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->fs:J

    return-wide v0
.end method

.method public aC()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->ft:I

    return v0
.end method

.method public aD()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->fn:Z

    return v0
.end method

.method public aE()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->fo:Z

    return v0
.end method

.method public aF()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->fr:Z

    return v0
.end method

.method public ay()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->fu:I

    return v0
.end method

.method public az()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->fm:Z

    return v0
.end method

.method public d(Z)Lcom/just/agentweb/download/AgentWebDownloader$Extra;
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->fm:Z

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->fq:J

    return-wide v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->ez:Ljava/util/Map;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->mIcon:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/just/agentweb/download/AgentWebDownloader$Extra;->fp:Ljava/lang/String;

    return-object v0
.end method
