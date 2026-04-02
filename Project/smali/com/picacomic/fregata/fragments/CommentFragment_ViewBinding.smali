.class public Lcom/picacomic/fregata/fragments/CommentFragment_ViewBinding;
.super Ljava/lang/Object;
.source "CommentFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private oC:Lcom/picacomic/fregata/fragments/CommentFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/CommentFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment_ViewBinding;->oC:Lcom/picacomic/fregata/fragments/CommentFragment;

    const-string v0, "field \'linearLayout_noComment\'"

    .line 27
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901a0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->linearLayout_noComment:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_inputBar\'"

    .line 28
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09019f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->linearLayout_inputBar:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_commentPage\'"

    .line 29
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901a1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->linearLayout_commentPage:Landroid/widget/LinearLayout;

    const-string v0, "field \'recyclerView_comments\'"

    .line 30
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901fa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->recyclerView_comments:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'imageView_empty\'"

    .line 31
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09014b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->imageView_empty:Landroid/widget/ImageView;

    const-string v0, "field \'textView_totalPage\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09029b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->textView_totalPage:Landroid/widget/TextView;

    const-string v0, "field \'editText_currentPage\'"

    .line 33
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900c9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->editText_currentPage:Landroid/widget/EditText;

    const-string v0, "field \'editText_inputField\'"

    .line 34
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900ca

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->editText_inputField:Landroid/widget/EditText;

    const-string v0, "field \'button_postComment\'"

    .line 35
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090065

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->button_postComment:Landroid/widget/Button;

    const-string v0, "field \'button_replyCancel\'"

    .line 36
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090064

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->button_replyCancel:Landroid/widget/Button;

    const-string v0, "field \'toolbar\'"

    .line 37
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f09030d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/Toolbar;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment_ViewBinding;->oC:Lcom/picacomic/fregata/fragments/CommentFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment_ViewBinding;->oC:Lcom/picacomic/fregata/fragments/CommentFragment;

    .line 47
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->linearLayout_noComment:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->linearLayout_inputBar:Landroid/widget/LinearLayout;

    .line 49
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->linearLayout_commentPage:Landroid/widget/LinearLayout;

    .line 50
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->recyclerView_comments:Landroid/support/v7/widget/RecyclerView;

    .line 51
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->imageView_empty:Landroid/widget/ImageView;

    .line 52
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->textView_totalPage:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->editText_currentPage:Landroid/widget/EditText;

    .line 54
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->editText_inputField:Landroid/widget/EditText;

    .line 55
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->button_postComment:Landroid/widget/Button;

    .line 56
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->button_replyCancel:Landroid/widget/Button;

    .line 57
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CommentFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
