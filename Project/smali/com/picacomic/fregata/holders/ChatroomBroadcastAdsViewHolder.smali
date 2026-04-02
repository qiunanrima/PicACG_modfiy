.class public Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChatroomBroadcastAdsViewHolder.java"


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

    sput-object v0, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 51
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 52
    iput-object p2, p0, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->jn:Lcom/picacomic/fregata/a/a;

    .line 54
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->textView_name:Landroid/widget/TextView;

    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder$1;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder$1;-><init>(Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->textView_title:Landroid/widget/TextView;

    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder$2;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder$2;-><init>(Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder$3;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder$3;-><init>(Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;)V

    invoke-virtual {p1, p2}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->imageView_image:Landroid/widget/ImageView;

    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder$4;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder$4;-><init>(Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->textView_message:Landroid/widget/TextView;

    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder$5;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder$5;-><init>(Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
