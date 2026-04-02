.class public Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChatroomAdsViewHolder.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ChatroomAdsViewHolder"


# instance fields
.field public imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090140
    .end annotation
.end field

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
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
