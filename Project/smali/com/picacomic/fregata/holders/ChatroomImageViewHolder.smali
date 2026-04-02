.class public Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChatroomImageViewHolder.java"


# static fields
.field public static final TAG:Ljava/lang/String;


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

.field public imageView_image:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090141
    .end annotation
.end field

.field public imageView_verified:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090142
    .end annotation
.end field

.field jn:Lcom/picacomic/fregata/a/a;

.field public textView_level:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09025e
    .end annotation
.end field

.field public textView_name:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090260
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
    .locals 1

    .line 18
    const-class v0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 49
    iput-object p2, p0, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->jn:Lcom/picacomic/fregata/a/a;

    .line 51
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->textView_name:Landroid/widget/TextView;

    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder$1;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder$1;-><init>(Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->textView_title:Landroid/widget/TextView;

    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder$2;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder$2;-><init>(Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder$3;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder$3;-><init>(Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;)V

    invoke-virtual {p1, p2}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->imageView_image:Landroid/widget/ImageView;

    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder$4;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder$4;-><init>(Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
