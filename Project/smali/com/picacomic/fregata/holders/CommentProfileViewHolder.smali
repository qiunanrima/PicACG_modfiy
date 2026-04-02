.class public Lcom/picacomic/fregata/holders/CommentProfileViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CommentProfileViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "CommentProfileViewHolder"


# instance fields
.field public button_hide:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090067
    .end annotation
.end field

.field public button_viewMore:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09006a
    .end annotation
.end field

.field public imageView_likeIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09014c
    .end annotation
.end field

.field public imageView_userThumb:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09014f
    .end annotation
.end field

.field public imageView_userVerified:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090150
    .end annotation
.end field

.field public linearLayout_reply:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901a2
    .end annotation
.end field

.field sI:Lcom/picacomic/fregata/a/e;

.field public textView_content:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09028a
    .end annotation
.end field

.field public textView_createdDate:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09028b
    .end annotation
.end field

.field public textView_floor:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09028c
    .end annotation
.end field

.field public textView_level:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09028d
    .end annotation
.end field

.field public textView_likeCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09028e
    .end annotation
.end field

.field public textView_noReply:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09028f
    .end annotation
.end field

.field public textView_replyCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090290
    .end annotation
.end field

.field public textView_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090291
    .end annotation
.end field

.field public textView_username:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090292
    .end annotation
.end field

.field public textView_viewContentPage:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090293
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/picacomic/fregata/a/e;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 75
    iput-object p2, p0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->button_viewMore:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->imageView_userThumb:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_viewContentPage:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->imageView_likeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_likeCount:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->button_hide:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09014c

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09028e

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09006a

    if-ne v0, v1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->N(I)V

    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09014f

    if-ne v0, v1, :cond_2

    .line 101
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->P(I)V

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090293

    if-ne v0, v1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->O(I)V

    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090067

    if-ne p1, v0, :cond_4

    .line 107
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->S(I)V

    goto :goto_1

    .line 110
    :cond_4
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->C(I)V

    goto :goto_1

    .line 95
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->Q(I)V

    .line 112
    :goto_1
    sget-object p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick--> position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
