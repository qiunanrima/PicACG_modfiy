.class public Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChatroomMessageViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "ChatroomMessageViewHolder"


# instance fields
.field public container:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09018a
    .end annotation
.end field

.field public imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090140
    .end annotation
.end field

.field public imageView_verified:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090142
    .end annotation
.end field

.field jn:Lcom/picacomic/fregata/a/a;

.field public linearLayout_replyContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09018d
    .end annotation
.end field

.field public textView_at:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09025c
    .end annotation
.end field

.field public textView_level:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09025e
    .end annotation
.end field

.field public textView_message:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09025f
    .end annotation
.end field

.field public textView_name:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090260
    .end annotation
.end field

.field public textView_replyMessage:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090261
    .end annotation
.end field

.field public textView_replyName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090262
    .end annotation
.end field

.field public textView_timestamp:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090264
    .end annotation
.end field

.field public textView_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090265
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 60
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 61
    iput-object p2, p0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->jn:Lcom/picacomic/fregata/a/a;

    .line 63
    iget-object p2, p0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_message:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p2, p0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_title:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p2, p0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_name:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p2, p0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p2, p0}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090260

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090265

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090140

    if-ne p1, v0, :cond_1

    .line 81
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->jn:Lcom/picacomic/fregata/a/a;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/a;->F(I)V

    goto :goto_1

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->jn:Lcom/picacomic/fregata/a/a;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/a;->H(I)V

    goto :goto_1

    .line 78
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->jn:Lcom/picacomic/fregata/a/a;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/a;->G(I)V

    :goto_1
    return-void
.end method
