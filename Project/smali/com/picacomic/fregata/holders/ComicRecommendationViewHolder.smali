.class public Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ComicRecommendationViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "ComicRecommendationViewHolder"


# instance fields
.field context:Landroid/content/Context;

.field imageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090174
    .end annotation
.end field

.field jq:Lcom/picacomic/fregata/a/b;

.field nn:Lcom/picacomic/fregata/objects/ComicListObject;

.field textView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902db
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/b;)V
    .locals 0

    .line 35
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 36
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 37
    iput-object p1, p0, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;->context:Landroid/content/Context;

    .line 38
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iput-object p3, p0, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;->jq:Lcom/picacomic/fregata/a/b;

    return-void
.end method


# virtual methods
.method public b(Lcom/picacomic/fregata/objects/ComicListObject;)V
    .locals 4

    .line 43
    iput-object p1, p0, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    .line 44
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    .line 46
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicListObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const v0, 0x7f080133

    .line 47
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;->imageView:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 52
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ComicListObject;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicListObject;->getPagesCount()I

    move-result v2

    iget-object v3, p0, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ComicListObject;->isFinished()Z

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/picacomic/fregata/utils/g;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;->jq:Lcom/picacomic/fregata/a/b;

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;->jq:Lcom/picacomic/fregata/a/b;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/b;->C(I)V

    :cond_0
    return-void
.end method
