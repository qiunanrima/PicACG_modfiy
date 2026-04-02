.class public Lcom/just/agentweb/download/DefaultDownloadImpl;
.super Ljava/lang/Object;
.source "DefaultDownloadImpl.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;,
        Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile fx:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private dS:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/just/agentweb/b;",
            ">;"
        }
    .end annotation
.end field

.field private dz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private fA:Ljava/lang/String;

.field private fB:Ljava/lang/String;

.field private fC:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

.field private fD:Ljava/lang/String;

.field private fE:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

.field private fF:Ljava/util/regex/Pattern;

.field private fG:Lcom/just/agentweb/download/d;

.field private fp:Ljava/lang/String;

.field private fq:J

.field private fy:Lcom/just/agentweb/download/c;

.field private fz:Lcom/just/agentweb/aj;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fx:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    const-class v0, Lcom/just/agentweb/download/DefaultDownloadImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/download/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/just/agentweb/download/DefaultDownloadImpl;)Ljava/util/List;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl;->aK()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/just/agentweb/download/DefaultDownloadImpl;Ljava/io/File;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/just/agentweb/download/DefaultDownloadImpl;->b(Ljava/io/File;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;)V
    .locals 3

    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->dz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->dz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fz:Lcom/just/agentweb/aj;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fz:Lcom/just/agentweb/aj;

    sget-object v1, Lcom/just/agentweb/e;->dD:[Ljava/lang/String;

    const-string v2, "download"

    invoke-interface {v0, p1, v1, v2}, Lcom/just/agentweb/aj;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 155
    monitor-exit p0

    return-void

    :cond_1
    if-nez p7, :cond_3

    .line 162
    :try_start_1
    iget-object p7, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fC:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    invoke-virtual {p7}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->aO()Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    move-result-object p7
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    :try_start_2
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 165
    invoke-virtual {p1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 167
    :cond_2
    sget-object p1, Lcom/just/agentweb/download/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    const-string p2, " clone object failure !!! "

    invoke-static {p1, p2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 173
    :cond_3
    :goto_0
    :try_start_3
    iput-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fp:Ljava/lang/String;

    .line 174
    invoke-virtual {p7, p1}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->v(Ljava/lang/String;)Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    move-result-object p1

    iput-object p4, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fB:Ljava/lang/String;

    .line 175
    invoke-virtual {p1, p4}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->y(Ljava/lang/String;)Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    move-result-object p1

    iput-object p3, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fA:Ljava/lang/String;

    .line 176
    invoke-virtual {p1, p3}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->x(Ljava/lang/String;)Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    move-result-object p1

    iput-wide p5, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fq:J

    .line 177
    invoke-virtual {p1, p5, p6}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->b(J)Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    move-result-object p1

    iput-object p2, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fD:Ljava/lang/String;

    .line 178
    invoke-virtual {p1, p2}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->w(Ljava/lang/String;)Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    .line 179
    iput-object p7, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fE:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    .line 181
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_5

    .line 183
    invoke-direct {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl;->aK()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 184
    invoke-direct {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl;->aL()V

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 186
    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/just/agentweb/Action;->a([Ljava/lang/String;)Lcom/just/agentweb/Action;

    move-result-object p1

    .line 187
    invoke-direct {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl;->aJ()Lcom/just/agentweb/ActionActivity$b;

    move-result-object p2

    invoke-static {p2}, Lcom/just/agentweb/ActionActivity;->a(Lcom/just/agentweb/ActionActivity$b;)V

    .line 188
    iget-object p2, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->dz:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/just/agentweb/ActionActivity;->a(Landroid/app/Activity;Lcom/just/agentweb/Action;)V

    goto :goto_1

    .line 191
    :cond_5
    invoke-direct {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl;->aL()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    :goto_1
    monitor-exit p0

    return-void

    .line 151
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 149
    monitor-exit p0

    throw p1
.end method

.method private aJ()Lcom/just/agentweb/ActionActivity$b;
    .locals 1

    .line 196
    new-instance v0, Lcom/just/agentweb/download/DefaultDownloadImpl$1;

    invoke-direct {v0, p0}, Lcom/just/agentweb/download/DefaultDownloadImpl$1;-><init>(Lcom/just/agentweb/download/DefaultDownloadImpl;)V

    return-object v0
.end method

.method private aK()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    iget-object v1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->dz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/just/agentweb/e;->dD:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/just/agentweb/h;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    sget-object v1, Lcom/just/agentweb/e;->dD:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method private aL()V
    .locals 9

    .line 228
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fy:Lcom/just/agentweb/download/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fy:Lcom/just/agentweb/download/c;

    iget-object v2, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fp:Ljava/lang/String;

    iget-object v3, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fD:Ljava/lang/String;

    iget-object v4, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fA:Ljava/lang/String;

    iget-object v5, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fB:Ljava/lang/String;

    iget-wide v6, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fq:J

    iget-object v8, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fE:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    .line 230
    invoke-interface/range {v1 .. v8}, Lcom/just/agentweb/download/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/just/agentweb/download/AgentWebDownloader$Extra;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fA:Ljava/lang/String;

    iget-object v1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fp:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/just/agentweb/download/DefaultDownloadImpl;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 241
    sget-object v0, Lcom/just/agentweb/download/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    const-string v1, "\u65b0\u5efa\u6587\u4ef6\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/just/agentweb/ag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 244
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fq:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_5

    iget-wide v1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fq:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    .line 247
    iget-object v1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fy:Lcom/just/agentweb/download/c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fy:Lcom/just/agentweb/download/c;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fp:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/just/agentweb/download/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 251
    :cond_2
    iget-object v1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/just/agentweb/h;->c(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 255
    :try_start_0
    iget-object v2, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_3

    const/high16 v2, 0x10000000

    .line 256
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 258
    :cond_3
    iget-object v2, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 262
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 263
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    .line 271
    :cond_5
    :goto_1
    invoke-static {}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->aN()Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;

    move-result-object v1

    iget-object v2, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 272
    invoke-static {}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->aN()Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 284
    :cond_6
    iget-object v1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fE:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    invoke-virtual {v1}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->az()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->mContext:Landroid/content/Context;

    .line 285
    invoke-static {v1}, Lcom/just/agentweb/h;->e(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    .line 287
    invoke-direct {p0, v0}, Lcom/just/agentweb/download/DefaultDownloadImpl;->c(Ljava/io/File;)V

    return-void

    .line 290
    :cond_7
    invoke-direct {p0, v0}, Lcom/just/agentweb/download/DefaultDownloadImpl;->e(Ljava/io/File;)V

    return-void

    .line 273
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 274
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/b;

    iget-object v1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->dz:Ljava/lang/ref/WeakReference;

    .line 275
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    sget v2, Lcom/just/agentweb/download/j$b;->agentweb_download_task_has_been_exist:I

    .line 276
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/just/agentweb/download/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    const-string v3, "|preDownload"

    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/just/agentweb/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method static synthetic aM()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/just/agentweb/download/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/just/agentweb/download/DefaultDownloadImpl;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl;->aL()V

    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fE:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->d(Z)Lcom/just/agentweb/download/AgentWebDownloader$Extra;

    .line 296
    invoke-direct {p0, p1}, Lcom/just/agentweb/download/DefaultDownloadImpl;->e(Ljava/io/File;)V

    return-void
.end method

.method static synthetic c(Lcom/just/agentweb/download/DefaultDownloadImpl;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->dS:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private c(Ljava/io/File;)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->dz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/b;

    if-eqz v0, :cond_1

    .line 309
    iget-object v1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fp:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/just/agentweb/download/DefaultDownloadImpl;->d(Ljava/io/File;)Landroid/os/Handler$Callback;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/just/agentweb/b;->a(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private d(Ljava/io/File;)Landroid/os/Handler$Callback;
    .locals 1

    .line 315
    new-instance v0, Lcom/just/agentweb/download/DefaultDownloadImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/just/agentweb/download/DefaultDownloadImpl$2;-><init>(Lcom/just/agentweb/download/DefaultDownloadImpl;Ljava/io/File;)V

    return-object v0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const-string v0, ""

    .line 357
    :try_start_0
    invoke-direct {p0, p1}, Lcom/just/agentweb/download/DefaultDownloadImpl;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 358
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 362
    :goto_0
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x40

    if-le p1, v1, :cond_1

    .line 363
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 365
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 366
    invoke-static {p2}, Lcom/just/agentweb/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    :cond_2
    const-string p1, "\""

    .line 368
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\""

    const-string p2, ""

    .line 369
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 371
    :cond_3
    iget-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fE:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    invoke-virtual {p2}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->aE()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, v0, p2}, Lcom/just/agentweb/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_0
    move-exception p2

    move-object v0, p1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 373
    :goto_1
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 374
    sget-object p1, Lcom/just/agentweb/download/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Ljava/io/File;)V
    .locals 7

    .line 328
    :try_start_0
    invoke-static {}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->aN()Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fp:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->dz:Ljava/lang/ref/WeakReference;

    .line 331
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    sget v3, Lcom/just/agentweb/download/j$b;->agentweb_coming_soon_download:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/just/agentweb/download/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    const-string v3, "|performDownload"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/just/agentweb/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_0
    new-instance v6, Lcom/just/agentweb/download/DownloadTask;

    sget-object v0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iget-object v2, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fG:Lcom/just/agentweb/download/d;

    iget-object v3, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fE:Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/just/agentweb/download/DownloadTask;-><init>(ILcom/just/agentweb/download/d;Landroid/content/Context;Ljava/io/File;Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;)V

    .line 337
    new-instance p1, Lcom/just/agentweb/download/f;

    invoke-direct {p1}, Lcom/just/agentweb/download/f;-><init>()V

    invoke-virtual {p1, v6}, Lcom/just/agentweb/download/f;->c(Lcom/just/agentweb/download/DownloadTask;)V

    const/4 p1, 0x0

    .line 338
    iput-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fp:Ljava/lang/String;

    .line 339
    iput-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fA:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 340
    iput-wide v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fq:J

    .line 341
    iput-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fB:Ljava/lang/String;

    .line 342
    iput-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fD:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 345
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private t(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 383
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl;->fF:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 387
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 388
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 144
    invoke-direct/range {v0 .. v7}, Lcom/just/agentweb/download/DefaultDownloadImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;)V

    return-void
.end method
