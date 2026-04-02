.class public Lcom/picacomic/fregata/holders/GameScreenShotViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GameScreenShotViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "GameScreenShotViewHolder"


# instance fields
.field context:Landroid/content/Context;

.field public imageView_screenShot:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09015e
    .end annotation
.end field

.field je:Lcom/picacomic/fregata/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V
    .locals 0

    .line 30
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 32
    iput-object p1, p0, Lcom/picacomic/fregata/holders/GameScreenShotViewHolder;->context:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/picacomic/fregata/holders/GameScreenShotViewHolder;->je:Lcom/picacomic/fregata/a/k;

    .line 34
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/picacomic/fregata/holders/GameScreenShotViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 45
    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/holders/GameScreenShotViewHolder;->imageView_screenShot:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 39
    iget-object p1, p0, Lcom/picacomic/fregata/holders/GameScreenShotViewHolder;->je:Lcom/picacomic/fregata/a/k;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/GameScreenShotViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/k;->C(I)V

    .line 40
    sget-object p1, Lcom/picacomic/fregata/holders/GameScreenShotViewHolder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick--> position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/GameScreenShotViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
