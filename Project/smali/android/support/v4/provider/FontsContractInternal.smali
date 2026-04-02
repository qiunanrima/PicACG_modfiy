.class public Landroid/support/v4/provider/FontsContractInternal;
.super Ljava/lang/Object;
.source "FontsContractInternal.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final PARCEL_FONT_RESULTS:Ljava/lang/String; = "font_results"
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final RESULT_CODE_PROVIDER_NOT_FOUND:I = -0x1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final RESULT_CODE_WRONG_CERTIFICATES:I = -0x2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FontsContractCompat"

.field private static final THREAD_RENEWAL_THRESHOLD_MS:I = 0x2710

.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

.field private mThread:Landroid/os/HandlerThread;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 191
    new-instance v0, Landroid/support/v4/provider/FontsContractInternal$3;

    invoke-direct {v0}, Landroid/support/v4/provider/FontsContractInternal$3;-><init>()V

    sput-object v0, Landroid/support/v4/provider/FontsContractInternal;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/provider/FontsContractInternal;->mLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Landroid/support/v4/provider/FontsContractInternal$1;

    invoke-direct {v0, p0}, Landroid/support/v4/provider/FontsContractInternal$1;-><init>(Landroid/support/v4/provider/FontsContractInternal;)V

    iput-object v0, p0, Landroid/support/v4/provider/FontsContractInternal;->mReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/provider/FontsContractInternal;->mContext:Landroid/content/Context;

    .line 93
    iget-object p1, p0, Landroid/support/v4/provider/FontsContractInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/provider/FontsContractInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/provider/FontsContractInternal;->mLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Landroid/support/v4/provider/FontsContractInternal$1;

    invoke-direct {v0, p0}, Landroid/support/v4/provider/FontsContractInternal$1;-><init>(Landroid/support/v4/provider/FontsContractInternal;)V

    iput-object v0, p0, Landroid/support/v4/provider/FontsContractInternal;->mReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    .line 98
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractInternal;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Landroid/support/v4/provider/FontsContractInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/provider/FontsContractInternal;)Ljava/lang/Object;
    .locals 0

    .line 58
    iget-object p0, p0, Landroid/support/v4/provider/FontsContractInternal;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/v4/provider/FontsContractInternal;)Landroid/os/HandlerThread;
    .locals 0

    .line 58
    iget-object p0, p0, Landroid/support/v4/provider/FontsContractInternal;->mThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$102(Landroid/support/v4/provider/FontsContractInternal;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 58
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractInternal;->mThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$202(Landroid/support/v4/provider/FontsContractInternal;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 58
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractInternal;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method private convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 220
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 221
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 207
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 210
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 211
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private getCertificates(Landroid/support/v4/provider/FontRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/provider/FontRequest;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .line 184
    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 187
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getCertificatesArrayResId()I

    move-result p1

    .line 188
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getFont(Landroid/support/v4/provider/FontRequest;Landroid/support/v4/os/ResultReceiver;)V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractInternal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractInternal;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "fonts"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/support/v4/provider/FontsContractInternal;->mThread:Landroid/os/HandlerThread;

    .line 123
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractInternal;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 124
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractInternal;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/support/v4/provider/FontsContractInternal;->mHandler:Landroid/os/Handler;

    .line 126
    :cond_0
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractInternal;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/v4/provider/FontsContractInternal$2;

    invoke-direct {v2, p0, p1, p2}, Landroid/support/v4/provider/FontsContractInternal$2;-><init>(Landroid/support/v4/provider/FontsContractInternal;Landroid/support/v4/provider/FontRequest;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    iget-object p1, p0, Landroid/support/v4/provider/FontsContractInternal;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/support/v4/provider/FontsContractInternal;->mReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    iget-object p1, p0, Landroid/support/v4/provider/FontsContractInternal;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/support/v4/provider/FontsContractInternal;->mReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getFontFromProvider(Landroid/support/v4/provider/FontRequest;Landroid/support/v4/os/ResultReceiver;Ljava/lang/String;)V
    .locals 25
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 229
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 230
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 233
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 234
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "file"

    .line 235
    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    .line 239
    :try_start_0
    iget-object v0, v1, Landroid/support/v4/provider/FontsContractInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v0, 0x7

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v14, 0x0

    aput-object v0, v7, v14

    const-string v0, "file_id"

    const/4 v15, 0x1

    aput-object v0, v7, v15

    const/4 v0, 0x2

    const-string v6, "font_ttc_index"

    aput-object v6, v7, v0

    const/4 v0, 0x3

    const-string v6, "font_variation_settings"

    aput-object v6, v7, v0

    const/4 v0, 0x4

    const-string v6, "font_weight"

    aput-object v6, v7, v0

    const/4 v0, 0x5

    const-string v6, "font_italic"

    aput-object v6, v7, v0

    const/4 v0, 0x6

    const-string v6, "result_code"

    aput-object v6, v7, v0

    const-string v8, "query = ?"

    new-array v9, v15, [Ljava/lang/String;

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v14

    const/4 v10, 0x0

    move-object v6, v11

    .line 239
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_b

    .line 244
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_b

    const-string v0, "result_code"

    .line 245
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v0, "_id"

    .line 246
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v0, "file_id"

    .line 247
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v0, "font_ttc_index"

    .line 248
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v0, "font_variation_settings"

    .line 249
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v0, "font_weight"

    .line 250
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v0, "font_italic"

    .line 251
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 252
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    .line 254
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    :goto_1
    if-eqz v16, :cond_4

    if-gez v16, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    move/from16 v0, v16

    :goto_2
    const/4 v3, 0x0

    .line 260
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v3, v6, :cond_2

    .line 262
    :try_start_2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/graphics/fonts/FontResult;

    invoke-virtual {v6}, Landroid/support/v4/graphics/fonts/FontResult;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 267
    :cond_2
    :try_start_3
    invoke-virtual {v2, v0, v13}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_3

    .line 306
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :cond_4
    if-ne v8, v0, :cond_5

    move/from16 v17, v14

    .line 272
    :try_start_4
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 273
    invoke-static {v11, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    goto :goto_4

    :cond_5
    move/from16 v17, v14

    .line 275
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 276
    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 279
    :goto_4
    :try_start_5
    iget-object v14, v1, Landroid/support/v4/provider/FontsContractInternal;->mContext:Landroid/content/Context;

    .line 280
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v0, "r"

    invoke-virtual {v14, v13, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v19

    if-eqz v19, :cond_a

    const/4 v0, -0x1

    if-eq v9, v0, :cond_6

    .line 283
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v20, v14

    goto :goto_5

    :cond_6
    const/16 v20, 0x0

    :goto_5
    if-eq v10, v0, :cond_7

    .line 285
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v21, v13

    move/from16 v13, v17

    goto :goto_6

    :cond_7
    move/from16 v13, v17

    const/16 v21, 0x0

    :goto_6
    if-eq v13, v0, :cond_9

    if-eq v15, v0, :cond_9

    .line 289
    :try_start_6
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 290
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v1, 0x1

    if-ne v14, v1, :cond_8

    const/4 v14, 0x1

    goto :goto_7

    :cond_8
    const/4 v14, 0x0

    :goto_7
    move/from16 v22, v0

    move/from16 v23, v14

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_a

    :cond_9
    const/16 v0, 0x190

    const/16 v22, 0x190

    const/16 v23, 0x0

    .line 295
    :goto_8
    new-instance v0, Landroid/support/v4/graphics/fonts/FontResult;

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Landroid/support/v4/graphics/fonts/FontResult;-><init>(Landroid/os/ParcelFileDescriptor;ILjava/lang/String;IZ)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    :cond_a
    move/from16 v13, v17

    :goto_9
    move/from16 v24, v6

    goto :goto_b

    :catch_2
    move-exception v0

    move/from16 v13, v17

    :goto_a
    :try_start_7
    const-string v1, "FontsContractCompat"

    .line 299
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v6

    const-string v6, "FileNotFoundException raised when interacting with content provider "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_b
    move v14, v13

    move/from16 v6, v24

    move-object/from16 v1, p0

    const/4 v13, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_b
    if-eqz v5, :cond_c

    .line 306
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 310
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "font_results"

    .line 311
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    .line 312
    invoke-virtual {v2, v1, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_d
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 315
    invoke-virtual {v2, v1, v3}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v3, v13

    move-object v5, v3

    :goto_c
    if-eqz v5, :cond_e

    .line 306
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0
.end method

.method getProvider(Landroid/support/v4/provider/FontRequest;Landroid/support/v4/os/ResultReceiver;)Landroid/content/pm/ProviderInfo;
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 143
    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const-string p1, "FontsContractCompat"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find content provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p2, v3, v4}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-object v4

    .line 151
    :cond_0
    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v1, "FontsContractCompat"

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found content provider "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but package was not "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p1}, Landroid/support/v4/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p2, v3, v4}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-object v4

    .line 160
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/support/v4/provider/FontsContractInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 162
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v5}, Landroid/support/v4/provider/FontsContractInternal;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v5

    .line 163
    sget-object v6, Landroid/support/v4/provider/FontsContractInternal;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    invoke-direct {p0, p1}, Landroid/support/v4/provider/FontsContractInternal;->getCertificates(Landroid/support/v4/provider/FontRequest;)Ljava/util/List;

    move-result-object p1

    .line 170
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 173
    sget-object v6, Landroid/support/v4/provider/FontsContractInternal;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 174
    invoke-direct {p0, v5, v3}, Landroid/support/v4/provider/FontsContractInternal;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "FontsContractCompat"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificates don\'t match for given provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    .line 179
    invoke-virtual {p2, p1, v4}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-object v4

    :catch_0
    move-exception p1

    const-string v1, "FontsContractCompat"

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find content provider "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    invoke-virtual {p2, v3, v4}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-object v4
.end method
