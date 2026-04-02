.class public Lcom/picacomic/fregata/holders/CommentViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CommentViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "CommentViewHolder"


# instance fields
.field public button_dirty:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090066
    .end annotation
.end field

.field public button_hide:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090067
    .end annotation
.end field

.field public button_tools:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090068
    .end annotation
.end field

.field public button_top:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090069
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

.field public imageView_option:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09014d
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

.field public linearLayout_tools:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901a3
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/picacomic/fregata/a/e;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 91
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 93
    iput-object p2, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    .line 94
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_userThumb:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_viewMore:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_likeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_likeCount:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_username:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_hide:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_dirty:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_tools:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_top:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_option:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09014c

    if-eq v0, v1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09028e

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09006a

    if-ne v0, v1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->N(I)V

    goto/16 :goto_1

    .line 119
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09014f

    if-ne v0, v1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->P(I)V

    goto/16 :goto_1

    .line 121
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090293

    if-ne v0, v1, :cond_3

    .line 122
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->O(I)V

    goto/16 :goto_1

    .line 123
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090292

    if-ne v0, v1, :cond_4

    .line 124
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->R(I)V

    goto/16 :goto_1

    .line 125
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090067

    if-ne v0, v1, :cond_5

    .line 126
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->S(I)V

    goto :goto_1

    .line 127
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090068

    if-ne v0, v1, :cond_6

    .line 128
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->A(I)V

    goto :goto_1

    .line 129
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090069

    if-ne v0, v1, :cond_7

    .line 130
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->T(I)V

    goto :goto_1

    .line 131
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090066

    if-ne v0, v1, :cond_8

    .line 132
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->U(I)V

    goto :goto_1

    .line 133
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09014d

    if-ne p1, v0, :cond_9

    .line 134
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->V(I)V

    goto :goto_1

    .line 136
    :cond_9
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->C(I)V

    goto :goto_1

    .line 116
    :cond_a
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/holders/CommentViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/e;->Q(I)V

    .line 138
    :goto_1
    sget-object p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick--> position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
