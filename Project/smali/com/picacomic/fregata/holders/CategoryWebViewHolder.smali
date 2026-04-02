.class public Lcom/picacomic/fregata/holders/CategoryWebViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CategoryWebViewHolder.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CategoryWebViewHolder"


# instance fields
.field context:Landroid/content/Context;

.field public textView_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090250
    .end annotation
.end field

.field public webview:Lcom/picacomic/fregata/utils/views/SquareWebview;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09032a
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 30
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    iput-object p1, p0, Lcom/picacomic/fregata/holders/CategoryWebViewHolder;->context:Landroid/content/Context;

    .line 32
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/objects/DefaultCategoryObject;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/picacomic/fregata/holders/CategoryWebViewHolder;->textView_title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/DefaultCategoryObject;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CategoryWebViewHolder;->webview:Lcom/picacomic/fregata/utils/views/SquareWebview;

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->k(Landroid/webkit/WebView;)V

    .line 38
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CategoryWebViewHolder;->webview:Lcom/picacomic/fregata/utils/views/SquareWebview;

    invoke-static {}, Lcom/picacomic/fregata/utils/a;->dU()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/utils/views/SquareWebview;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
