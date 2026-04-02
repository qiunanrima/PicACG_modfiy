.class public Lio/socket/client/d;
.super Lio/socket/b/a;
.source "Socket.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field protected static xA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile connected:Z

.field id:Ljava/lang/String;

.field private wV:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/socket/client/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private xB:I

.field private xC:Ljava/lang/String;

.field private xD:Lio/socket/client/Manager;

.field private xE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/socket/client/a;",
            ">;"
        }
    .end annotation
.end field

.field private final xF:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final xG:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/socket/f/b<",
            "Lorg/json/JSONArray;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lio/socket/client/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/client/d;->logger:Ljava/util/logging/Logger;

    .line 65
    new-instance v0, Lio/socket/client/Socket$1;

    invoke-direct {v0}, Lio/socket/client/Socket$1;-><init>()V

    sput-object v0, Lio/socket/client/d;->xA:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lio/socket/client/Manager;Ljava/lang/String;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Lio/socket/b/a;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/socket/client/d;->xE:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/socket/client/d;->xF:Ljava/util/Queue;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/socket/client/d;->xG:Ljava/util/Queue;

    .line 93
    iput-object p1, p0, Lio/socket/client/d;->xD:Lio/socket/client/Manager;

    .line 94
    iput-object p2, p0, Lio/socket/client/d;->xC:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lio/socket/client/d;Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;
    .locals 0

    .line 19
    invoke-super {p0, p1, p2}, Lio/socket/b/a;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 3

    .line 211
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 212
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eq v1, p1, :cond_0

    .line 216
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v2, 0x0

    .line 220
    :goto_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lio/socket/client/d;Lio/socket/f/b;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lio/socket/client/d;->c(Lio/socket/f/b;)V

    return-void
.end method

