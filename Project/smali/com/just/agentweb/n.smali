.class public Lcom/just/agentweb/n;
.super Ljava/lang/Object;
.source "DefaultWebCreator.java"

# interfaces
.implements Lcom/just/agentweb/ap;


# static fields
.field private static final TAG:Ljava/lang/String; = "n"


# instance fields
.field private cY:Landroid/view/ViewGroup$LayoutParams;

.field private db:Landroid/webkit/WebView;

.field private et:Z

.field private eu:Lcom/just/agentweb/BaseIndicatorView;

.field private ev:Z

.field private ew:Lcom/just/agentweb/w;

.field private ex:Lcom/just/agentweb/i;

.field private ey:Landroid/widget/FrameLayout;

.field private mActivity:Landroid/app/Activity;

.field private mColor:I

.field private mHeight:I

.field private mIndex:I

.field private mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;IIILandroid/webkit/WebView;Lcom/just/agentweb/w;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/just/agentweb/n;->cY:Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    .line 42
    iput v1, p0, Lcom/just/agentweb/n;->mColor:I

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/just/agentweb/n;->ev:Z

    .line 50
    iput-object v0, p0, Lcom/just/agentweb/n;->db:Landroid/webkit/WebView;

    .line 51
    iput-object v0, p0, Lcom/just/agentweb/n;->ey:Landroid/widget/FrameLayout;

    .line 74
    iput-object p1, p0, Lcom/just/agentweb/n;->mActivity:Landroid/app/Activity;

    .line 75
    iput-object p2, p0, Lcom/just/agentweb/n;->mViewGroup:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lcom/just/agentweb/n;->et:Z

    .line 77
    iput p4, p0, Lcom/just/agentweb/n;->mIndex:I

    .line 78
    iput p5, p0, Lcom/just/agentweb/n;->mColor:I

    .line 79
    iput-object p3, p0, Lcom/just/agentweb/n;->cY:Landroid/view/ViewGroup$LayoutParams;

    .line 80
    iput p6, p0, Lcom/just/agentweb/n;->mHeight:I

    .line 81
    iput-object p7, p0, Lcom/just/agentweb/n;->db:Landroid/webkit/WebView;

    .line 82
    iput-object p8, p0, Lcom/just/agentweb/n;->ew:Lcom/just/agentweb/w;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;ILandroid/webkit/WebView;Lcom/just/agentweb/w;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/just/agentweb/n;->cY:Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    .line 42
    iput v1, p0, Lcom/just/agentweb/n;->mColor:I

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/just/agentweb/n;->ev:Z

    .line 50
    iput-object v0, p0, Lcom/just/agentweb/n;->db:Landroid/webkit/WebView;

    .line 51
    iput-object v0, p0, Lcom/just/agentweb/n;->ey:Landroid/widget/FrameLayout;

    .line 95
    iput-object p1, p0, Lcom/just/agentweb/n;->mActivity:Landroid/app/Activity;

    .line 96
    iput-object p2, p0, Lcom/just/agentweb/n;->mViewGroup:Landroid/view/ViewGroup;

    .line 97
    iput-boolean v1, p0, Lcom/just/agentweb/n;->et:Z

    .line 98
    iput p4, p0, Lcom/just/agentweb/n;->mIndex:I

    .line 99
    iput-object p3, p0, Lcom/just/agentweb/n;->cY:Landroid/view/ViewGroup$LayoutParams;

    .line 100
    iput-object p5, p0, Lcom/just/agentweb/n;->db:Landroid/webkit/WebView;

    .line 101
    iput-object p6, p0, Lcom/just/agentweb/n;->ew:Lcom/just/agentweb/w;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;ILcom/just/agentweb/BaseIndicatorView;Landroid/webkit/WebView;Lcom/just/agentweb/w;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/just/agentweb/n;->cY:Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    .line 42
    iput v1, p0, Lcom/just/agentweb/n;->mColor:I

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/just/agentweb/n;->ev:Z

    .line 50
    iput-object v0, p0, Lcom/just/agentweb/n;->db:Landroid/webkit/WebView;

    .line 51
    iput-object v0, p0, Lcom/just/agentweb/n;->ey:Landroid/widget/FrameLayout;

    .line 115
    iput-object p1, p0, Lcom/just/agentweb/n;->mActivity:Landroid/app/Activity;

    .line 116
    iput-object p2, p0, Lcom/just/agentweb/n;->mViewGroup:Landroid/view/ViewGroup;

    .line 117
    iput-boolean v1, p0, Lcom/just/agentweb/n;->et:Z

    .line 118
    iput p4, p0, Lcom/just/agentweb/n;->mIndex:I

    .line 119
    iput-object p3, p0, Lcom/just/agentweb/n;->cY:Landroid/view/ViewGroup$LayoutParams;

    .line 120
    iput-object p5, p0, Lcom/just/agentweb/n;->eu:Lcom/just/agentweb/BaseIndicatorView;

    .line 121
    iput-object p6, p0, Lcom/just/agentweb/n;->db:Landroid/webkit/WebView;

    .line 122
    iput-object p7, p0, Lcom/just/agentweb/n;->ew:Lcom/just/agentweb/w;

    return-void
