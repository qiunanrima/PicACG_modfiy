.class public Lcom/picacomic/fregata/fragments/SettingFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SettingFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private rL:Lcom/picacomic/fregata/fragments/SettingFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/SettingFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment_ViewBinding;->rL:Lcom/picacomic/fregata/fragments/SettingFragment;

    const-string v0, "field \'toolbar\'"

    .line 24
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f09030d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'textView_screenOrientation\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ee

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_screenOrientation:Landroid/widget/TextView;

    const-string v0, "field \'textView_scrollDirection\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ef

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_scrollDirection:Landroid/widget/TextView;

    const-string v0, "field \'textView_autoPagingInterval\'"

    .line 27
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_autoPagingInterval:Landroid/widget/TextView;

    const-string v0, "field \'textView_apkVersionTitle\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_apkVersionTitle:Landroid/widget/TextView;

    const-string v0, "field \'textView_apkVersion\'"

    .line 29
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_apkVersion:Landroid/widget/TextView;

    const-string v0, "field \'textView_cacheTitle\'"

    .line 30
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_cacheTitle:Landroid/widget/TextView;

    const-string v0, "field \'textView_cache\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_cache:Landroid/widget/TextView;

    const-string v0, "field \'textView_continueDownloadComic\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_continueDownloadComic:Landroid/widget/TextView;

    const-string v0, "field \'textView_pinTitle\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ed

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_pinTitle:Landroid/widget/TextView;

    const-string v0, "field \'textView_pin\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ec

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_pin:Landroid/widget/TextView;

    const-string v0, "field \'textView_password\'"

    .line 35
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ea

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_password:Landroid/widget/TextView;

    const-string v0, "field \'textView_faq\'"

    .line 36
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_faq:Landroid/widget/TextView;

    const-string v0, "field \'textView_chatroomService\'"

    .line 37
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_chatroomService:Landroid/widget/TextView;

    const-string v0, "field \'textView_imageQuality\'"

    .line 38
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_imageQuality:Landroid/widget/TextView;

    const-string v0, "field \'textView_themeColor\'"

    .line 39
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902f0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_themeColor:Landroid/widget/TextView;

    const-string v0, "field \'button_logout\'"

    .line 40
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090089

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->button_logout:Landroid/widget/Button;

    const-string v0, "field \'toggleButton_nightMode\'"

    .line 41
    const-class v1, Landroid/widget/ToggleButton;

    const v2, 0x7f09030a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_nightMode:Landroid/widget/ToggleButton;

    const-string v0, "field \'toggleButton_volumePagingControl\'"

    .line 42
    const-class v1, Landroid/widget/ToggleButton;

    const v2, 0x7f09030c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_volumePagingControl:Landroid/widget/ToggleButton;

    const-string v0, "field \'toggleButton_testingVersion\'"

    .line 43
    const-class v1, Landroid/widget/ToggleButton;

    const v2, 0x7f090309

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_testingVersion:Landroid/widget/ToggleButton;

    const-string v0, "field \'toggleButton_performanceEnhancement\'"

    .line 44
    const-class v1, Landroid/widget/ToggleButton;

    const v2, 0x7f09030b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ToggleButton;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_performanceEnhancement:Landroid/widget/ToggleButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment_ViewBinding;->rL:Lcom/picacomic/fregata/fragments/SettingFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/SettingFragment_ViewBinding;->rL:Lcom/picacomic/fregata/fragments/SettingFragment;

    .line 54
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 55
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_screenOrientation:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_scrollDirection:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_autoPagingInterval:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_apkVersionTitle:Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_apkVersion:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_cacheTitle:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_cache:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_continueDownloadComic:Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_pinTitle:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_pin:Landroid/widget/TextView;

    .line 65
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_password:Landroid/widget/TextView;

    .line 66
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_faq:Landroid/widget/TextView;

    .line 67
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_chatroomService:Landroid/widget/TextView;

    .line 68
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_imageQuality:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_themeColor:Landroid/widget/TextView;

    .line 70
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->button_logout:Landroid/widget/Button;

    .line 71
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_nightMode:Landroid/widget/ToggleButton;

    .line 72
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_volumePagingControl:Landroid/widget/ToggleButton;

    .line 73
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_testingVersion:Landroid/widget/ToggleButton;

    .line 74
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_performanceEnhancement:Landroid/widget/ToggleButton;

    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
