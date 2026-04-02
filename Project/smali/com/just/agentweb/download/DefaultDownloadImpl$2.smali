.class Lcom/just/agentweb/download/DefaultDownloadImpl$2;
.super Ljava/lang/Object;
.source "DefaultDownloadImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/download/DefaultDownloadImpl;->d(Ljava/io/File;)Landroid/os/Handler$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fH:Lcom/just/agentweb/download/DefaultDownloadImpl;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/just/agentweb/download/DefaultDownloadImpl;Ljava/io/File;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$2;->fH:Lcom/just/agentweb/download/DefaultDownloadImpl;

    iput-object p2, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 318
    iget-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$2;->fH:Lcom/just/agentweb/download/DefaultDownloadImpl;

    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$2;->val$file:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/just/agentweb/download/DefaultDownloadImpl;->a(Lcom/just/agentweb/download/DefaultDownloadImpl;Ljava/io/File;)V

    const/4 p1, 0x1

    return p1
.end method
