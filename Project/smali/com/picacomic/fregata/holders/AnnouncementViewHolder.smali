.class public Lcom/picacomic/fregata/holders/AnnouncementViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AnnouncementViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "AnnouncementViewHolder"


# instance fields
.field context:Landroid/content/Context;

.field public imageView_image:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09013b
    .end annotation
.end field

.field je:Lcom/picacomic/fregata/a/k;

.field public textView_description:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090243
    .end annotation
.end field

.field public textView_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090244
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V
    .locals 0

    .line 39
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 40
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 41
    iput-object p3, p0, Lcom/picacomic/fregata/holders/AnnouncementViewHolder;->je:Lcom/picacomic/fregata/a/k;

    .line 42
    iput-object p1, p0, Lcom/picacomic/fregata/holders/AnnouncementViewHolder;->context:Landroid/content/Context;

    .line 43
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/objects/AnnouncementObject;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/picacomic/fregata/holders/AnnouncementViewHolder;->textView_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/picacomic/fregata/holders/AnnouncementViewHolder;->textView_description:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/picacomic/fregata/holders/AnnouncementViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/holders/AnnouncementViewHolder;->imageView_image:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 48
    iget-object p1, p0, Lcom/picacomic/fregata/holders/AnnouncementViewHolder;->je:Lcom/picacomic/fregata/a/k;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/AnnouncementViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/k;->C(I)V

    .line 49
    sget-object p1, Lcom/picacomic/fregata/holders/AnnouncementViewHolder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick--> position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/AnnouncementViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
