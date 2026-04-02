.class public Lcom/picacomic/fregata/fragments/ComicListFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ComicListFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private nU:Lcom/picacomic/fregata/fragments/ComicListFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/ComicListFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment_ViewBinding;->nU:Lcom/picacomic/fregata/fragments/ComicListFragment;

    const-string v0, "field \'frameLayout_noComics\'"

    .line 28
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0900ff

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->frameLayout_noComics:Landroid/widget/FrameLayout;

    const-string v0, "field \'coordinatorLayout\'"

    .line 29
    const-class v1, Landroid/support/design/widget/CoordinatorLayout;

    const v2, 0x7f0900ae

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    const-string v0, "field \'recyclerView_comicList\'"

    .line 30
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901f8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->recyclerView_comicList:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'imageView_empty\'"

    .line 31
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090147

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->imageView_empty:Landroid/widget/ImageView;

    const-string v0, "field \'textView_totalPage\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090281

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->textView_totalPage:Landroid/widget/TextView;

    const-string v0, "field \'editText_currentPage\'"

    .line 33
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900c8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->editText_currentPage:Landroid/widget/EditText;

    const-string v0, "field \'toolbar\'"

    .line 34
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f09030d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v0, 0x8

    .line 35
    new-array v0, v0, [Landroid/widget/Button;

    const-string v1, "field \'buttons_filters\'"

    const-class v2, Landroid/widget/Button;

    const v3, 0x7f09004a

    .line 36
    invoke-static {p2, v3, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "field \'buttons_filters\'"

    const-class v2, Landroid/widget/Button;

    const v3, 0x7f09004d

    .line 37
    invoke-static {p2, v3, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "field \'buttons_filters\'"

    const-class v2, Landroid/widget/Button;

    const v3, 0x7f090048

    .line 38
    invoke-static {p2, v3, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "field \'buttons_filters\'"

    const-class v2, Landroid/widget/Button;

    const v3, 0x7f09004c

    .line 39
    invoke-static {p2, v3, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "field \'buttons_filters\'"

    const-class v2, Landroid/widget/Button;

    const v3, 0x7f09004e

    .line 40
    invoke-static {p2, v3, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "field \'buttons_filters\'"

    const-class v2, Landroid/widget/Button;

    const v3, 0x7f090049

    .line 41
    invoke-static {p2, v3, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "field \'buttons_filters\'"

    const-class v2, Landroid/widget/Button;

    const v3, 0x7f09004b

    .line 42
    invoke-static {p2, v3, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "field \'buttons_filters\'"

    const-class v2, Landroid/widget/Button;

    const v3, 0x7f09004f

    .line 43
    invoke-static {p2, v3, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const/4 v1, 0x7

    aput-object p2, v0, v1

    .line 35
    invoke-static {v0}, Lbutterknife/internal/Utils;->arrayOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/widget/Button;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->buttons_filters:[Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment_ViewBinding;->nU:Lcom/picacomic/fregata/fragments/ComicListFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment_ViewBinding;->nU:Lcom/picacomic/fregata/fragments/ComicListFragment;

    .line 53
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->frameLayout_noComics:Landroid/widget/FrameLayout;

    .line 54
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    .line 55
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->recyclerView_comicList:Landroid/support/v7/widget/RecyclerView;

    .line 56
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->imageView_empty:Landroid/widget/ImageView;

    .line 57
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->textView_totalPage:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->editText_currentPage:Landroid/widget/EditText;

    .line 59
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 60
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->buttons_filters:[Landroid/widget/Button;

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
