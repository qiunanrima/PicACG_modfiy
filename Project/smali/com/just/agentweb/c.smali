.class public Lcom/just/agentweb/c;
.super Ljava/lang/Object;
.source "AgentWebConfig.java"


# static fields
.field public static DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field static final ds:Ljava/lang/String;

.field static dt:Ljava/lang/String;

.field static final du:Z

.field static dv:I

.field private static volatile dw:Z

.field public static dx:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "agentweb-cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/c;->ds:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    sput-boolean v0, Lcom/just/agentweb/c;->DEBUG:Z

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x13

    if-gt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/just/agentweb/c;->du:Z

    .line 65
    sput v2, Lcom/just/agentweb/c;->dv:I

    .line 66
    sput-boolean v0, Lcom/just/agentweb/c;->dw:Z

    .line 67
    const-class v0, Lcom/just/agentweb/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/c;->TAG:Ljava/lang/String;

    const/high16 v0, 0x500000

    .line 77
    sput v0, Lcom/just/agentweb/c;->dx:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/just/agentweb/c;->ds:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 82
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/just/agentweb/c;

    monitor-enter v0

    .line 208
    :try_start_0
    sget-boolean v1, Lcom/just/agentweb/c;->dw:Z

    if-nez v1, :cond_0

    .line 209
    invoke-static {p0}, Lcom/just/agentweb/c;->c(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 210
    sput-boolean p0, Lcom/just/agentweb/c;->dw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 207
    monitor-exit v0

    throw p0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 218
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    :cond_0
    return-void
.end method
