.class public Lcom/orm/b;
.super Ljava/lang/Object;
.source "SugarContext.java"


# static fields
.field private static gO:Lcom/orm/b;


# instance fields
.field private gP:Lcom/orm/c;

.field private gQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/orm/c;

    invoke-direct {v0, p1}, Lcom/orm/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/orm/b;->gP:Lcom/orm/c;

    .line 17
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/orm/b;->gQ:Ljava/util/Map;

    return-void
.end method

.method public static bj()Lcom/orm/b;
    .locals 2

    .line 21
    sget-object v0, Lcom/orm/b;->gO:Lcom/orm/b;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/orm/b;->gO:Lcom/orm/b;

    return-object v0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SugarContext has not been initialized properly. Call SugarContext.init(Context) in your Application.onCreate() method and SugarContext.terminate() in your Application.onTerminate() method."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bk()V
    .locals 1

    .line 32
    sget-object v0, Lcom/orm/b;->gO:Lcom/orm/b;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    sget-object v0, Lcom/orm/b;->gO:Lcom/orm/b;

    invoke-direct {v0}, Lcom/orm/b;->bl()V

    return-void
.end method

.method private bl()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/orm/b;->gP:Lcom/orm/c;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/orm/b;->gP:Lcom/orm/c;

    invoke-virtual {v0}, Lcom/orm/c;->bo()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/orm/b;

    invoke-direct {v0, p0}, Lcom/orm/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/orm/b;->gO:Lcom/orm/b;

    return-void
.end method


# virtual methods
.method protected bm()Lcom/orm/c;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/orm/b;->gP:Lcom/orm/c;

    return-object v0
.end method

.method bn()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/orm/b;->gQ:Ljava/util/Map;

    return-object v0
.end method
