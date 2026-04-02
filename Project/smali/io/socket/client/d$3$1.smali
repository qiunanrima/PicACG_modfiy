.class Lio/socket/client/d$3$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/d$3;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ki:[Ljava/lang/Object;

.field final synthetic xN:Lio/socket/client/d$3;


# direct methods
.method constructor <init>(Lio/socket/client/d$3;[Ljava/lang/Object;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lio/socket/client/d$3$1;->xN:Lio/socket/client/d$3;

    iput-object p2, p0, Lio/socket/client/d$3$1;->ki:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 355
    iget-object v0, p0, Lio/socket/client/d$3$1;->xN:Lio/socket/client/d$3;

    iget-object v0, v0, Lio/socket/client/d$3;->xK:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lio/socket/client/d$3$1;->xN:Lio/socket/client/d$3;

    iget-object v0, v0, Lio/socket/client/d$3;->xK:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 357
    invoke-static {}, Lio/socket/client/d;->eP()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v2, "sending ack %s"

    iget-object v3, p0, Lio/socket/client/d$3$1;->ki:[Ljava/lang/Object;

    array-length v3, v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lio/socket/client/d$3$1;->ki:[Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 359
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 360
    iget-object v2, p0, Lio/socket/client/d$3$1;->ki:[Ljava/lang/Object;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 361
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 364
    :cond_2
    invoke-static {v0}, Lio/socket/d/a;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    .line 366
    :goto_2
    new-instance v2, Lio/socket/f/b;

    invoke-direct {v2, v1, v0}, Lio/socket/f/b;-><init>(ILjava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lio/socket/client/d$3$1;->xN:Lio/socket/client/d$3;

    iget v0, v0, Lio/socket/client/d$3;->xL:I

    iput v0, v2, Lio/socket/f/b;->id:I

    .line 368
    iget-object v0, p0, Lio/socket/client/d$3$1;->xN:Lio/socket/client/d$3;

    iget-object v0, v0, Lio/socket/client/d$3;->xM:Lio/socket/client/d;

    invoke-static {v0, v2}, Lio/socket/client/d;->b(Lio/socket/client/d;Lio/socket/f/b;)V

    return-void
.end method
