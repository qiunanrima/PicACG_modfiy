.class public Lcom/picacomic/fregata/holders/CommentViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "CommentViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private sN:Lcom/picacomic/fregata/holders/CommentViewHolder;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/holders/CommentViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder_ViewBinding;->sN:Lcom/picacomic/fregata/holders/CommentViewHolder;

    const-string v0, "field \'textView_content\'"

    .line 24
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09028a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_content:Landroid/widget/TextView;

    const-string v0, "field \'textView_likeCount\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09028e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_likeCount:Landroid/widget/TextView;

    const-string v0, "field \'textView_replyCount\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090290

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_replyCount:Landroid/widget/TextView;

    const-string v0, "field \'textView_createdDate\'"

    .line 27
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09028b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_createdDate:Landroid/widget/TextView;

    const-string v0, "field \'textView_username\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090292

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_username:Landroid/widget/TextView;

    const-string v0, "field \'textView_floor\'"

    .line 29
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09028c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_floor:Landroid/widget/TextView;

    const-string v0, "field \'textView_level\'"

    .line 30
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09028d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_level:Landroid/widget/TextView;

    const-string v0, "field \'textView_title\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090291

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_title:Landroid/widget/TextView;

    const-string v0, "field \'imageView_likeIcon\'"

    .line 32
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09014c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_likeIcon:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_userThumb\'"

    .line 33
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09014f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_userThumb:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_userVerified\'"

    .line 34
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090150

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_userVerified:Landroid/widget/ImageView;

    const-string v0, "field \'linearLayout_reply\'"

    .line 35
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901a2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->linearLayout_reply:Landroid/widget/LinearLayout;

    const-string v0, "field \'button_viewMore\'"

    .line 36
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09006a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_viewMore:Landroid/widget/Button;

    const-string v0, "field \'textView_noReply\'"

    .line 37
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09028f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_noReply:Landroid/widget/TextView;

    const-string v0, "field \'linearLayout_tools\'"

    .line 38
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->linearLayout_tools:Landroid/widget/LinearLayout;

    const-string v0, "field \'button_tools\'"

    .line 39
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090068

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_tools:Landroid/widget/Button;

    const-string v0, "field \'button_dirty\'"

    .line 40
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090066

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_dirty:Landroid/widget/Button;

    const-string v0, "field \'button_top\'"

    .line 41
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090069

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_top:Landroid/widget/Button;

    const-string v0, "field \'button_hide\'"

    .line 42
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090067

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_hide:Landroid/widget/Button;

    const-string v0, "field \'imageView_option\'"

    .line 43
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09014d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_option:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/picacomic/fregata/holders/CommentViewHolder_ViewBinding;->sN:Lcom/picacomic/fregata/holders/CommentViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder_ViewBinding;->sN:Lcom/picacomic/fregata/holders/CommentViewHolder;

    .line 53
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_content:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_likeCount:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_replyCount:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_createdDate:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_username:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_floor:Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_level:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_title:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_likeIcon:Landroid/widget/ImageView;

    .line 62
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_userThumb:Landroid/widget/ImageView;

    .line 63
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_userVerified:Landroid/widget/ImageView;

    .line 64
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->linearLayout_reply:Landroid/widget/LinearLayout;

    .line 65
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_viewMore:Landroid/widget/Button;

    .line 66
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_noReply:Landroid/widget/TextView;

    .line 67
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->linearLayout_tools:Landroid/widget/LinearLayout;

    .line 68
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_tools:Landroid/widget/Button;

    .line 69
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_dirty:Landroid/widget/Button;

    .line 70
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_top:Landroid/widget/Button;

    .line 71
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_hide:Landroid/widget/Button;

    .line 72
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_option:Landroid/widget/ImageView;

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
