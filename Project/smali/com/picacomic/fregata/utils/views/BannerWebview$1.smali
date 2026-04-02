.class Lcom/picacomic/fregata/utils/views/BannerWebview$1;
.super Ljava/lang/Object;
.source "BannerWebview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/utils/views/BannerWebview;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picacomic/fregata/utils/views/BannerWebview;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/utils/views/BannerWebview;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/BannerWebview$1;->this$0:Lcom/picacomic/fregata/utils/views/BannerWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/BannerWebview$1;->this$0:Lcom/picacomic/fregata/utils/views/BannerWebview;

    iget-object p1, p1, Lcom/picacomic/fregata/utils/views/BannerWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
