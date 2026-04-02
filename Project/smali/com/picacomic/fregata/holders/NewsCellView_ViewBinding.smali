.class public Lcom/picacomic/fregata/holders/NewsCellView_ViewBinding;
.super Ljava/lang/Object;
.source "NewsCellView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private sT:Lcom/picacomic/fregata/holders/NewsCellView;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/holders/NewsCellView;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/picacomic/fregata/holders/NewsCellView_ViewBinding;->sT:Lcom/picacomic/fregata/holders/NewsCellView;

    const-string v0, "field \'imageView_image\'"

    .line 27
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09016a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/NewsCellView;->imageView_image:Landroid/widget/ImageView;

    const-string v0, "field \'textView_title\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902c2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/NewsCellView;->textView_title:Landroid/widget/TextView;

    const-string v0, "field \'textView_description\'"

    .line 29
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902c1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/picacomic/fregata/holders/NewsCellView;->textView_description:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/picacomic/fregata/holders/NewsCellView_ViewBinding;->sT:Lcom/picacomic/fregata/holders/NewsCellView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/picacomic/fregata/holders/NewsCellView_ViewBinding;->sT:Lcom/picacomic/fregata/holders/NewsCellView;

    .line 39
    iput-object v1, v0, Lcom/picacomic/fregata/holders/NewsCellView;->imageView_image:Landroid/widget/ImageView;

    .line 40
    iput-object v1, v0, Lcom/picacomic/fregata/holders/NewsCellView;->textView_title:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/picacomic/fregata/holders/NewsCellView;->textView_description:Landroid/widget/TextView;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
