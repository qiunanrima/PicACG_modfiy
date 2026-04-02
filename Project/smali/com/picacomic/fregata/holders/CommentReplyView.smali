.class public Lcom/picacomic/fregata/holders/CommentReplyView;
.super Landroid/widget/LinearLayout;
.source "CommentReplyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "CommentReplyView"


# instance fields
.field public button_hide:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09006b
    .end annotation
.end field

.field public imageView_likeIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090151
    .end annotation
.end field

.field public imageView_option:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09014d
    .end annotation
.end field

.field public imageView_userThumb:Lde/hdodenhof/circleimageview/CircleImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090152
    .end annotation
.end field

.field public imageView_userVerified:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090153
    .end annotation
.end field

.field public jB:I

.field sI:Lcom/picacomic/fregata/a/e;

.field public sK:I

.field public textView_content:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090294
    .end annotation
.end field

.field public textView_createdDate:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090295
    .end annotation
.end field

.field public textView_floor:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090296
    .end annotation
.end field

.field public textView_level:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090297
    .end annotation
.end field

.field public textView_likeCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090298
    .end annotation
.end field

.field public textView_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090299
    .end annotation
.end field

.field public textView_username:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09029a
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/picacomic/fregata/a/e;II)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b008c

    .line 71
    invoke-static {p1, v0, p0}, Lcom/picacomic/fregata/holders/CommentReplyView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    iput-object p2, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->sI:Lcom/picacomic/fregata/a/e;

    .line 73
    iput p3, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->sK:I

    .line 74
    iput p4, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->jB:I

    .line 75
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 76
    invoke-virtual {p0, p0}, Lcom/picacomic/fregata/holders/CommentReplyView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_likeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_likeCount:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_username:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->button_hide:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_option:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090151

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090298

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09029a

    if-ne v0, v1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->sI:Lcom/picacomic/fregata/a/e;

    iget v0, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->sK:I

    iget v1, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->jB:I

    invoke-interface {p1, v0, v1}, Lcom/picacomic/fregata/a/e;->h(II)V

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09006b

    if-ne v0, v1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->sI:Lcom/picacomic/fregata/a/e;

    iget v0, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->sK:I

    iget v1, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->jB:I

    invoke-interface {p1, v0, v1}, Lcom/picacomic/fregata/a/e;->i(II)V

    goto :goto_1

    .line 114
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09014d

    if-ne p1, v0, :cond_3

    .line 115
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->sI:Lcom/picacomic/fregata/a/e;

    iget v0, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->sK:I

    iget v1, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->jB:I

    invoke-interface {p1, v0, v1}, Lcom/picacomic/fregata/a/e;->j(II)V

    goto :goto_1

    .line 118
    :cond_3
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->sI:Lcom/picacomic/fregata/a/e;

    iget v0, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->sK:I

    iget v1, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->jB:I

    invoke-interface {p1, v0, v1}, Lcom/picacomic/fregata/a/e;->f(II)V

    goto :goto_1

    .line 106
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->sI:Lcom/picacomic/fregata/a/e;

    iget v0, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->sK:I

    iget v1, p0, Lcom/picacomic/fregata/holders/CommentReplyView;->jB:I

    invoke-interface {p1, v0, v1}, Lcom/picacomic/fregata/a/e;->g(II)V

    :goto_1
    return-void
.end method
