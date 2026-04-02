.class public Lcom/picacomic/fregata/holders/ComicListViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "ComicListViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private sE:Lcom/picacomic/fregata/holders/ComicListViewHolder;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/holders/ComicListViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder_ViewBinding;->sE:Lcom/picacomic/fregata/holders/ComicListViewHolder;

    const-string v0, "field \'linearLayout_container\'"

    .line 24
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090195

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;->linearLayout_container:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_filter\'"

    .line 25
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090197

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;->linearLayout_filter:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_content\'"

    .line 26
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090196

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;->linearLayout_content:Landroid/widget/LinearLayout;

    const-string v0, "field \'frameLayout_forbidden\'"

    .line 27
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090101

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;->frameLayout_forbidden:Landroid/widget/FrameLayout;

    const-string v0, "field \'frameLayout_nonChinese\'"

    .line 28
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090102

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;->frameLayout_nonChinese:Landroid/widget/FrameLayout;

    const-string v0, "field \'frameLayout_bl\'"

    .line 29
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090100

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;->frameLayout_bl:Landroid/widget/FrameLayout;

    const-string v0, "field \'imageView_image\'"

    .line 30
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090148

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;->imageView_image:Landroid/widget/ImageView;

    const-string v0, "field \'textView_name\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090280

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_name:Landroid/widget/TextView;

    const-string v0, "field \'textView_author\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09027a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_author:Landroid/widget/TextView;

    const-string v0, "field \'textView_category\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09027b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_category:Landroid/widget/TextView;

    const-string v0, "field \'textView_likeCount\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09027f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_likeCount:Landroid/widget/TextView;

    const-string v0, "field \'textView_forbidden\'"

    .line 35
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09027d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_forbidden:Landroid/widget/TextView;

    const-string v0, "field \'textView_nonChinese\'"

    .line 36
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09027e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_nonChinese:Landroid/widget/TextView;

    const-string v0, "field \'textView_bl\'"

    .line 37
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09027c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_bl:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder_ViewBinding;->sE:Lcom/picacomic/fregata/holders/ComicListViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder_ViewBinding;->sE:Lcom/picacomic/fregata/holders/ComicListViewHolder;

    .line 47
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->linearLayout_container:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->linearLayout_filter:Landroid/widget/LinearLayout;

    .line 49
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->linearLayout_content:Landroid/widget/LinearLayout;

    .line 50
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->frameLayout_forbidden:Landroid/widget/FrameLayout;

    .line 51
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->frameLayout_nonChinese:Landroid/widget/FrameLayout;

    .line 52
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->frameLayout_bl:Landroid/widget/FrameLayout;

    .line 53
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->imageView_image:Landroid/widget/ImageView;

    .line 54
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_name:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_author:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_category:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_likeCount:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_forbidden:Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_nonChinese:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_bl:Landroid/widget/TextView;

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
