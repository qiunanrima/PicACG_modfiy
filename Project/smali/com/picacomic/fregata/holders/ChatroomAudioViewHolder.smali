.class public Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChatroomAudioViewHolder.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ChatroomAudioViewHolder"


# instance fields
.field public container:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09018a
    .end annotation
.end field

.field public imageButton_audioAction:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090124
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

.field public sp:Z

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
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->sp:Z

    .line 52
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 53
    iput-object p2, p0, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->jn:Lcom/picacomic/fregata/a/a;

    .line 55
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->textView_name:Landroid/widget/TextView;

    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder$1;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder$1;-><init>(Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->textView_title:Landroid/widget/TextView;

    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder$2;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder$2;-><init>(Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder$3;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder$3;-><init>(Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;)V

    invoke-virtual {p1, p2}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->imageButton_audioAction:Landroid/widget/ImageButton;

    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder$4;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder$4;-><init>(Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
