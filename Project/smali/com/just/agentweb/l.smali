.class public Lcom/just/agentweb/l;
.super Lcom/just/agentweb/m;
.source "DefaultDesignUIController.java"


# instance fields
.field private cm:Lcom/just/agentweb/WebParentLayout;

.field private mActivity:Landroid/app/Activity;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/just/agentweb/m;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/just/agentweb/l;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10

    .line 60
    iget-object v0, p0, Lcom/just/agentweb/l;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 69
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/just/agentweb/al$a;->black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 65
    invoke-static/range {v2 .. v9}, Lcom/just/agentweb/h;->a(Landroid/view/View;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p3}, Lcom/just/agentweb/l;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Lcom/just/agentweb/m;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .locals 0

    .line 170
    invoke-super/range {p0 .. p5}, Lcom/just/agentweb/m;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/m;->a(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 184
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "performDownload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object p2, p0, Lcom/just/agentweb/l;->cm:Lcom/just/agentweb/WebParentLayout;

    invoke-virtual {p2}, Lcom/just/agentweb/WebParentLayout;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/just/agentweb/l;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V
    .locals 0

    .line 176
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/m;->b(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V

    .line 177
    iput-object p2, p0, Lcom/just/agentweb/l;->mActivity:Landroid/app/Activity;

    .line 178
    iput-object p1, p0, Lcom/just/agentweb/l;->cm:Lcom/just/agentweb/WebParentLayout;

    .line 179
    iget-object p1, p0, Lcom/just/agentweb/l;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/just/agentweb/l;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method
