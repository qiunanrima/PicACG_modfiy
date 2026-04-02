.class public Lcom/picacomic/fregata/holders/NewsContainerView_ViewBinding;
.super Ljava/lang/Object;
.source "NewsContainerView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private sU:Lcom/picacomic/fregata/holders/NewsContainerView;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/holders/NewsContainerView;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/picacomic/fregata/holders/NewsContainerView_ViewBinding;->sU:Lcom/picacomic/fregata/holders/NewsContainerView;

    const-string v0, "field \'imageView_icon\'"

    .line 28
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09016b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/NewsContainerView;->imageView_icon:Landroid/widget/ImageView;

    const-string v0, "field \'textView_title\'"

    .line 29
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902c3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/NewsContainerView;->textView_title:Landroid/widget/TextView;

    const-string v0, "field \'imageView_viewMore\'"

    .line 30
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09016c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/NewsContainerView;->imageView_viewMore:Landroid/widget/ImageView;

    const-string v0, "field \'textView_count\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902c4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/NewsContainerView;->textView_count:Landroid/widget/TextView;

    const-string v0, "field \'linearLayout_content\'"

    .line 32
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901b4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/picacomic/fregata/holders/NewsContainerView;->linearLayout_content:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/picacomic/fregata/holders/NewsContainerView_ViewBinding;->sU:Lcom/picacomic/fregata/holders/NewsContainerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/picacomic/fregata/holders/NewsContainerView_ViewBinding;->sU:Lcom/picacomic/fregata/holders/NewsContainerView;

    .line 42
    iput-object v1, v0, Lcom/picacomic/fregata/holders/NewsContainerView;->imageView_icon:Landroid/widget/ImageView;

    .line 43
    iput-object v1, v0, Lcom/picacomic/fregata/holders/NewsContainerView;->textView_title:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/picacomic/fregata/holders/NewsContainerView;->imageView_viewMore:Landroid/widget/ImageView;

    .line 45
    iput-object v1, v0, Lcom/picacomic/fregata/holders/NewsContainerView;->textView_count:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/picacomic/fregata/holders/NewsContainerView;->linearLayout_content:Landroid/widget/LinearLayout;

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
