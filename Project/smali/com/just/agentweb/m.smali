.class public Lcom/just/agentweb/m;
.super Lcom/just/agentweb/b;
.source "DefaultUIController.java"


# instance fields
.field private cm:Lcom/just/agentweb/WebParentLayout;

.field protected dU:Landroid/support/v7/app/AlertDialog;

.field private dV:Landroid/webkit/JsPromptResult;

.field private dW:Landroid/webkit/JsResult;

.field private dX:Landroid/support/v7/app/AlertDialog;

.field private dY:Landroid/support/v7/app/AlertDialog;

.field private mActivity:Landroid/app/Activity;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/just/agentweb/b;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/just/agentweb/m;->dV:Landroid/webkit/JsPromptResult;

    .line 43
    iput-object v0, p0, Lcom/just/agentweb/m;->dW:Landroid/webkit/JsResult;

    .line 44
    iput-object v0, p0, Lcom/just/agentweb/m;->dX:Landroid/support/v7/app/AlertDialog;

    .line 47
    iput-object v0, p0, Lcom/just/agentweb/m;->dY:Landroid/support/v7/app/AlertDialog;

    .line 49
    iput-object v0, p0, Lcom/just/agentweb/m;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic a(Lcom/just/agentweb/m;)Landroid/webkit/JsResult;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/just/agentweb/m;->dW:Landroid/webkit/JsResult;

    return-object p0
.end method

