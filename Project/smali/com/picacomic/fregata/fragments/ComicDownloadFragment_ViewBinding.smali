.class public Lcom/picacomic/fregata/fragments/ComicDownloadFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ComicDownloadFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private nx:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/ComicDownloadFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment_ViewBinding;->nx:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    const-string v0, "field \'button_download\'"

    .line 24
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090046

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->button_download:Landroid/widget/Button;

    const-string v0, "field \'button_manage\'"

    .line 25
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090047

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->button_manage:Landroid/widget/Button;

    const-string v0, "field \'textView_testBroadcast\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090279

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->textView_testBroadcast:Landroid/widget/TextView;

    const-string v0, "field \'recyclerView_episode\'"

    .line 27
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901f7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->recyclerView_episode:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'toolbar\'"

    .line 28
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f09030d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/Toolbar;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment_ViewBinding;->nx:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment_ViewBinding;->nx:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    .line 38
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->button_download:Landroid/widget/Button;

    .line 39
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->button_manage:Landroid/widget/Button;

    .line 40
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->textView_testBroadcast:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->recyclerView_episode:Landroid/support/v7/widget/RecyclerView;

    .line 42
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
