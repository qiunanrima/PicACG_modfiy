.class public Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "ComicPageSimpleViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private sF:Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder_ViewBinding;->sF:Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;

    const-string v0, "field \'frameLayout_container\'"

    .line 23
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090103

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;->frameLayout_container:Landroid/widget/RelativeLayout;

    const-string v0, "field \'textView_page\'"

    .line 24
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090282

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;->textView_page:Landroid/widget/TextView;

    const-string v0, "field \'imageView_image\'"

    .line 25
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090149

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;->imageView_image:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder_ViewBinding;->sF:Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder_ViewBinding;->sF:Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;

    .line 35
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;->frameLayout_container:Landroid/widget/RelativeLayout;

    .line 36
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;->textView_page:Landroid/widget/TextView;

    .line 37
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;->imageView_image:Landroid/widget/ImageView;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
