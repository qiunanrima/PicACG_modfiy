.class public Lcom/picacomic/fregata/fragments/ComicDetailFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ComicDetailFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private ns:Lcom/picacomic/fregata/fragments/ComicDetailFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment_ViewBinding;->ns:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    const-string v0, "field \'coordinatorLayout\'"

    .line 29
    const-class v1, Landroid/support/design/widget/CoordinatorLayout;

    const v2, 0x7f0900ae

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    const-string v0, "field \'toolbar\'"

    .line 30
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f09030d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'nestedScrollView\'"

    .line 31
    const-class v1, Landroid/support/v4/widget/NestedScrollView;

    const v2, 0x7f090216

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    const-string v0, "field \'linearLayout_tags\'"

    .line 32
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090193

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->linearLayout_tags:Landroid/widget/LinearLayout;

    const-string v0, "field \'recyclerView_episode\'"

    .line 33
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901f6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->recyclerView_episode:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'recyclerView_recommendation\'"

    .line 34
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f090200

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->recyclerView_recommendation:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'imageView_cover\'"

    .line 35
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090144

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageView_cover:Landroid/widget/ImageView;

    const-string v0, "field \'textView_title\'"

    .line 36
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090276

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_title:Landroid/widget/TextView;

    const-string v0, "field \'textView_author\'"

    .line 37
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09026e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_author:Landroid/widget/TextView;

    const-string v0, "field \'textView_translate\'"

    .line 38
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090277

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_translate:Landroid/widget/TextView;

    const-string v0, "field \'textView_likeCount\'"

    .line 39
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090273

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_likeCount:Landroid/widget/TextView;

    const-string v0, "field \'textView_viewCount\'"

    .line 40
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090278

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_viewCount:Landroid/widget/TextView;

    const-string v0, "field \'textView_categories\'"

    .line 41
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09026f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_categories:Landroid/widget/TextView;

    const-string v0, "field \'textView_description\'"

    .line 42
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090271

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_description:Landroid/widget/TextView;

    const-string v0, "field \'textView_commentCount\'"

    .line 43
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090270

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_commentCount:Landroid/widget/TextView;

    const-string v0, "field \'textView_timestamp\'"

    .line 44
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090274

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_timestamp:Landroid/widget/TextView;

    const-string v0, "field \'textView_knight\'"

    .line 45
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090272

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_knight:Landroid/widget/TextView;

    const-string v0, "field \'imageView_knightAvatar\'"

    .line 46
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090145

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageView_knightAvatar:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_knightVerified\'"

    .line 47
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090146

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageView_knightVerified:Landroid/widget/ImageView;

    const-string v0, "field \'button_startRead\'"

    .line 48
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090045

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->button_startRead:Landroid/widget/Button;

    const-string v0, "field \'button_moreEpisode\'"

    .line 49
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090044

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->button_moreEpisode:Landroid/widget/Button;

    const-string v0, "field \'imageButton_bookmark\'"

    .line 50
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090125

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_bookmark:Landroid/widget/ImageButton;

    const-string v0, "field \'imageButton_descriptionHeightControl\'"

    .line 51
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090127

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_descriptionHeightControl:Landroid/widget/ImageButton;

    const-string v0, "field \'imageButton_tagHeightControl\'"

    .line 52
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090129

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_tagHeightControl:Landroid/widget/ImageButton;

    const-string v0, "field \'imageButton_comment\'"

    .line 53
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090126

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_comment:Landroid/widget/ImageButton;

    const-string v0, "field \'imageButton_like\'"

    .line 54
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090128

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_like:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment_ViewBinding;->ns:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment_ViewBinding;->ns:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    .line 64
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    .line 65
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 66
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 67
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->linearLayout_tags:Landroid/widget/LinearLayout;

    .line 68
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->recyclerView_episode:Landroid/support/v7/widget/RecyclerView;

    .line 69
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->recyclerView_recommendation:Landroid/support/v7/widget/RecyclerView;

    .line 70
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageView_cover:Landroid/widget/ImageView;

    .line 71
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_title:Landroid/widget/TextView;

    .line 72
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_author:Landroid/widget/TextView;

    .line 73
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_translate:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_likeCount:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_viewCount:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_categories:Landroid/widget/TextView;

    .line 77
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_description:Landroid/widget/TextView;

    .line 78
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_commentCount:Landroid/widget/TextView;

    .line 79
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_timestamp:Landroid/widget/TextView;

    .line 80
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_knight:Landroid/widget/TextView;

    .line 81
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageView_knightAvatar:Landroid/widget/ImageView;

    .line 82
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageView_knightVerified:Landroid/widget/ImageView;

    .line 83
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->button_startRead:Landroid/widget/Button;

    .line 84
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->button_moreEpisode:Landroid/widget/Button;

    .line 85
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_bookmark:Landroid/widget/ImageButton;

    .line 86
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_descriptionHeightControl:Landroid/widget/ImageButton;

    .line 87
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_tagHeightControl:Landroid/widget/ImageButton;

    .line 88
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_comment:Landroid/widget/ImageButton;

    .line 89
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_like:Landroid/widget/ImageButton;

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
