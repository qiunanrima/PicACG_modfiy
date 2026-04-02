.class public Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ComicPageRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ComicPageRecyclerViewAdapter"


# instance fields
.field final VIEW_TYPE_NORMAL:I

.field private final context:Landroid/content/Context;

.field final defaultUrl:Ljava/lang/String;

.field private hB:Z

.field private hC:Z

.field hP:I

.field private ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicPageObject;",
            ">;"
        }
    .end annotation
.end field

.field final jo:I

.field final jp:I

.field jr:I

.field ju:Landroid/view/Display;

.field jv:Z

.field private jw:Landroid/widget/FrameLayout$LayoutParams;

.field private jx:Landroid/widget/FrameLayout$LayoutParams;

.field jy:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicPageObject;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->VIEW_TYPE_NORMAL:I

    const/4 v1, 0x1

    .line 32
    iput v1, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jo:I

    const/4 v2, 0x2

    .line 33
    iput v2, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jp:I

    .line 50
    iput v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jy:I

    .line 55
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 57
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    .line 58
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jw:Landroid/widget/FrameLayout$LayoutParams;

    .line 59
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jx:Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    invoke-static {}, Lcom/picacomic/fregata/utils/a;->dS()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->defaultUrl:Ljava/lang/String;

    const-string v2, "window"

    .line 63
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 64
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->ju:Landroid/view/Display;

    .line 66
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    div-int/lit8 p2, p2, 0x14

    add-int/2addr p2, v1

    iput p2, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jr:I

    .line 68
    invoke-static {p1}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jv:Z

    .line 69
    iput v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->hP:I

    .line 72
    sget-object p2, Lcom/picacomic/fregata/c/a;->uO:[I

    invoke-static {p1}, Lcom/picacomic/fregata/utils/e;->R(Landroid/content/Context;)I

    move-result p1

    aget p1, p2, p1

    iput p1, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jy:I

    .line 73
    sget-object p1, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Target Size = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jy:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jr:I

    .line 187
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jr:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-eqz p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 173
    rem-int/lit8 v0, v0, 0x15

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jr:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 91
    instance-of v0, p1, Lcom/picacomic/fregata/holders/AdvertisementListViewHolder;

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lcom/picacomic/fregata/holders/AdvertisementListViewHolder;

    iget-object p1, p1, Lcom/picacomic/fregata/holders/AdvertisementListViewHolder;->webView_ads:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->defaultUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 94
    :cond_0
    instance-of v0, p1, Lcom/picacomic/fregata/holders/ComicPageViewHolder;

    if-eqz v0, :cond_6

    .line 96
    div-int/lit8 v0, p2, 0x15

    sub-int/2addr p2, v0

    .line 97
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_6

    .line 99
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ComicPageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicPageObject;->getMedia()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 100
    check-cast p1, Lcom/picacomic/fregata/holders/ComicPageViewHolder;

    iget-object v0, p1, Lcom/picacomic/fregata/holders/ComicPageViewHolder;->textView_page:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/ComicPageObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ComicPageObject;->getComicPageId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p1, Lcom/picacomic/fregata/holders/ComicPageViewHolder;->imageView_image:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ComicPageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicPageObject;->getComicPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/b;->az(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 109
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->getStorageFolder()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->getEpisodeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->getMediaPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 111
    sget-object v0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can read local image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ComicPageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicPageObject;->getMedia()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v0

    .line 117
    sget-object v2, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read local image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_3
    sget-object v0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Read Network image: "

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ComicPageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicPageObject;->getMedia()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    iget-boolean v1, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jv:Z

    if-eqz v1, :cond_4

    .line 125
    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f080135

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ComicPageViewHolder;

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ComicPageViewHolder;->imageView_image:Landroid/widget/ImageView;

    .line 126
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f080134

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ComicPageViewHolder;

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ComicPageViewHolder;->imageView_image:Landroid/widget/ImageView;

    .line 141
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 154
    :goto_1
    check-cast p1, Lcom/picacomic/fregata/holders/ComicPageViewHolder;

    iget-object v0, p1, Lcom/picacomic/fregata/holders/ComicPageViewHolder;->textView_page:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    iget v2, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->hP:I

    add-int/2addr p2, v2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-boolean p2, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->hC:Z

    if-eqz p2, :cond_5

    .line 156
    iget-object p2, p1, Lcom/picacomic/fregata/holders/ComicPageViewHolder;->frameLayout_container:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jw:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object p1, p1, Lcom/picacomic/fregata/holders/ComicPageViewHolder;->imageView_image:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jw:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 159
    :cond_5
    iget-object p2, p1, Lcom/picacomic/fregata/holders/ComicPageViewHolder;->frameLayout_container:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jx:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object p1, p1, Lcom/picacomic/fregata/holders/ComicPageViewHolder;->imageView_image:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->jx:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 82
    new-instance p2, Lcom/picacomic/fregata/holders/ComicPageViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0087

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/picacomic/fregata/holders/ComicPageViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 80
    :cond_0
    new-instance p2, Lcom/picacomic/fregata/holders/AdvertisementListViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0070

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/picacomic/fregata/holders/AdvertisementListViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public q(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->hB:Z

    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->hC:Z

    return-void
.end method

.method public y(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->hP:I

    return-void
.end method
