.class public Lcom/picacomic/fregata/holders/CommentProfileViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "CommentProfileViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private sJ:Lcom/picacomic/fregata/holders/CommentProfileViewHolder;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/holders/CommentProfileViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder_ViewBinding;->sJ:Lcom/picacomic/fregata/holders/CommentProfileViewHolder;

    const-string v0, "field \'textView_content\'"

    .line 24
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09028a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_content:Landroid/widget/TextView;

    const-string v0, "field \'textView_likeCount\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09028e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_likeCount:Landroid/widget/TextView;

    const-string v0, "field \'textView_replyCount\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090290

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_replyCount:Landroid/widget/TextView;

    const-string v0, "field \'textView_createdDate\'"

    .line 27
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09028b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_createdDate:Landroid/widget/TextView;

    const-string v0, "field \'textView_username\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090292

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_username:Landroid/widget/TextView;

    const-string v0, "field \'textView_floor\'"

    .line 29
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09028c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_floor:Landroid/widget/TextView;

    const-string v0, "field \'textView_level\'"

    .line 30
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09028d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_level:Landroid/widget/TextView;

    const-string v0, "field \'textView_title\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090291

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_title:Landroid/widget/TextView;

    const-string v0, "field \'imageView_likeIcon\'"

    .line 32
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09014c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->imageView_likeIcon:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_userThumb\'"

    .line 33
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09014f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->imageView_userThumb:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_userVerified\'"

    .line 34
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090150

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->imageView_userVerified:Landroid/widget/ImageView;

    const-string v0, "field \'linearLayout_reply\'"

    .line 35
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901a2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->linearLayout_reply:Landroid/widget/LinearLayout;

    const-string v0, "field \'button_viewMore\'"

    .line 36
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09006a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->button_viewMore:Landroid/widget/Button;

    const-string v0, "field \'textView_noReply\'"

    .line 37
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09028f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_noReply:Landroid/widget/TextView;

    const-string v0, "field \'textView_viewContentPage\'"

    .line 38
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090293

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_viewContentPage:Landroid/widget/TextView;

    const-string v0, "field \'button_hide\'"

    .line 39
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090067

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->button_hide:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder_ViewBinding;->sJ:Lcom/picacomic/fregata/holders/CommentProfileViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder_ViewBinding;->sJ:Lcom/picacomic/fregata/holders/CommentProfileViewHolder;

    .line 49
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_content:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_likeCount:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_replyCount:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_createdDate:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_username:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_floor:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_level:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_title:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->imageView_likeIcon:Landroid/widget/ImageView;

    .line 58
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->imageView_userThumb:Landroid/widget/ImageView;

    .line 59
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->imageView_userVerified:Landroid/widget/ImageView;

    .line 60
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->linearLayout_reply:Landroid/widget/LinearLayout;

    .line 61
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->button_viewMore:Landroid/widget/Button;

    .line 62
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_noReply:Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_viewContentPage:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->button_hide:Landroid/widget/Button;

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
