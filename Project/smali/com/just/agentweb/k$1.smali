.class Lcom/just/agentweb/k$1;
.super Ljava/lang/Object;
.source "DefaultChromeClient.java"

# interfaces
.implements Lcom/just/agentweb/ActionActivity$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dT:Lcom/just/agentweb/k;


# direct methods
.method constructor <init>(Lcom/just/agentweb/k;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/just/agentweb/k$1;->dT:Lcom/just/agentweb/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;[ILandroid/os/Bundle;)V
    .locals 2
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p2, "KEY_FROM_INTENTION"

    .line 223
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x60

    if-ne p2, p3, :cond_2

    .line 224
    iget-object p2, p0, Lcom/just/agentweb/k$1;->dT:Lcom/just/agentweb/k;

    invoke-static {p2}, Lcom/just/agentweb/k;->a(Lcom/just/agentweb/k;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/just/agentweb/h;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    .line 226
    iget-object p2, p0, Lcom/just/agentweb/k$1;->dT:Lcom/just/agentweb/k;

    invoke-static {p2}, Lcom/just/agentweb/k;->b(Lcom/just/agentweb/k;)Landroid/webkit/GeolocationPermissions$Callback;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 228
    iget-object p3, p0, Lcom/just/agentweb/k$1;->dT:Lcom/just/agentweb/k;

    invoke-static {p3}, Lcom/just/agentweb/k;->b(Lcom/just/agentweb/k;)Landroid/webkit/GeolocationPermissions$Callback;

    move-result-object p3

    iget-object v0, p0, Lcom/just/agentweb/k$1;->dT:Lcom/just/agentweb/k;

    invoke-static {v0}, Lcom/just/agentweb/k;->c(Lcom/just/agentweb/k;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p3, v0, v1, p2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object p3, p0, Lcom/just/agentweb/k$1;->dT:Lcom/just/agentweb/k;

    invoke-static {p3}, Lcom/just/agentweb/k;->b(Lcom/just/agentweb/k;)Landroid/webkit/GeolocationPermissions$Callback;

    move-result-object p3

    iget-object v0, p0, Lcom/just/agentweb/k$1;->dT:Lcom/just/agentweb/k;

    invoke-static {v0}, Lcom/just/agentweb/k;->c(Lcom/just/agentweb/k;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p2, p2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 233
    :goto_0
    iget-object p2, p0, Lcom/just/agentweb/k$1;->dT:Lcom/just/agentweb/k;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/just/agentweb/k;->a(Lcom/just/agentweb/k;Landroid/webkit/GeolocationPermissions$Callback;)Landroid/webkit/GeolocationPermissions$Callback;

    .line 234
    iget-object p2, p0, Lcom/just/agentweb/k$1;->dT:Lcom/just/agentweb/k;

    invoke-static {p2, p3}, Lcom/just/agentweb/k;->a(Lcom/just/agentweb/k;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    if-nez p1, :cond_2

    .line 237
    iget-object p1, p0, Lcom/just/agentweb/k$1;->dT:Lcom/just/agentweb/k;

    invoke-static {p1}, Lcom/just/agentweb/k;->d(Lcom/just/agentweb/k;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 238
    iget-object p1, p0, Lcom/just/agentweb/k$1;->dT:Lcom/just/agentweb/k;

    invoke-static {p1}, Lcom/just/agentweb/k;->d(Lcom/just/agentweb/k;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/just/agentweb/b;

    sget-object p2, Lcom/just/agentweb/e;->dC:[Ljava/lang/String;

    const-string p3, "Location"

    const-string v0, "Location"

    .line 240
    invoke-virtual {p1, p2, p3, v0}, Lcom/just/agentweb/b;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