.method private a(Landroid/os/Handler$Callback;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/just/agentweb/m;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/just/agentweb/m;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/just/agentweb/al$d;->agentweb_tips:I

    .line 115
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/m;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/just/agentweb/al$d;->agentweb_honeycomblow:I

    .line 116
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/m;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/just/agentweb/al$d;->agentweb_download:I

    .line 117
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/just/agentweb/m$7;

    invoke-direct {v2, p0, p1}, Lcom/just/agentweb/m$7;-><init>(Lcom/just/agentweb/m;Landroid/os/Handler$Callback;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/just/agentweb/m;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/just/agentweb/al$d;->agentweb_cancel:I

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/just/agentweb/m$6;

    invoke-direct {v1, p0}, Lcom/just/agentweb/m$6;-><init>(Lcom/just/agentweb/m;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/webkit/JsResult;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/just/agentweb/m;Landroid/webkit/JsResult;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/just/agentweb/m;->a(Landroid/webkit/JsResult;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/just/agentweb/m;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/just/agentweb/m;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/just/agentweb/m;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/just/agentweb/m;->dU:Landroid/support/v7/app/AlertDialog;

    if-nez v1, :cond_1

    .line 176
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/just/agentweb/m$10;

    invoke-direct {v2, p0}, Lcom/just/agentweb/m$10;-><init>(Lcom/just/agentweb/m;)V

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/just/agentweb/m$9;

    invoke-direct {v2, p0}, Lcom/just/agentweb/m$9;-><init>(Lcom/just/agentweb/m;)V

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/just/agentweb/m$8;

    invoke-direct {v1, p0}, Lcom/just/agentweb/m$8;-><init>(Lcom/just/agentweb/m;)V

    .line 195
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/m;->dU:Landroid/support/v7/app/AlertDialog;

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/m;->dU:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 206
    iput-object p2, p0, Lcom/just/agentweb/m;->dW:Landroid/webkit/JsResult;

    .line 207
    iget-object p1, p0, Lcom/just/agentweb/m;->dU:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    .line 171
    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/just/agentweb/m;->a(Landroid/webkit/JsResult;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/just/agentweb/m;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/just/agentweb/m;->dX:Landroid/support/v7/app/AlertDialog;

    if-nez v1, :cond_1

    .line 219
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 220
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 221
    new-instance p2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p2, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-virtual {p2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    .line 223
    invoke-virtual {p2, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    new-instance v0, Lcom/just/agentweb/m$4;

    invoke-direct {v0, p0}, Lcom/just/agentweb/m$4;-><init>(Lcom/just/agentweb/m;)V

    .line 224
    invoke-virtual {p1, p2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    new-instance v0, Lcom/just/agentweb/m$3;

    invoke-direct {v0, p0, v1}, Lcom/just/agentweb/m$3;-><init>(Lcom/just/agentweb/m;Landroid/widget/EditText;)V

    .line 231
    invoke-virtual {p1, p2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/just/agentweb/m$2;

    invoke-direct {p2, p0}, Lcom/just/agentweb/m$2;-><init>(Lcom/just/agentweb/m;)V

    .line 242
    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/just/agentweb/m;->dX:Landroid/support/v7/app/AlertDialog;

    .line 251
    :cond_1
    iput-object p3, p0, Lcom/just/agentweb/m;->dV:Landroid/webkit/JsPromptResult;

    .line 252
    iget-object p1, p0, Lcom/just/agentweb/m;->dX:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    .line 214
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroid/webkit/JsPromptResult;->cancel()V

    return-void
.end method

.method static synthetic b(Lcom/just/agentweb/m;)Landroid/webkit/JsPromptResult;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/just/agentweb/m;->dV:Landroid/webkit/JsPromptResult;

    return-object p0
.end method

.method static synthetic c(Lcom/just/agentweb/m;)Landroid/support/v7/app/AlertDialog;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/just/agentweb/m;->dX:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 263
    iget-object p1, p0, Lcom/just/agentweb/m;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mWebParentLayout onMainFrameError:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/just/agentweb/m;->cm:Lcom/just/agentweb/WebParentLayout;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/just/agentweb/m;->cm:Lcom/just/agentweb/WebParentLayout;

    if-eqz p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/just/agentweb/m;->cm:Lcom/just/agentweb/WebParentLayout;

    invoke-virtual {p1}, Lcom/just/agentweb/WebParentLayout;->at()V

    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 4

    .line 61
    iget-object p1, p0, Lcom/just/agentweb/m;->TAG:Ljava/lang/String;

    const-string p2, "onOpenPagePrompt"

    invoke-static {p1, p2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/just/agentweb/m;->dY:Landroid/support/v7/app/AlertDialog;

    if-nez p1, :cond_0

    .line 63
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/just/agentweb/m;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/just/agentweb/m;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/just/agentweb/al$d;->agentweb_leave_app_and_go_other_page:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/just/agentweb/m;->mActivity:Landroid/app/Activity;

    .line 66
    invoke-static {v3}, Lcom/just/agentweb/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 65
    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/just/agentweb/m;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/just/agentweb/al$d;->agentweb_tips:I

    .line 67
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    new-instance v0, Lcom/just/agentweb/m$5;

    invoke-direct {v0, p0, p3}, Lcom/just/agentweb/m$5;-><init>(Lcom/just/agentweb/m;Landroid/os/Handler$Callback;)V

    .line 68
    invoke-virtual {p1, p2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/just/agentweb/m;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/just/agentweb/al$d;->agentweb_leave:I

    .line 76
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/just/agentweb/m$1;

    invoke-direct {v0, p0, p3}, Lcom/just/agentweb/m$1;-><init>(Lcom/just/agentweb/m;Landroid/os/Handler$Callback;)V

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/just/agentweb/m;->dY:Landroid/support/v7/app/AlertDialog;

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/just/agentweb/m;->dY:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/just/agentweb/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 0

    .line 91
    invoke-direct {p0, p3, p4}, Lcom/just/agentweb/m;->a(Ljava/lang/String;Landroid/webkit/JsResult;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .locals 0

    .line 257
    invoke-direct {p0, p3, p4, p5}, Lcom/just/agentweb/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 102
    invoke-direct {p0, p2}, Lcom/just/agentweb/m;->a(Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 301
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "performDownload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 304
    :cond_0
    iget-object p2, p0, Lcom/just/agentweb/m;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/just/agentweb/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected b(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V
    .locals 0

    .line 321
    iput-object p2, p0, Lcom/just/agentweb/m;->mActivity:Landroid/app/Activity;

    .line 322
    iput-object p1, p0, Lcom/just/agentweb/m;->cm:Lcom/just/agentweb/WebParentLayout;

    .line 323
    iget-object p1, p0, Lcom/just/agentweb/m;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/just/agentweb/m;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public q()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/just/agentweb/m;->cm:Lcom/just/agentweb/WebParentLayout;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/just/agentweb/m;->cm:Lcom/just/agentweb/WebParentLayout;

    invoke-virtual {v0}, Lcom/just/agentweb/WebParentLayout;->av()V

    :cond_0
    return-void
.end method
