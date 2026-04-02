.class Lio/socket/client/d$2;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ki:[Ljava/lang/Object;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic xI:Lio/socket/client/d;


# direct methods
.method constructor <init>(Lio/socket/client/d;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lio/socket/client/d$2;->xI:Lio/socket/client/d;

    iput-object p2, p0, Lio/socket/client/d$2;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lio/socket/client/d$2;->ki:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 176
    sget-object v0, Lio/socket/client/d;->xA:Ljava/util/Map;

    iget-object v1, p0, Lio/socket/client/d$2;->val$event:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lio/socket/client/d$2;->xI:Lio/socket/client/d;

    iget-object v1, p0, Lio/socket/client/d$2;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lio/socket/client/d$2;->ki:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lio/socket/client/d;->a(Lio/socket/client/d;Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/socket/client/d$2;->ki:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    iget-object v1, p0, Lio/socket/client/d$2;->val$event:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v1, p0, Lio/socket/client/d$2;->ki:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 187
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 189
    :cond_1
    invoke-static {v1}, Lio/socket/d/a;->e(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    .line 190
    :goto_1
    new-instance v4, Lio/socket/f/b;

    invoke-direct {v4, v3, v1}, Lio/socket/f/b;-><init>(ILjava/lang/Object;)V

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lio/socket/client/a;

    if-eqz v3, :cond_3

    .line 193
    invoke-static {}, Lio/socket/client/d;->eP()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v5, "emitting packet with ack id %d"

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lio/socket/client/d$2;->xI:Lio/socket/client/d;

    invoke-static {v8}, Lio/socket/client/d;->f(Lio/socket/client/d;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 194
    iget-object v3, p0, Lio/socket/client/d$2;->xI:Lio/socket/client/d;

    invoke-static {v3}, Lio/socket/client/d;->g(Lio/socket/client/d;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lio/socket/client/d$2;->xI:Lio/socket/client/d;

    invoke-static {v5}, Lio/socket/client/d;->f(Lio/socket/client/d;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/socket/client/a;

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Lio/socket/client/d;->b(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v0

    .line 196
    iput-object v0, v4, Lio/socket/f/b;->data:Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lio/socket/client/d$2;->xI:Lio/socket/client/d;

    invoke-static {v0}, Lio/socket/client/d;->h(Lio/socket/client/d;)I

    move-result v0

    iput v0, v4, Lio/socket/f/b;->id:I

    .line 200
    :cond_3
    iget-object v0, p0, Lio/socket/client/d$2;->xI:Lio/socket/client/d;

    invoke-static {v0}, Lio/socket/client/d;->c(Lio/socket/client/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    iget-object v0, p0, Lio/socket/client/d$2;->xI:Lio/socket/client/d;

    invoke-static {v0, v4}, Lio/socket/client/d;->b(Lio/socket/client/d;Lio/socket/f/b;)V

    goto :goto_2

    .line 203
    :cond_4
    iget-object v0, p0, Lio/socket/client/d$2;->xI:Lio/socket/client/d;

    invoke-static {v0}, Lio/socket/client/d;->i(Lio/socket/client/d;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method
