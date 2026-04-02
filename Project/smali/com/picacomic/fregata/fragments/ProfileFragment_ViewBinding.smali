.class public Lcom/picacomic/fregata/fragments/ProfileFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ProfileFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private qY:Lcom/picacomic/fregata/fragments/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/ProfileFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment_ViewBinding;->qY:Lcom/picacomic/fregata/fragments/ProfileFragment;

    const-string v0, "field \'tabLayout\'"

    .line 27
    const-class v1, Landroid/support/design/widget/TabLayout;

    const v2, 0x7f09023e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    const-string v0, "field \'expCircleView\'"

    .line 28
    const-class v1, Lcom/picacomic/fregata/utils/views/ExpCircleView;

    const v2, 0x7f0900f0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/utils/views/ExpCircleView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileFragment;->expCircleView:Lcom/picacomic/fregata/utils/views/ExpCircleView;

    const-string v0, "field \'imageView_avatarBlur\'"

    .line 29
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09016f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_avatarBlur:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_verified\'"

    .line 30
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090173

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_verified:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_character\'"

    .line 31
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090170

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_character:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_avatar\'"

    .line 32
    const-class v1, Lde/hdodenhof/circleimageview/CircleImageView;

    const v2, 0x7f09016e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    const-string v0, "field \'textView_level\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902cb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_level:Landroid/widget/TextView;

    const-string v0, "field \'textView_name\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902cc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_name:Landroid/widget/TextView;

    const-string v0, "field \'textView_honor\'"

    .line 35
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ca

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_honor:Landroid/widget/TextView;

    const-string v0, "field \'textView_slogan\'"

    .line 36
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902d8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_slogan:Landroid/widget/TextView;

    const-string v0, "field \'textView_punchIn\'"

    .line 37
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902d7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_punchIn:Landroid/widget/TextView;

    const-string v0, "field \'button_edit\'"

    .line 38
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09007e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileFragment;->button_edit:Landroid/widget/Button;

    const-string v0, "field \'viewPager_tags\'"

    .line 39
    const-class v1, Landroid/support/v4/view/ViewPager;

    const v2, 0x7f090320

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/ProfileFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment_ViewBinding;->qY:Lcom/picacomic/fregata/fragments/ProfileFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment_ViewBinding;->qY:Lcom/picacomic/fregata/fragments/ProfileFragment;

    .line 49
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 50
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->expCircleView:Lcom/picacomic/fregata/utils/views/ExpCircleView;

    .line 51
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_avatarBlur:Landroid/widget/ImageView;

    .line 52
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_verified:Landroid/widget/ImageView;

    .line 53
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_character:Landroid/widget/ImageView;

    .line 54
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 55
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_level:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_name:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_honor:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_slogan:Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_punchIn:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->button_edit:Landroid/widget/Button;

    .line 61
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
