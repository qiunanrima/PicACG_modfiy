.class public Lcom/picacomic/fregata/MyApplication;
.super Lcom/orm/SugarApp;
.source "MyApplication.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MyApplication"

.field private static hk:Lcom/picacomic/fregata/MyApplication;

.field private static mAppContext:Landroid/content/Context;


# instance fields
.field private hl:Lcom/picacomic/fregata/utils/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "JniTest"

    .line 29
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/orm/SugarApp;-><init>()V

    return-void
.end method

.method public static bw()V
    .locals 3

    .line 54
    sget-object v0, Lcom/picacomic/fregata/MyApplication;->TAG:Ljava/lang/String;

    const-string v1, "SET PICASSO INSTANCE"

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/b/b;

    invoke-direct {v1}, Lcom/picacomic/fregata/b/b;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/a/a/a;

    invoke-direct {v1, v0}, Lcom/a/a/a;-><init>(Lokhttp3/OkHttpClient;)V

    .line 59
    new-instance v0, Lcom/squareup/picasso/Picasso$Builder;

    sget-object v2, Lcom/picacomic/fregata/MyApplication;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso$Builder;->downloader(Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->setSingletonInstance(Lcom/squareup/picasso/Picasso;)V

    return-void
.end method

.method public static bx()Lcom/picacomic/fregata/MyApplication;
    .locals 1

    .line 78
    sget-object v0, Lcom/picacomic/fregata/MyApplication;->hk:Lcom/picacomic/fregata/MyApplication;

    return-object v0
.end method

.method public static by()Landroid/content/Context;
    .locals 1

    .line 82
    sget-object v0, Lcom/picacomic/fregata/MyApplication;->mAppContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bz()Z
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/picacomic/fregata/MyApplication;->getStringComFromNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/picacomic/fregata/MyApplication;->hl:Lcom/picacomic/fregata/utils/d;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/picacomic/fregata/utils/d;

    invoke-direct {v0}, Lcom/picacomic/fregata/utils/d;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/MyApplication;->hl:Lcom/picacomic/fregata/utils/d;

    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    .line 104
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_1
    sget-object v1, Lcom/picacomic/fregata/MyApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RAW parameters = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/MyApplication;->getStringConFromNative([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    sget-object v0, Lcom/picacomic/fregata/MyApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONCAT parameters = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/picacomic/fregata/MyApplication;->getStringSigFromNative()Ljava/lang/String;

    move-result-object v0

    .line 114
    sget-object v1, Lcom/picacomic/fregata/MyApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONCAT KEY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/picacomic/fregata/MyApplication;->hl:Lcom/picacomic/fregata/utils/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/MyApplication;->getStringSigFromNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/picacomic/fregata/utils/d;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public native getStringComFromNative()Ljava/lang/String;
.end method

.method public native getStringConFromNative([Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getStringSigFromNative()Ljava/lang/String;
.end method

.method public onCreate()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/orm/SugarApp;->onCreate()V

    .line 41
    sput-object p0, Lcom/picacomic/fregata/MyApplication;->hk:Lcom/picacomic/fregata/MyApplication;

    .line 42
    invoke-virtual {p0}, Lcom/picacomic/fregata/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/MyApplication;->s(Landroid/content/Context;)V

    .line 43
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->al(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f100006

    .line 44
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/MyApplication;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f10000b

    .line 46
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/MyApplication;->setTheme(I)V

    :goto_0
    return-void
.end method

.method public s(Landroid/content/Context;)V
    .locals 0

    .line 86
    sput-object p1, Lcom/picacomic/fregata/MyApplication;->mAppContext:Landroid/content/Context;

    return-void
.end method
