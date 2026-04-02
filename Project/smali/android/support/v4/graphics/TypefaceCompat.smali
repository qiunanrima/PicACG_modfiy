.class public Landroid/support/v4/graphics/TypefaceCompat;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;,
        Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;,
        Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
    }
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromResourcesFamilyXml(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;II)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
    .locals 0

    .line 221
    invoke-static {p0}, Landroid/support/v4/graphics/TypefaceCompat;->maybeInitImpl(Landroid/content/Context;)V

    .line 222
    sget-object p0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;->createFromResourcesFamilyXml(Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;II)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    move-result-object p0

    return-object p0
.end method

.method public static createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;II)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 231
    invoke-static {p0}, Landroid/support/v4/graphics/TypefaceCompat;->maybeInitImpl(Landroid/content/Context;)V

    .line 232
    sget-object p0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    invoke-interface {p0, p1, p2, p3}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;->createFromResourcesFontFile(Landroid/content/res/Resources;II)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    move-result-object p0

    return-object p0
.end method

.method public static createTypeface(Landroid/content/Context;Ljava/util/List;)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/support/v4/graphics/fonts/FontResult;",
            ">;)",
            "Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;"
        }
    .end annotation

    .line 90
    invoke-static {p0}, Landroid/support/v4/graphics/TypefaceCompat;->maybeInitImpl(Landroid/content/Context;)V

    .line 91
    sget-object p0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;->createTypeface(Ljava/util/List;)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    move-result-object p0

    return-object p0
.end method

.method public static createTypeface(Landroid/content/Context;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;Ljava/util/Map;)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
    .locals 0
    .param p1    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/support/v4/provider/FontsContractCompat$FontInfo;",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;"
        }
    .end annotation

    .line 240
    invoke-static {p0}, Landroid/support/v4/graphics/TypefaceCompat;->maybeInitImpl(Landroid/content/Context;)V

    .line 241
    sget-object p0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;->createTypeface([Landroid/support/v4/provider/FontsContractCompat$FontInfo;Ljava/util/Map;)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    move-result-object p0

    return-object p0
.end method

.method public static findFromCache(Landroid/content/res/Resources;II)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
    .locals 2

    .line 205
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    sget-object v1, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 208
    monitor-exit v0

    return-object p0

    .line 210
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;->findFromCache(Landroid/content/res/Resources;II)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 210
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static maybeInitImpl(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 121
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    if-nez v0, :cond_1

    .line 122
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;

    invoke-direct {v1, p0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    .line 127
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
