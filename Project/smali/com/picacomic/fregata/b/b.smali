.class public Lcom/picacomic/fregata/b/b;
.super Ljava/lang/Object;
.source "HttpDns.java"

# interfaces
.implements Lokhttp3/Dns;


# instance fields
.field sZ:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/picacomic/fregata/MyApplication;->by()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->ao(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/b/b;->sZ:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DNS lookup hostname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 51
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/picacomic/fregata/b/b;->sZ:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/picacomic/fregata/b/b;->sZ:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 57
    :goto_0
    iget-object v2, p0, Lcom/picacomic/fregata/b/b;->sZ:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/picacomic/fregata/b/b;->sZ:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "DNS try empty address"

    .line 61
    invoke-static {v1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    :cond_1
    const-string v1, "DNS try"

    .line 66
    invoke-static {v1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    invoke-interface {v0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
