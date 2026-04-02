.class public Lcom/picacomic/fregata/fragments/GameDetailFragment_ViewBinding;
.super Ljava/lang/Object;
.source "GameDetailFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private pf:Lcom/picacomic/fregata/fragments/GameDetailFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment_ViewBinding;->pf:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    const-string v0, "field \'appBarLayout\'"

    .line 33
    const-class v1, Landroid/support/design/widget/AppBarLayout;

    const v2, 0x7f090029

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    const-string v0, "field \'collapsingToolbarLayout\'"

    .line 34
    const-class v1, Landroid/support/design/widget/CollapsingToolbarLayout;

    const v2, 0x7f0900aa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->collapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string v0, "field \'toolbar\'"

    .line 35
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f09030d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'nestedScrollView\'"

    .line 36
    const-class v1, Landroid/support/v4/widget/NestedScrollView;

    const v2, 0x7f0901d2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    const-string v0, "field \'frameLayout_banner\'"

    .line 37
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f09010f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->frameLayout_banner:Landroid/widget/FrameLayout;

    const-string v0, "field \'relativeLayout_popup\'"

    .line 38
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090207

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->relativeLayout_popup:Landroid/widget/RelativeLayout;

    const-string v0, "field \'videoView\'"

    .line 39
    const-class v1, Landroid/widget/VideoView;

    const v2, 0x7f09031a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->videoView:Landroid/widget/VideoView;

    const-string v0, "field \'viewPager_screenShots\'"

    .line 40
    const-class v1, Landroid/support/v4/view/ViewPager;

    const v2, 0x7f09031d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->viewPager_screenShots:Landroid/support/v4/view/ViewPager;

    const-string v0, "field \'imageView_banner\'"

    .line 41
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09015a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_banner:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_icon\'"

    .line 42
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09015b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_icon:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_adult\'"

    .line 43
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090158

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_adult:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_recommend\'"

    .line 44
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09015d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_recommend:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_android\'"

    .line 45
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090159

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_android:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_ios\'"

    .line 46
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09015c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_ios:Landroid/widget/ImageView;

    const-string v0, "field \'textView_title\'"

    .line 47
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902af

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_title:Landroid/widget/TextView;

    const-string v0, "field \'textView_publisher\'"

    .line 48
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ad

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_publisher:Landroid/widget/TextView;

    const-string v0, "field \'textView_gameSize\'"

    .line 49
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ae

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_gameSize:Landroid/widget/TextView;

    const-string v0, "field \'textView_version\'"

    .line 50
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_version:Landroid/widget/TextView;

    const-string v0, "field \'textView_versionDescription\'"

    .line 51
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_versionDescription:Landroid/widget/TextView;

    const-string v0, "field \'textView_description\'"

    .line 52
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902aa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_description:Landroid/widget/TextView;

    const-string v0, "field \'textView_commentCount\'"

    .line 53
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902a9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_commentCount:Landroid/widget/TextView;

    const-string v0, "field \'textView_likeCount\'"

    .line 54
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ac

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_likeCount:Landroid/widget/TextView;

    const-string v0, "field \'textView_download\'"

    .line 55
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ab

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_download:Landroid/widget/TextView;

    const-string v0, "field \'button_download\'"

    .line 56
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090078

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->button_download:Landroid/widget/Button;

    const-string v0, "field \'imageButton_gift\'"

    .line 57
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090133

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_gift:Landroid/widget/ImageButton;

    const-string v0, "field \'imageButton_like\'"

    .line 58
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090134

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_like:Landroid/widget/ImageButton;

    const-string v0, "field \'imageButton_comment\'"

    .line 59
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090131

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_comment:Landroid/widget/ImageButton;

    const-string v0, "field \'imageButton_playVideo\'"

    .line 60
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090135

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_playVideo:Landroid/widget/ImageButton;

    const-string v0, "field \'imageButton_closePopup\'"

    .line 61
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090130

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_closePopup:Landroid/widget/ImageButton;

    const-string v0, "field \'imageButton_descriptionHeightControl\'"

    .line 62
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090132

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_descriptionHeightControl:Landroid/widget/ImageButton;

    const-string v0, "field \'imageButton_versionDescriptionHeightControl\'"

    .line 63
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090136

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_versionDescriptionHeightControl:Landroid/widget/ImageButton;

    const-string v0, "field \'recyclerView_screenShots\'"

    .line 64
    const-class v1, Lcom/picacomic/fregata/utils/views/SnapRecyclerView;

    const v2, 0x7f0901fc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/utils/views/SnapRecyclerView;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->recyclerView_screenShots:Lcom/picacomic/fregata/utils/views/SnapRecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment_ViewBinding;->pf:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment_ViewBinding;->pf:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    .line 74
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    .line 75
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->collapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 76
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 77
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 78
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->frameLayout_banner:Landroid/widget/FrameLayout;

    .line 79
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->relativeLayout_popup:Landroid/widget/RelativeLayout;

    .line 80
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->videoView:Landroid/widget/VideoView;

    .line 81
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->viewPager_screenShots:Landroid/support/v4/view/ViewPager;

    .line 82
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_banner:Landroid/widget/ImageView;

    .line 83
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_icon:Landroid/widget/ImageView;

    .line 84
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_adult:Landroid/widget/ImageView;

    .line 85
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_recommend:Landroid/widget/ImageView;

    .line 86
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_android:Landroid/widget/ImageView;

    .line 87
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_ios:Landroid/widget/ImageView;

    .line 88
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_title:Landroid/widget/TextView;

    .line 89
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_publisher:Landroid/widget/TextView;

    .line 90
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_gameSize:Landroid/widget/TextView;

    .line 91
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_version:Landroid/widget/TextView;

    .line 92
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_versionDescription:Landroid/widget/TextView;

    .line 93
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_description:Landroid/widget/TextView;

    .line 94
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_commentCount:Landroid/widget/TextView;

    .line 95
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_likeCount:Landroid/widget/TextView;

    .line 96
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_download:Landroid/widget/TextView;

    .line 97
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->button_download:Landroid/widget/Button;

    .line 98
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_gift:Landroid/widget/ImageButton;

    .line 99
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_like:Landroid/widget/ImageButton;

    .line 100
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_comment:Landroid/widget/ImageButton;

    .line 101
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_playVideo:Landroid/widget/ImageButton;

    .line 102
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_closePopup:Landroid/widget/ImageButton;

    .line 103
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_descriptionHeightControl:Landroid/widget/ImageButton;

    .line 104
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_versionDescriptionHeightControl:Landroid/widget/ImageButton;

    .line 105
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->recyclerView_screenShots:Lcom/picacomic/fregata/utils/views/SnapRecyclerView;

    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
