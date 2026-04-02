.class Lcom/just/agentweb/download/a$a;
.super Ljava/lang/Object;
.source "CancelDownloadInformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/download/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final fw:Lcom/just/agentweb/download/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/just/agentweb/download/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/just/agentweb/download/a;-><init>(Lcom/just/agentweb/download/a$1;)V

    sput-object v0, Lcom/just/agentweb/download/a$a;->fw:Lcom/just/agentweb/download/a;

    return-void
.end method

.method static synthetic aH()Lcom/just/agentweb/download/a;
    .locals 1

    .line 59
    sget-object v0, Lcom/just/agentweb/download/a$a;->fw:Lcom/just/agentweb/download/a;

    return-object v0
.end method
