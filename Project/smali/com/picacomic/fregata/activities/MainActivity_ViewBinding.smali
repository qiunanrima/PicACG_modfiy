.class public Lcom/picacomic/fregata/activities/MainActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MainActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private iU:Lcom/picacomic/fregata/activities/MainActivity;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/activities/MainActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity_ViewBinding;->iU:Lcom/picacomic/fregata/activities/MainActivity;

    const-string v0, "field \'button_home\'"

    .line 30
    const-class v1, Landroid/support/v7/widget/AppCompatImageButton;

    const v2, 0x7f090090

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/MainActivity;->button_home:Landroid/support/v7/widget/AppCompatImageButton;

    const-string v0, "field \'linearLayout_tabbar\'"

    .line 31
    const-class v1, Landroid/widget/LinearLayout;

    const v3, 0x7f0901bd

    invoke-static {p2, v3, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/MainActivity;->linearLayout_tabbar:Landroid/widget/LinearLayout;

    const-string v0, "field \'bannerWebview\'"

    .line 32
    const-class v1, Lcom/picacomic/fregata/utils/views/BannerWebview;

    const v3, 0x7f09002b

    invoke-static {p2, v3, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/utils/views/BannerWebview;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/MainActivity;->bannerWebview:Lcom/picacomic/fregata/utils/views/BannerWebview;

    const-string v0, "field \'popupWebview\'"

    .line 33
    const-class v1, Lcom/picacomic/fregata/utils/views/PopupWebview;

    const v3, 0x7f0901e0

    invoke-static {p2, v3, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/utils/views/PopupWebview;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/MainActivity;->popupWebview:Lcom/picacomic/fregata/utils/views/PopupWebview;

    const-string v0, "field \'button_controlExp\'"

    .line 34
    const-class v1, Landroid/widget/ImageButton;

    const v3, 0x7f09012c

    invoke-static {p2, v3, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/MainActivity;->button_controlExp:Landroid/widget/ImageButton;

    const-string v0, "field \'button_controlBlock\'"

    .line 35
    const-class v1, Landroid/widget/ImageButton;

    const v3, 0x7f09012b

    invoke-static {p2, v3, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/MainActivity;->button_controlBlock:Landroid/widget/ImageButton;

    const/4 v0, 0x5

    .line 36
    new-array v0, v0, [Landroid/support/v7/widget/AppCompatImageButton;

    const-string v1, "field \'buttons_tabbar\'"

    const-class v3, Landroid/support/v7/widget/AppCompatImageButton;

    .line 37
    invoke-static {p2, v2, v1, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatImageButton;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "field \'buttons_tabbar\'"

    const-class v2, Landroid/support/v7/widget/AppCompatImageButton;

    const v3, 0x7f09008e

    .line 38
    invoke-static {p2, v3, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatImageButton;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "field \'buttons_tabbar\'"

    const-class v2, Landroid/support/v7/widget/AppCompatImageButton;

    const v3, 0x7f09008f

    .line 39
    invoke-static {p2, v3, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatImageButton;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "field \'buttons_tabbar\'"

    const-class v2, Landroid/support/v7/widget/AppCompatImageButton;

    const v3, 0x7f090091

    .line 40
    invoke-static {p2, v3, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatImageButton;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "field \'buttons_tabbar\'"

    const-class v2, Landroid/support/v7/widget/AppCompatImageButton;

    const v3, 0x7f090092

    .line 41
    invoke-static {p2, v3, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/AppCompatImageButton;

    const/4 v1, 0x4

    aput-object p2, v0, v1

    .line 36
    invoke-static {v0}, Lbutterknife/internal/Utils;->arrayOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/support/v7/widget/AppCompatImageButton;

    iput-object p2, p1, Lcom/picacomic/fregata/activities/MainActivity;->buttons_tabbar:[Landroid/support/v7/widget/AppCompatImageButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity_ViewBinding;->iU:Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/picacomic/fregata/activities/MainActivity_ViewBinding;->iU:Lcom/picacomic/fregata/activities/MainActivity;

    .line 51
    iput-object v1, v0, Lcom/picacomic/fregata/activities/MainActivity;->button_home:Landroid/support/v7/widget/AppCompatImageButton;

    .line 52
    iput-object v1, v0, Lcom/picacomic/fregata/activities/MainActivity;->linearLayout_tabbar:Landroid/widget/LinearLayout;

    .line 53
    iput-object v1, v0, Lcom/picacomic/fregata/activities/MainActivity;->bannerWebview:Lcom/picacomic/fregata/utils/views/BannerWebview;

    .line 54
    iput-object v1, v0, Lcom/picacomic/fregata/activities/MainActivity;->popupWebview:Lcom/picacomic/fregata/utils/views/PopupWebview;

    .line 55
    iput-object v1, v0, Lcom/picacomic/fregata/activities/MainActivity;->button_controlExp:Landroid/widget/ImageButton;

    .line 56
    iput-object v1, v0, Lcom/picacomic/fregata/activities/MainActivity;->button_controlBlock:Landroid/widget/ImageButton;

    .line 57
    iput-object v1, v0, Lcom/picacomic/fregata/activities/MainActivity;->buttons_tabbar:[Landroid/support/v7/widget/AppCompatImageButton;

    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
