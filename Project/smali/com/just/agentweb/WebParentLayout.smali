.class public Lcom/just/agentweb/WebParentLayout;
.super Landroid/widget/FrameLayout;
.source "WebParentLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebParentLayout"


# instance fields
.field private db:Landroid/webkit/WebView;

.field private dd:Lcom/just/agentweb/b;

.field private di:Landroid/view/View;

.field private fe:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private ff:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private fg:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/just/agentweb/WebParentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    sget-object p1, Lcom/just/agentweb/WebParentLayout;->TAG:Ljava/lang/String;

    const-string v0, "WebParentLayout"

    invoke-static {p1, v0}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/just/agentweb/WebParentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcom/just/agentweb/WebParentLayout;->dd:Lcom/just/agentweb/b;

    const/4 p3, -0x1

    .line 44
    iput p3, p0, Lcom/just/agentweb/WebParentLayout;->ff:I

    .line 48
    iput-object p2, p0, Lcom/just/agentweb/WebParentLayout;->fg:Landroid/widget/FrameLayout;

    .line 61
    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 64
    sget p1, Lcom/just/agentweb/al$c;->agentweb_error_page:I

    iput p1, p0, Lcom/just/agentweb/WebParentLayout;->fe:I

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "WebParentLayout context must be activity or activity sub class ."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private au()V
    .locals 6

    .line 91
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/just/agentweb/WebParentLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 93
    sget v2, Lcom/just/agentweb/al$b;->mainframe_error_container_id:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 94
    iget-object v2, p0, Lcom/just/agentweb/WebParentLayout;->di:Landroid/view/View;

    if-nez v2, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/just/agentweb/WebParentLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 96
    sget-object v3, Lcom/just/agentweb/WebParentLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mErrorLayoutRes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/just/agentweb/WebParentLayout;->fe:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget v3, p0, Lcom/just/agentweb/WebParentLayout;->fe:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/just/agentweb/WebParentLayout;->di:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 102
    :goto_0
    sget v2, Lcom/just/agentweb/al$b;->mainframe_error_viewsub_id:I

    invoke-virtual {p0, v2}, Lcom/just/agentweb/WebParentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 103
    invoke-virtual {p0, v2}, Lcom/just/agentweb/WebParentLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 104
    invoke-virtual {p0, v2}, Lcom/just/agentweb/WebParentLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 105
    invoke-virtual {p0}, Lcom/just/agentweb/WebParentLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 107
    iput-object v0, p0, Lcom/just/agentweb/WebParentLayout;->fg:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v3, v2}, Lcom/just/agentweb/WebParentLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 109
    :cond_1
    iput-object v0, p0, Lcom/just/agentweb/WebParentLayout;->fg:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v3}, Lcom/just/agentweb/WebParentLayout;->addView(Landroid/view/View;I)V

    :goto_1
    const/4 v2, 0x0

    .line 112
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 113
    iget v2, p0, Lcom/just/agentweb/WebParentLayout;->ff:I

    if-eq v2, v1, :cond_3

    .line 114
    iget v1, p0, Lcom/just/agentweb/WebParentLayout;->ff:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 116
    new-instance v0, Lcom/just/agentweb/WebParentLayout$1;

    invoke-direct {v0, p0, v1}, Lcom/just/agentweb/WebParentLayout$1;-><init>(Lcom/just/agentweb/WebParentLayout;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 128
    :cond_2
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    sget-object v1, Lcom/just/agentweb/WebParentLayout;->TAG:Ljava/lang/String;

    const-string v2, "ClickView is null , cannot bind accurate view to refresh or reload ."

    invoke-static {v1, v2}, Lcom/just/agentweb/ag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_3
    new-instance v1, Lcom/just/agentweb/WebParentLayout$2;

    invoke-direct {v1, p0, v0}, Lcom/just/agentweb/WebParentLayout$2;-><init>(Lcom/just/agentweb/WebParentLayout;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method a(Lcom/just/agentweb/b;)V
    .locals 1

    .line 68
    iput-object p1, p0, Lcom/just/agentweb/WebParentLayout;->dd:Lcom/just/agentweb/b;

    .line 69
    iget-object p1, p0, Lcom/just/agentweb/WebParentLayout;->dd:Lcom/just/agentweb/b;

    invoke-virtual {p0}, Lcom/just/agentweb/WebParentLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, p0, v0}, Lcom/just/agentweb/b;->a(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V

    return-void
.end method

.method at()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/just/agentweb/WebParentLayout;->fg:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/just/agentweb/WebParentLayout;->au()V

    .line 79
    iget-object v0, p0, Lcom/just/agentweb/WebParentLayout;->fg:Landroid/widget/FrameLayout;

    .line 82
    :goto_0
    iget v1, p0, Lcom/just/agentweb/WebParentLayout;->ff:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/just/agentweb/WebParentLayout;->ff:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method av()V
    .locals 2

    .line 149
    sget v0, Lcom/just/agentweb/al$b;->mainframe_error_container_id:I

    invoke-virtual {p0, v0}, Lcom/just/agentweb/WebParentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public aw()Lcom/just/agentweb/b;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/just/agentweb/WebParentLayout;->dd:Lcom/just/agentweb/b;

    return-object v0
.end method

.method e(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 159
    iput p2, p0, Lcom/just/agentweb/WebParentLayout;->ff:I

    .line 160
    iget p2, p0, Lcom/just/agentweb/WebParentLayout;->ff:I

    if-gtz p2, :cond_0

    const/4 p2, -0x1

    .line 161
    iput p2, p0, Lcom/just/agentweb/WebParentLayout;->ff:I

    .line 163
    :cond_0
    iput p1, p0, Lcom/just/agentweb/WebParentLayout;->fe:I

    .line 164
    iget p1, p0, Lcom/just/agentweb/WebParentLayout;->fe:I

    if-gtz p1, :cond_1

    .line 165
    sget p1, Lcom/just/agentweb/al$c;->agentweb_error_page:I

    iput p1, p0, Lcom/just/agentweb/WebParentLayout;->fe:I

    :cond_1
    return-void
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/just/agentweb/WebParentLayout;->db:Landroid/webkit/WebView;

    return-object v0
.end method

.method i(Landroid/webkit/WebView;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/just/agentweb/WebParentLayout;->db:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 177
    iput-object p1, p0, Lcom/just/agentweb/WebParentLayout;->db:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method setErrorView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 155
    iput-object p1, p0, Lcom/just/agentweb/WebParentLayout;->di:Landroid/view/View;

    return-void
.end method
