.class public abstract Lcom/just/agentweb/b;
.super Ljava/lang/Object;
.source "AbsAgentWebUIController.java"


# static fields
.field public static cl:Z = false


# instance fields
.field protected TAG:Ljava/lang/String;

.field private cm:Lcom/just/agentweb/WebParentLayout;

.field private volatile cn:Z

.field protected co:Lcom/just/agentweb/b;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "android.support.design.widget.Snackbar"

    .line 44
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "android.support.design.widget.BottomSheetDialog"

    .line 45
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 46
    sput-boolean v0, Lcom/just/agentweb/b;->cl:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 48
    sput-boolean v0, Lcom/just/agentweb/b;->cl:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/just/agentweb/b;->cn:Z

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/b;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Dialog;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public abstract a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/os/Handler$Callback;)V
.end method

.method public abstract a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V
.end method

.method public abstract a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
.end method

.method final declared-synchronized a(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    .line 66
    :try_start_0
    iget-boolean v0, p0, Lcom/just/agentweb/b;->cn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/just/agentweb/b;->cn:Z

    .line 68
    iput-object p1, p0, Lcom/just/agentweb/b;->cm:Lcom/just/agentweb/WebParentLayout;

    .line 69
    iput-object p2, p0, Lcom/just/agentweb/b;->mActivity:Landroid/app/Activity;

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/just/agentweb/b;->b(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 65
    monitor-exit p0

    throw p1
.end method

.method public abstract a(Ljava/lang/String;Landroid/os/Handler$Callback;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract b(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V
.end method

.method protected o()Lcom/just/agentweb/b;
    .locals 1

    .line 54
    sget-boolean v0, Lcom/just/agentweb/b;->cl:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/just/agentweb/l;

    invoke-direct {v0}, Lcom/just/agentweb/l;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/just/agentweb/m;

    invoke-direct {v0}, Lcom/just/agentweb/m;-><init>()V

    :goto_0
    return-object v0
.end method

.method protected p()Lcom/just/agentweb/b;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/just/agentweb/b;->co:Lcom/just/agentweb/b;

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/just/agentweb/b;->o()Lcom/just/agentweb/b;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/b;->co:Lcom/just/agentweb/b;

    :cond_0
    return-object v0
.end method

.method public abstract q()V
.end method
