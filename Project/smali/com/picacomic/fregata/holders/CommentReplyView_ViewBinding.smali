.class public Lcom/picacomic/fregata/holders/CommentReplyView_ViewBinding;
.super Ljava/lang/Object;
.source "CommentReplyView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private sL:Lcom/picacomic/fregata/holders/CommentReplyView;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/holders/CommentReplyView;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/picacomic/fregata/holders/CommentReplyView_ViewBinding;->sL:Lcom/picacomic/fregata/holders/CommentReplyView;

    const-string v0, "field \'textView_content\'"

    .line 29
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090294

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_content:Landroid/widget/TextView;

    const-string v0, "field \'textView_likeCount\'"

    .line 30
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090298

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_likeCount:Landroid/widget/TextView;

    const-string v0, "field \'textView_createdDate\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090295

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_createdDate:Landroid/widget/TextView;

    const-string v0, "field \'textView_username\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09029a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_username:Landroid/widget/TextView;

    const-string v0, "field \'textView_floor\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090296

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_floor:Landroid/widget/TextView;

    const-string v0, "field \'textView_level\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090297

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_level:Landroid/widget/TextView;

    const-string v0, "field \'textView_title\'"

    .line 35
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090299

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_title:Landroid/widget/TextView;

    const-string v0, "field \'imageView_option\'"

    .line 36
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09014d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_option:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_likeIcon\'"

    .line 37
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090151

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_likeIcon:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_userThumb\'"

    .line 38
    const-class v1, Lde/hdodenhof/circleimageview/CircleImageView;

    const v2, 0x7f090152

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_userThumb:Lde/hdodenhof/circleimageview/CircleImageView;

    const-string v0, "field \'imageView_userVerified\'"

    .line 39
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090153

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_userVerified:Landroid/widget/ImageView;

    const-string v0, "field \'button_hide\'"

    .line 40
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09006b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/picacomic/fregata/holders/CommentReplyView;->button_hide:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/picacomic/fregata/holders/CommentReplyView_ViewBinding;->sL:Lcom/picacomic/fregata/holders/CommentReplyView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/picacomic/fregata/holders/CommentReplyView_ViewBinding;->sL:Lcom/picacomic/fregata/holders/CommentReplyView;

    .line 50
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_content:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_likeCount:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_createdDate:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_username:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_floor:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_level:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_title:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_option:Landroid/widget/ImageView;

    .line 58
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_likeIcon:Landroid/widget/ImageView;

    .line 59
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_userThumb:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 60
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_userVerified:Landroid/widget/ImageView;

    .line 61
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CommentReplyView;->button_hide:Landroid/widget/Button;

    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
