.class public Lcom/just/agentweb/af;
.super Lcom/just/agentweb/ab;
.source "JsInterfaceHolderImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "af"


# instance fields
.field private cJ:Lcom/just/agentweb/AgentWeb$SecurityType;

.field private db:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/webkit/WebView;Lcom/just/agentweb/AgentWeb$SecurityType;)V
    .locals 0

    .line 42
    invoke-direct {p0, p2}, Lcom/just/agentweb/ab;-><init>(Lcom/just/agentweb/AgentWeb$SecurityType;)V

    .line 43
    iput-object p1, p0, Lcom/just/agentweb/af;->db:Landroid/webkit/WebView;

    .line 44
    iput-object p2, p0, Lcom/just/agentweb/af;->cJ:Lcom/just/agentweb/AgentWeb$SecurityType;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Lcom/just/agentweb/ae;
    .locals 3

    .line 87
    sget-object v0, Lcom/just/agentweb/af;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "k:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/just/agentweb/af;->db:Landroid/webkit/WebView;

    invoke-virtual {v0, p2, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method static a(Landroid/webkit/WebView;Lcom/just/agentweb/AgentWeb$SecurityType;)Lcom/just/agentweb/af;
    .locals 1

    .line 37
    new-instance v0, Lcom/just/agentweb/af;

    invoke-direct {v0, p0, p1}, Lcom/just/agentweb/af;-><init>(Landroid/webkit/WebView;Lcom/just/agentweb/AgentWeb$SecurityType;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/just/agentweb/ae;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/just/agentweb/ae;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/just/agentweb/af;->an()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object p1, Lcom/just/agentweb/af;->TAG:Ljava/lang/String;

    const-string v0, "The injected object is not safe, give up injection"

    invoke-static {p1, v0}, Lcom/just/agentweb/ag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 56
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 57
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 60
    invoke-virtual {p0, v1}, Lcom/just/agentweb/af;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/just/agentweb/af;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/just/agentweb/ae;

    goto :goto_0

    .line 62
    :cond_1
    new-instance p1, Lcom/just/agentweb/JsInterfaceObjectException;

    const-string v0, "This object has not offer method javascript to call ,please check addJavascriptInterface annotation was be added"

    invoke-direct {p1, v0}, Lcom/just/agentweb/JsInterfaceObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object p0
.end method
