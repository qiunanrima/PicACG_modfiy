.class Landroid/support/v4/graphics/TypefaceCompatBaseImpl;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = "cached_font_"

.field private static final SYNC_FETCH_TIMEOUT_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatBaseImpl"

.field private static final VERBOSE_TRACING:Z = false

.field private static final sDynamicTypefaceCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static sFontsContract:Landroid/support/v4/provider/FontsContractInternal;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mApplicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->sDynamicTypefaceCache:Landroid/support/v4/util/LruCache;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->mApplicationContext:Landroid/content/Context;

    return-void
.end method

.method static closeQuietly(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 543
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TypefaceCompatBaseImpl"

    const-string v1, "Error closing stream"

    .line 545
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static closeQuietly(Ljava/io/InputStream;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 285
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TypefaceCompatBaseImpl"

    const-string v1, "Error closing input stream"

    .line 287
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private copyToCacheFile(Ljava/io/InputStream;)Ljava/io/File;
    .locals 7

    const/4 v0, 0x0

    .line 240
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cached_font_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x400

    .line 244
    :try_start_1
    new-array v4, v4, [B

    .line 246
    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 247
    invoke-virtual {v2, v4, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {p1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/InputStream;)V

    .line 254
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    const-string v3, "TypefaceCompatBaseImpl"

    const-string v4, "Error copying font file descriptor to temp local file."

    .line 250
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    invoke-static {p1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/InputStream;)V

    .line 254
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 253
    :goto_2
    invoke-static {p1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/InputStream;)V

    .line 254
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private copyToCacheFile(Ljava/nio/ByteBuffer;)Ljava/io/File;
    .locals 7

    const/4 v0, 0x0

    .line 263
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cached_font_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 265
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x400

    .line 267
    :try_start_1
    new-array v5, v4, [B

    .line 268
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 269
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 270
    invoke-virtual {p1, v5, v3, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 271
    invoke-virtual {v2, v5, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v2, v0

    :goto_1
    :try_start_2
    const-string v1, "TypefaceCompatBaseImpl"

    const-string v3, "Error copying font file descriptor to temp local file."

    .line 274
    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 277
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v2

    :goto_2
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method private static createAssetUid(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createFromResources(Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 398
    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 402
    :cond_0
    new-instance v0, Landroid/support/v4/provider/FontRequest;

    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getCerts()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 404
    new-instance v1, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->create(Landroid/support/v4/provider/FontRequest;Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;)V

    const-wide/16 v2, 0x1f4

    .line 407
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->waitWithTimeout(J)Landroid/graphics/Typeface;

    move-result-object p1

    .line 409
    new-instance v0, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    const/16 v1, 0x190

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;-><init>(Landroid/graphics/Typeface;IZ)V

    return-object v0
.end method

.method private static createProviderUid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private findBestEntry(Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;IZ)Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .locals 8

    .line 351
    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move-object v3, v2

    const/4 v2, 0x0

    const v4, 0x7fffffff

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v5, p1, v2

    .line 352
    invoke-virtual {v5}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v6

    sub-int/2addr v6, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    .line 353
    invoke-virtual {v5}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v7

    if-ne p3, v7, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    const/4 v7, 0x1

    :goto_1
    add-int/2addr v6, v7

    if-eqz v3, :cond_1

    if-le v4, v6, :cond_2

    :cond_1
    move-object v3, v5

    move v4, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method private static findFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
    .locals 1

    .line 121
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->sDynamicTypefaceCache:Landroid/support/v4/util/LruCache;

    monitor-enter v0

    .line 122
    :try_start_0
    invoke-static {p0, p1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createProviderUid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 123
    sget-object p1, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->sDynamicTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p1, p0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    if-eqz p0, :cond_0

    .line 125
    monitor-exit v0

    return-object p0

    .line 127
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static putInCache(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;)V
    .locals 1

    .line 132
    invoke-static {p0, p1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createProviderUid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 133
    sget-object p1, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->sDynamicTypefaceCache:Landroid/support/v4/util/LruCache;

    monitor-enter p1

    .line 134
    :try_start_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->sDynamicTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p0, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public create(Landroid/support/v4/provider/FontRequest;Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;)V
    .locals 3
    .param p1    # Landroid/support/v4/provider/FontRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 102
    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    .line 106
    :cond_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->sFontsContract:Landroid/support/v4/provider/FontsContractInternal;

    if-nez v1, :cond_1

    .line 108
    new-instance v1, Landroid/support/v4/provider/FontsContractInternal;

    iget-object v2, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/provider/FontsContractInternal;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->sFontsContract:Landroid/support/v4/provider/FontsContractInternal;

    .line 110
    :cond_1
    new-instance v1, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$1;-><init>(Landroid/support/v4/graphics/TypefaceCompatBaseImpl;Landroid/os/Handler;Landroid/support/v4/provider/FontRequest;Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;)V

    .line 116
    sget-object p2, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->sFontsContract:Landroid/support/v4/provider/FontsContractInternal;

    invoke-virtual {p2, p1, v1}, Landroid/support/v4/provider/FontsContractInternal;->getFont(Landroid/support/v4/provider/FontRequest;Landroid/support/v4/os/ResultReceiver;)V

    .line 117
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method createFromResources(Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;II)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_0

    const/16 p3, 0x190

    goto :goto_0

    :cond_0
    const/16 p3, 0x2bc

    :goto_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 370
    :goto_1
    invoke-direct {p0, p1, p3, v0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findBestEntry(Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;IZ)Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_2

    return-object p3

    .line 378
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 379
    :try_start_1
    invoke-virtual {p0, p2, v0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createTypeface(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_3

    .line 391
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/InputStream;)V

    return-object p3

    .line 383
    :cond_3
    :try_start_2
    invoke-static {p2, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_4

    .line 391
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/InputStream;)V

    return-object p3

    .line 387
    :cond_4
    :try_start_3
    new-instance p4, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result p1

    invoke-direct {p4, p2, v1, p1}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;-><init>(Landroid/graphics/Typeface;IZ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/InputStream;)V

    return-object p4

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, p3

    :goto_2
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/InputStream;)V

    throw p1

    :catch_0
    move-object v0, p3

    :catch_1
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/InputStream;)V

    return-object p3
.end method

.method public createFromResourcesFamilyXml(Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;II)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 330
    instance-of v0, p1, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    if-eqz v0, :cond_0

    .line 331
    check-cast p1, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    .line 332
    invoke-direct {p0, p1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createFromResources(Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    move-result-object p1

    return-object p1

    .line 336
    :cond_0
    check-cast p1, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    .line 338
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createFromResources(Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;II)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 340
    invoke-static {p2, p3, p4}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createAssetUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p2

    .line 341
    sget-object p3, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->sDynamicTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p3, p2, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public createFromResourcesFontFile(Landroid/content/res/Resources;II)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 304
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 305
    :try_start_1
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createTypeface(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 321
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/InputStream;)V

    return-object v0

    .line 309
    :cond_0
    :try_start_2
    invoke-static {v2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1

    .line 321
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/InputStream;)V

    return-object v0

    .line 314
    :cond_1
    :try_start_3
    new-instance v3, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    const/16 v4, 0x190

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;-><init>(Landroid/graphics/Typeface;IZ)V

    .line 315
    invoke-static {p1, p2, p3}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createAssetUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    .line 316
    sget-object p2, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->sDynamicTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p2, p1, v3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/InputStream;)V

    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_0
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/InputStream;)V

    throw p1

    :catch_0
    move-object v1, v0

    :catch_1
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->closeQuietly(Ljava/io/InputStream;)V

    return-object v0
.end method

.method createTypeface(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-direct {p0, p2}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->copyToCacheFile(Ljava/io/InputStream;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 526
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object v0

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "TypefaceCompatBaseImpl"

    const-string v2, "Failed to create font"

    .line 531
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p2

    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw p2

    :cond_0
    return-object p2
.end method

.method public createTypeface(Ljava/util/List;)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/graphics/fonts/FontResult;",
            ">;)",
            "Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 186
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/graphics/fonts/FontResult;

    .line 187
    invoke-virtual {p1}, Landroid/support/v4/graphics/fonts/FontResult;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->copyToCacheFile(Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw p1

    :catch_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    return-object v1

    .line 204
    :cond_1
    new-instance v0, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    invoke-virtual {p1}, Landroid/support/v4/graphics/fonts/FontResult;->getWeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/graphics/fonts/FontResult;->getItalic()Z

    move-result p1

    invoke-direct {v0, v2, v1, p1}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;-><init>(Landroid/graphics/Typeface;IZ)V

    return-object v0
.end method

.method public createTypeface([Landroid/support/v4/provider/FontsContractCompat$FontInfo;Ljava/util/Map;)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
    .locals 3
    .param p1    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/support/v4/provider/FontsContractCompat$FontInfo;",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;"
        }
    .end annotation

    .line 211
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 215
    aget-object p1, p1, v0

    .line 216
    invoke-virtual {p1}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    .line 217
    invoke-direct {p0, p2}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->copyToCacheFile(Ljava/nio/ByteBuffer;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 220
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    throw p1

    :catch_0
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    return-object v1

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    .line 233
    :cond_2
    new-instance p2, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    invoke-virtual {p1}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result p1

    invoke-direct {p2, v0, v1, p1}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;-><init>(Landroid/graphics/Typeface;IZ)V

    return-object p2
.end method

.method public findFromCache(Landroid/content/res/Resources;II)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
    .locals 0

    .line 503
    invoke-static {p1, p2, p3}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createAssetUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    .line 504
    sget-object p2, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->sDynamicTypefaceCache:Landroid/support/v4/util/LruCache;

    monitor-enter p2

    .line 505
    :try_start_0
    sget-object p3, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->sDynamicTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p3, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 506
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method receiveResult(Landroid/support/v4/provider/FontRequest;Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;ILandroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 142
    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 150
    invoke-virtual {p2, p3}, Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-nez p4, :cond_2

    .line 154
    invoke-virtual {p2, p3}, Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void

    :cond_2
    const-string v0, "font_results"

    .line 159
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 160
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 166
    :cond_3
    invoke-virtual {p0, p4}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createTypeface(Ljava/util/List;)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    move-result-object p3

    if-nez p3, :cond_4

    const-string p3, "TypefaceCompatBaseImpl"

    .line 169
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error creating font "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    .line 170
    invoke-virtual {p2, p1}, Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void

    .line 174
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1, p3}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->putInCache(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;)V

    .line 175
    invoke-virtual {p3}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void

    .line 161
    :cond_5
    :goto_0
    invoke-virtual {p2, p3}, Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method
