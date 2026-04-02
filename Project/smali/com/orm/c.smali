.class public Lcom/orm/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SugarDb.java"


# instance fields
.field private final gR:Lcom/orm/a;

.field private gS:Landroid/database/sqlite/SQLiteDatabase;

.field private gT:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 21
    invoke-static {p1}, Lcom/orm/b/a;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/orm/b/j;

    .line 22
    invoke-static {p1}, Lcom/orm/b/a;->n(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/orm/b/j;-><init>(Z)V

    invoke-static {p1}, Lcom/orm/b/a;->k(Landroid/content/Context;)I

    move-result v2

    .line 21
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/orm/c;->gT:I

    .line 23
    new-instance v0, Lcom/orm/a;

    invoke-direct {v0, p1}, Lcom/orm/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/orm/c;->gR:Lcom/orm/a;

    return-void
.end method


# virtual methods
.method public declared-synchronized bo()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/orm/c;->gS:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/orm/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/orm/c;->gS:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/orm/c;->gS:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 36
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SUGAR"

    const-string v1, "getReadableDatabase"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget v0, p0, Lcom/orm/c;->gT:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/orm/c;->gT:I

    .line 55
    iget v0, p0, Lcom/orm/c;->gT:I

    if-nez v0, :cond_0

    const-string v0, "SUGAR"

    const-string v1, "closing"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 52
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SUGAR"

    const-string v1, "getReadableDatabase"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget v0, p0, Lcom/orm/c;->gT:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/orm/c;->gT:I

    .line 48
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 45
    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/orm/c;->gR:Lcom/orm/a;

    invoke-virtual {v0, p1}, Lcom/orm/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/orm/c;->gR:Lcom/orm/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/orm/a;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
