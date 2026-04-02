.class public Lcom/just/agentweb/download/DownloadTask;
.super Lcom/just/agentweb/download/AgentWebDownloader$Extra;
.source "DownloadTask.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private TAG:Ljava/lang/String;

.field private fP:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/just/agentweb/download/d;",
            ">;"
        }
    .end annotation
.end field

.field private fQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private fR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private fS:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

.field private mContext:Landroid/content/Context;

.field private mFile:Ljava/io/File;

.field private mId:I


# direct methods
.method public constructor <init>(ILcom/just/agentweb/download/d;Landroid/content/Context;Ljava/io/File;Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Lcom/just/agentweb/download/AgentWebDownloader$Extra;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fP:Ljava/lang/ref/WeakReference;

    .line 51
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/just/agentweb/download/DownloadTask;->fQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    iput-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fR:Ljava/lang/ref/WeakReference;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->TAG:Ljava/lang/String;

    .line 65
    iput p1, p0, Lcom/just/agentweb/download/DownloadTask;->mId:I

    .line 66
    iput-object p3, p0, Lcom/just/agentweb/download/DownloadTask;->mContext:Landroid/content/Context;

    .line 67
    iput-object p4, p0, Lcom/just/agentweb/download/DownloadTask;->mFile:Ljava/io/File;

    .line 68
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/just/agentweb/download/DownloadTask;->fP:Ljava/lang/ref/WeakReference;

    .line 69
    invoke-virtual {p5}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->aD()Z

    move-result p1

    iput-boolean p1, p0, Lcom/just/agentweb/download/DownloadTask;->fn:Z

    .line 71
    :try_start_0
    invoke-virtual {p5}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->aO()Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/just/agentweb/download/DownloadTask;->fS:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    .line 72
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/just/agentweb/download/DownloadTask;->fR:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 77
    :cond_0
    iput-object p5, p0, Lcom/just/agentweb/download/DownloadTask;->fS:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    :goto_0
    return-void
.end method


# virtual methods
.method public aA()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fS:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->aA()Z

    move-result v0

    return v0
.end method

.method public aB()J
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fS:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->aB()J

    move-result-wide v0

    return-wide v0
.end method

.method public aC()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fS:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->aC()I

    move-result v0

    return v0
.end method

.method public aD()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fS:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->aD()Z

    move-result v0

    return v0
.end method

.method public aF()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fS:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->aF()Z

    move-result v0

    return v0
.end method

.method public aT()Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    return-object v0
.end method

.method public aU()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fS:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->az()Z

    move-result v0

    return v0
.end method

.method public aV()Ljava/io/File;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public aW()I
    .locals 2
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fS:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->getIcon()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/just/agentweb/download/j$a;->ic_file_download_black_24dp:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fS:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->getIcon()I

    move-result v0

    :goto_0
    return v0
.end method

.method public aX()Lcom/just/agentweb/download/d;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fP:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/download/d;

    return-object v0
.end method

.method public ay()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fS:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->ay()I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, -0x1

    .line 186
    iput v0, p0, Lcom/just/agentweb/download/DownloadTask;->mId:I

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fp:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->mContext:Landroid/content/Context;

    .line 189
    iput-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->mFile:Ljava/io/File;

    .line 190
    iput-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fP:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    .line 191
    iput-boolean v1, p0, Lcom/just/agentweb/download/DownloadTask;->fn:Z

    .line 192
    iget-object v1, p0, Lcom/just/agentweb/download/DownloadTask;->fR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/just/agentweb/download/DownloadTask;->fR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 195
    :cond_0
    iput-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fR:Ljava/lang/ref/WeakReference;

    .line 196
    iput-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 197
    iput-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fS:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/just/agentweb/download/DownloadTask;->mId:I

    return v0
.end method

.method public getLength()J
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fS:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/just/agentweb/download/DownloadTask;->fS:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