.end method

.method private ad()Landroid/view/ViewGroup;
    .locals 8

    .line 177
    iget-object v0, p0, Lcom/just/agentweb/n;->mActivity:Landroid/app/Activity;

    .line 178
    new-instance v1, Lcom/just/agentweb/WebParentLayout;

    invoke-direct {v1, v0}, Lcom/just/agentweb/WebParentLayout;-><init>(Landroid/content/Context;)V

    .line 179
    sget v2, Lcom/just/agentweb/al$b;->web_parent_layout_id:I

    invoke-virtual {v1, v2}, Lcom/just/agentweb/WebParentLayout;->setId(I)V

    const/4 v2, -0x1

    .line 180
    invoke-virtual {v1, v2}, Lcom/just/agentweb/WebParentLayout;->setBackgroundColor(I)V

    .line 181
    iget-object v3, p0, Lcom/just/agentweb/n;->ew:Lcom/just/agentweb/w;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/just/agentweb/n;->af()Landroid/webkit/WebView;

    move-result-object v3

    iput-object v3, p0, Lcom/just/agentweb/n;->db:Landroid/webkit/WebView;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/just/agentweb/n;->ae()Landroid/view/View;

    move-result-object v3

    .line 182
    :goto_0
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 183
    invoke-virtual {v1, v3, v4}, Lcom/just/agentweb/WebParentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v3, p0, Lcom/just/agentweb/n;->db:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Lcom/just/agentweb/WebParentLayout;->i(Landroid/webkit/WebView;)V

    .line 185
    sget-object v3, Lcom/just/agentweb/n;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  instanceof  AgentWebView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/just/agentweb/n;->db:Landroid/webkit/WebView;

    instance-of v5, v5, Lcom/just/agentweb/AgentWebView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/just/agentweb/n;->db:Landroid/webkit/WebView;

    instance-of v3, v3, Lcom/just/agentweb/AgentWebView;

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    .line 187
    sput v3, Lcom/just/agentweb/c;->dv:I

    .line 189
    :cond_1
    new-instance v3, Landroid/view/ViewStub;

    invoke-direct {v3, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 190
    sget v4, Lcom/just/agentweb/al$b;->mainframe_error_viewsub_id:I

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setId(I)V

    .line 191
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Lcom/just/agentweb/WebParentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-boolean v3, p0, Lcom/just/agentweb/n;->et:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_4

    .line 194
    new-instance v3, Lcom/just/agentweb/WebIndicator;

    invoke-direct {v3, v0}, Lcom/just/agentweb/WebIndicator;-><init>(Landroid/content/Context;)V

    .line 195
    iget v5, p0, Lcom/just/agentweb/n;->mHeight:I

    if-lez v5, :cond_2

    .line 196
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    iget v7, p0, Lcom/just/agentweb/n;->mHeight:I

    int-to-float v7, v7

    invoke-static {v0, v7}, Lcom/just/agentweb/h;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {v5, v6, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {v3}, Lcom/just/agentweb/WebIndicator;->Y()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    .line 200
    :goto_1
    iget v0, p0, Lcom/just/agentweb/n;->mColor:I

    if-eq v0, v2, :cond_3

    .line 201
    iget v0, p0, Lcom/just/agentweb/n;->mColor:I

    invoke-virtual {v3, v0}, Lcom/just/agentweb/WebIndicator;->setColor(I)V

    :cond_3
    const/16 v0, 0x30

    .line 203
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 204
    iput-object v3, p0, Lcom/just/agentweb/n;->ex:Lcom/just/agentweb/i;

    move-object v0, v3

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v5}, Lcom/just/agentweb/WebParentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {v3, v4}, Lcom/just/agentweb/WebIndicator;->setVisibility(I)V

    goto :goto_2

    .line 206
    :cond_4
    iget-boolean v0, p0, Lcom/just/agentweb/n;->et:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/just/agentweb/n;->eu:Lcom/just/agentweb/BaseIndicatorView;

    if-eqz v0, :cond_5

    .line 207
    iget-object v0, p0, Lcom/just/agentweb/n;->eu:Lcom/just/agentweb/BaseIndicatorView;

    iput-object v0, p0, Lcom/just/agentweb/n;->ex:Lcom/just/agentweb/i;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/just/agentweb/n;->eu:Lcom/just/agentweb/BaseIndicatorView;

    invoke-virtual {v2}, Lcom/just/agentweb/BaseIndicatorView;->Y()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/just/agentweb/WebParentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v0, p0, Lcom/just/agentweb/n;->eu:Lcom/just/agentweb/BaseIndicatorView;

    invoke-virtual {v0, v4}, Lcom/just/agentweb/BaseIndicatorView;->setVisibility(I)V

    :cond_5
    :goto_2
    return-object v1
.end method

.method private ae()Landroid/view/View;
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/just/agentweb/n;->ew:Lcom/just/agentweb/w;

    invoke-interface {v0}, Lcom/just/agentweb/w;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/just/agentweb/n;->af()Landroid/webkit/WebView;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/just/agentweb/n;->ew:Lcom/just/agentweb/w;

    invoke-interface {v1}, Lcom/just/agentweb/w;->aj()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 220
    sget-object v1, Lcom/just/agentweb/n;->TAG:Ljava/lang/String;

    const-string v2, "add webview"

    invoke-static {v1, v2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 223
    sput v1, Lcom/just/agentweb/c;->dv:I

    .line 225
    :goto_0
    iput-object v0, p0, Lcom/just/agentweb/n;->db:Landroid/webkit/WebView;

    .line 226
    iget-object v0, p0, Lcom/just/agentweb/n;->ew:Lcom/just/agentweb/w;

    invoke-interface {v0}, Lcom/just/agentweb/w;->aj()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method private af()Landroid/webkit/WebView;
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/just/agentweb/n;->db:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/just/agentweb/n;->db:Landroid/webkit/WebView;

    const/4 v1, 0x3

    .line 235
    sput v1, Lcom/just/agentweb/c;->dv:I

    goto :goto_0

    .line 236
    :cond_0
    sget-boolean v0, Lcom/just/agentweb/c;->du:Z

    if-eqz v0, :cond_1

    .line 237
    new-instance v0, Lcom/just/agentweb/AgentWebView;

    iget-object v1, p0, Lcom/just/agentweb/n;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/just/agentweb/AgentWebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 238
    sput v1, Lcom/just/agentweb/c;->dv:I

    goto :goto_0

    .line 240
    :cond_1
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/just/agentweb/n;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 241
    sput v1, Lcom/just/agentweb/c;->dv:I

    :goto_0
    return-object v0
.end method


# virtual methods
.method public ab()Lcom/just/agentweb/n;
    .locals 4

    .line 147
    iget-boolean v0, p0, Lcom/just/agentweb/n;->ev:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/just/agentweb/n;->ev:Z

    .line 151
    iget-object v0, p0, Lcom/just/agentweb/n;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/just/agentweb/n;->ad()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/just/agentweb/n;->ey:Landroid/widget/FrameLayout;

    .line 154
    iget-object v1, p0, Lcom/just/agentweb/n;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 156
    :cond_1
    iget v1, p0, Lcom/just/agentweb/n;->mIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/just/agentweb/n;->ad()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/just/agentweb/n;->ey:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/just/agentweb/n;->cY:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/just/agentweb/n;->ad()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/just/agentweb/n;->ey:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/just/agentweb/n;->mIndex:I

    iget-object v3, p0, Lcom/just/agentweb/n;->cY:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public ac()Landroid/widget/FrameLayout;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/just/agentweb/n;->ey:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public ag()Lcom/just/agentweb/i;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/just/agentweb/n;->ex:Lcom/just/agentweb/i;

    return-object v0
.end method

.method public synthetic ah()Lcom/just/agentweb/ap;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/just/agentweb/n;->ab()Lcom/just/agentweb/n;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/just/agentweb/n;->db:Landroid/webkit/WebView;

    return-object v0
.end method
