.class Lcom/just/agentweb/download/DefaultDownloadImpl$1;
.super Ljava/lang/Object;
.source "DefaultDownloadImpl.java"

# interfaces
.implements Lcom/just/agentweb/ActionActivity$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/download/DefaultDownloadImpl;->aJ()Lcom/just/agentweb/ActionActivity$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fH:Lcom/just/agentweb/download/DefaultDownloadImpl;


# direct methods
.method constructor <init>(Lcom/just/agentweb/download/DefaultDownloadImpl;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$1;->fH:Lcom/just/agentweb/download/DefaultDownloadImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;[ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 199
    iget-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$1;->fH:Lcom/just/agentweb/download/DefaultDownloadImpl;

    invoke-static {p1}, Lcom/just/agentweb/download/DefaultDownloadImpl;->a(Lcom/just/agentweb/download/DefaultDownloadImpl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$1;->fH:Lcom/just/agentweb/download/DefaultDownloadImpl;

    invoke-static {p1}, Lcom/just/agentweb/download/DefaultDownloadImpl;->b(Lcom/just/agentweb/download/DefaultDownloadImpl;)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$1;->fH:Lcom/just/agentweb/download/DefaultDownloadImpl;

    invoke-static {p1}, Lcom/just/agentweb/download/DefaultDownloadImpl;->c(Lcom/just/agentweb/download/DefaultDownloadImpl;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 203
    iget-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$1;->fH:Lcom/just/agentweb/download/DefaultDownloadImpl;

    invoke-static {p1}, Lcom/just/agentweb/download/DefaultDownloadImpl;->c(Lcom/just/agentweb/download/DefaultDownloadImpl;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/just/agentweb/b;

    iget-object p2, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$1;->fH:Lcom/just/agentweb/download/DefaultDownloadImpl;

    .line 206
    invoke-static {p2}, Lcom/just/agentweb/download/DefaultDownloadImpl;->a(Lcom/just/agentweb/download/DefaultDownloadImpl;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    .line 207
    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    const-string p3, "Storage"

    const-string v0, "Download"

    .line 205
    invoke-virtual {p1, p2, p3, v0}, Lcom/just/agentweb/b;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_1
    invoke-static {}, Lcom/just/agentweb/download/DefaultDownloadImpl;->aM()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u50a8\u5b58\u6743\u9650\u83b7\u53d6\u5931\u8d25~"

    invoke-static {p1, p2}, Lcom/just/agentweb/ag;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