.method static synthetic a(Lio/socket/client/d;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lio/socket/client/d;->aG(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lorg/json/JSONArray;)[Ljava/lang/Object;
    .locals 8

    .line 477
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 478
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x0

    .line 482
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 484
    sget-object v5, Lio/socket/client/d;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "An error occured while retrieving data from JSONArray"

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v3

    .line 487
    :goto_1
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    move-object v3, v4

    :goto_2
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private aG(Ljava/lang/String;)V
    .locals 5

    .line 276
    sget-object v0, Lio/socket/client/d;->logger:Ljava/util/logging/Logger;

    const-string v1, "close (%s)"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 277
    iput-boolean v4, p0, Lio/socket/client/d;->connected:Z

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lio/socket/client/d;->id:Ljava/lang/String;

    const-string v0, "disconnect"

    .line 279
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v1}, Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method

.method private ai(I)Lio/socket/client/a;
    .locals 2

    const/4 v0, 0x1

    .line 348
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 349
    new-instance v1, Lio/socket/client/d$3;

    invoke-direct {v1, p0, v0, p1, p0}, Lio/socket/client/d$3;-><init>(Lio/socket/client/d;[ZILio/socket/client/d;)V

    return-object v1
.end method

.method static synthetic b(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lio/socket/client/d;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lio/socket/client/d;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lio/socket/client/d;->eB()V

    return-void
.end method

.method static synthetic b(Lio/socket/client/d;Lio/socket/f/b;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lio/socket/client/d;->b(Lio/socket/f/b;)V

    return-void
.end method

.method private b(Lio/socket/f/b;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lio/socket/client/d;->xC:Ljava/lang/String;

    iput-object v0, p1, Lio/socket/f/b;->xC:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lio/socket/client/d;->xD:Lio/socket/client/Manager;

    invoke-virtual {v0, p1}, Lio/socket/client/Manager;->b(Lio/socket/f/b;)V

    return-void
.end method

.method private c(Lio/socket/f/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/socket/f/b<",
            "*>;)V"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lio/socket/client/d;->xC:Ljava/lang/String;

    iget-object v1, p1, Lio/socket/f/b;->xC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget v0, p1, Lio/socket/f/b;->type:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 314
    :pswitch_0
    invoke-direct {p0, p1}, Lio/socket/client/d;->e(Lio/socket/f/b;)V

    goto :goto_0

    .line 300
    :pswitch_1
    invoke-direct {p0, p1}, Lio/socket/client/d;->d(Lio/socket/f/b;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "error"

    const/4 v1, 0x1

    .line 323
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p1, p1, Lio/socket/f/b;->data:Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    goto :goto_0

    .line 307
    :pswitch_3
    invoke-direct {p0, p1}, Lio/socket/client/d;->e(Lio/socket/f/b;)V

    goto :goto_0

    .line 293
    :pswitch_4
    invoke-direct {p0, p1}, Lio/socket/client/d;->d(Lio/socket/f/b;)V

    goto :goto_0

    .line 319
    :pswitch_5
    invoke-direct {p0}, Lio/socket/client/d;->eM()V

    goto :goto_0

    .line 287
    :pswitch_6
    invoke-direct {p0}, Lio/socket/client/d;->eK()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lio/socket/client/d;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lio/socket/client/d;->connected:Z

    return p0
.end method

.method static synthetic d(Lio/socket/client/d;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lio/socket/client/d;->eH()V

    return-void
.end method

.method private d(Lio/socket/f/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/socket/f/b<",
            "Lorg/json/JSONArray;",
            ">;)V"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lio/socket/f/b;->data:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v1}, Lio/socket/client/d;->a(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 330
    sget-object v1, Lio/socket/client/d;->logger:Ljava/util/logging/Logger;

    const-string v2, "emitting event %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 332
    iget v1, p1, Lio/socket/f/b;->id:I

    if-ltz v1, :cond_0

    .line 333
    sget-object v1, Lio/socket/client/d;->logger:Ljava/util/logging/Logger;

    const-string v2, "attaching ack callback to event"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 334
    iget p1, p1, Lio/socket/f/b;->id:I

    invoke-direct {p0, p1}, Lio/socket/client/d;->ai(I)Lio/socket/client/a;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_0
    iget-boolean p1, p0, Lio/socket/client/d;->connected:Z

    if-eqz p1, :cond_2

    .line 338
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 339
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 340
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lio/socket/b/a;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    goto :goto_0

    .line 342
    :cond_2
    iget-object p1, p0, Lio/socket/client/d;->xF:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private destroy()V
    .locals 2

    .line 413
    iget-object v0, p0, Lio/socket/client/d;->wV:Ljava/util/Queue;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lio/socket/client/d;->wV:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/socket/client/c$a;

    .line 416
    invoke-interface {v1}, Lio/socket/client/c$a;->destroy()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lio/socket/client/d;->wV:Ljava/util/Queue;

    .line 421
    :cond_1
    iget-object v0, p0, Lio/socket/client/d;->xD:Lio/socket/client/Manager;

    invoke-virtual {v0, p0}, Lio/socket/client/Manager;->a(Lio/socket/client/d;)V

    return-void
.end method

.method static synthetic e(Lio/socket/client/d;)Lio/socket/client/Manager;
    .locals 0

    .line 19
    iget-object p0, p0, Lio/socket/client/d;->xD:Lio/socket/client/Manager;

    return-object p0
.end method

.method private e(Lio/socket/f/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/socket/f/b<",
            "Lorg/json/JSONArray;",
            ">;)V"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lio/socket/client/d;->xE:Ljava/util/Map;

    iget v1, p1, Lio/socket/f/b;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/socket/client/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 378
    sget-object v3, Lio/socket/client/d;->logger:Ljava/util/logging/Logger;

    const-string v4, "calling ack %s with %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Lio/socket/f/b;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p1, Lio/socket/f/b;->data:Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 379
    iget-object p1, p1, Lio/socket/f/b;->data:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p1}, Lio/socket/client/d;->a(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/socket/client/a;->a([Ljava/lang/Object;)V

    goto :goto_0

    .line 381
    :cond_0
    sget-object v0, Lio/socket/client/d;->logger:Ljava/util/logging/Logger;

    const-string v3, "bad ack %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget p1, p1, Lio/socket/f/b;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private eB()V
    .locals 2

    .line 268
    sget-object v0, Lio/socket/client/d;->logger:Ljava/util/logging/Logger;

    const-string v1, "transport is open - connecting"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const-string v0, "/"

    .line 270
    iget-object v1, p0, Lio/socket/client/d;->xC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lio/socket/f/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/socket/f/b;-><init>(I)V

    invoke-direct {p0, v0}, Lio/socket/client/d;->b(Lio/socket/f/b;)V

    :cond_0
    return-void
.end method

.method private eH()V
    .locals 2

    .line 98
    iget-object v0, p0, Lio/socket/client/d;->wV:Ljava/util/Queue;

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lio/socket/client/d;->xD:Lio/socket/client/Manager;

    .line 101
    new-instance v1, Lio/socket/client/Socket$2;

    invoke-direct {v1, p0, v0}, Lio/socket/client/Socket$2;-><init>(Lio/socket/client/d;Lio/socket/client/Manager;)V

    iput-object v1, p0, Lio/socket/client/d;->wV:Ljava/util/Queue;

    return-void
.end method

.method private eK()V
    .locals 2

    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lio/socket/client/d;->connected:Z

    const-string v0, "connect"

    const/4 v1, 0x0

    .line 387
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 388
    invoke-direct {p0}, Lio/socket/client/d;->eL()V

    return-void
.end method

.method private eL()V
    .locals 2

    .line 393
    :goto_0
    iget-object v0, p0, Lio/socket/client/d;->xF:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 394
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 395
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v1, v0}, Lio/socket/b/a;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Lio/socket/client/d;->xF:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 400
    :goto_1
    iget-object v0, p0, Lio/socket/client/d;->xG:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/socket/f/b;

    if-eqz v0, :cond_1

    .line 401
    invoke-direct {p0, v0}, Lio/socket/client/d;->b(Lio/socket/f/b;)V

    goto :goto_1

    .line 403
    :cond_1
    iget-object v0, p0, Lio/socket/client/d;->xG:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method private eM()V
    .locals 5

    .line 407
    sget-object v0, Lio/socket/client/d;->logger:Ljava/util/logging/Logger;

    const-string v1, "server disconnect (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/socket/client/d;->xC:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 408
    invoke-direct {p0}, Lio/socket/client/d;->destroy()V

    const-string v0, "io server disconnect"

    .line 409
    invoke-direct {p0, v0}, Lio/socket/client/d;->aG(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic eP()Ljava/util/logging/Logger;
    .locals 1

    .line 19
    sget-object v0, Lio/socket/client/d;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic f(Lio/socket/client/d;)I
    .locals 0

    .line 19
    iget p0, p0, Lio/socket/client/d;->xB:I

    return p0
.end method

.method static synthetic g(Lio/socket/client/d;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lio/socket/client/d;->xE:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic h(Lio/socket/client/d;)I
    .locals 2

    .line 19
    iget v0, p0, Lio/socket/client/d;->xB:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/socket/client/d;->xB:I

    return v0
.end method

.method static synthetic i(Lio/socket/client/d;)Ljava/util/Queue;
    .locals 0

    .line 19
    iget-object p0, p0, Lio/socket/client/d;->xG:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic j(Lio/socket/client/d;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lio/socket/client/d;->xC:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lio/socket/client/d;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lio/socket/client/d;->destroy()V

    return-void
.end method


# virtual methods
.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;
    .locals 1

    .line 173
    new-instance v0, Lio/socket/client/d$2;

    invoke-direct {v0, p0, p1, p2}, Lio/socket/client/d$2;-><init>(Lio/socket/client/d;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public eI()Lio/socket/client/d;
    .locals 1

    .line 127
    new-instance v0, Lio/socket/client/d$1;

    invoke-direct {v0, p0}, Lio/socket/client/d$1;-><init>(Lio/socket/client/d;)V

    invoke-static {v0}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public eJ()Lio/socket/client/d;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lio/socket/client/d;->eI()Lio/socket/client/d;

    move-result-object v0

    return-object v0
.end method

.method public eN()Lio/socket/client/d;
    .locals 1

    .line 430
    new-instance v0, Lio/socket/client/d$4;

    invoke-direct {v0, p0}, Lio/socket/client/d$4;-><init>(Lio/socket/client/d;)V

    invoke-static {v0}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public eO()Lio/socket/client/d;
    .locals 1

    .line 454
    invoke-virtual {p0}, Lio/socket/client/d;->eN()Lio/socket/client/d;

    move-result-object v0

    return-object v0
.end method
