.class public Lcom/picacomic/fregata/holders/GameListViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GameListViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "GameListViewHolder"


# instance fields
.field context:Landroid/content/Context;

.field public imageView_adult:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09015f
    .end annotation
.end field

.field public imageView_banner:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090160
    .end annotation
.end field

.field public imageView_recommend:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090161
    .end annotation
.end field

.field public je:Lcom/picacomic/fregata/a/k;

.field public textView_publisher:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b2
    .end annotation
.end field

.field public textView_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V
    .locals 0

    .line 43
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 44
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 45
    iput-object p1, p0, Lcom/picacomic/fregata/holders/GameListViewHolder;->context:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/picacomic/fregata/holders/GameListViewHolder;->je:Lcom/picacomic/fregata/a/k;

    .line 47
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/objects/GameListObject;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/picacomic/fregata/holders/GameListViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/GameListObject;->getIcon()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f080133

    .line 59
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/holders/GameListViewHolder;->imageView_banner:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 62
    iget-object v0, p0, Lcom/picacomic/fregata/holders/GameListViewHolder;->textView_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/GameListObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/picacomic/fregata/holders/GameListViewHolder;->textView_publisher:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/GameListObject;->getPublisher()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/GameListObject;->isAdult()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/picacomic/fregata/holders/GameListViewHolder;->imageView_adult:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/holders/GameListViewHolder;->imageView_adult:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    :goto_0
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/GameListObject;->isSuggest()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/picacomic/fregata/holders/GameListViewHolder;->imageView_recommend:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/holders/GameListViewHolder;->imageView_recommend:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 52
    iget-object p1, p0, Lcom/picacomic/fregata/holders/GameListViewHolder;->je:Lcom/picacomic/fregata/a/k;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/GameListViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/k;->C(I)V

    .line 53
    sget-object p1, Lcom/picacomic/fregata/holders/GameListViewHolder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick--> position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/GameListViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
