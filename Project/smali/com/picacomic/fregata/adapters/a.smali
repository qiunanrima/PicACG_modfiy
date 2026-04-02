.class public Lcom/picacomic/fregata/adapters/a;
.super Landroid/widget/BaseAdapter;
.source "ComicPageListViewAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "a"


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

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicPageObject;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/picacomic/fregata/adapters/a;->VIEW_TYPE_NORMAL:I

    const/4 v1, 0x1

    .line 31
    iput v1, p0, Lcom/picacomic/fregata/adapters/a;->jo:I

    const/4 v2, 0x2

    .line 32
    iput v2, p0, Lcom/picacomic/fregata/adapters/a;->jp:I

    .line 53
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/a;->context:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/picacomic/fregata/adapters/a;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 55
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/a;->ja:Ljava/util/ArrayList;

    const-string v2, "window"

    .line 59
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 60
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/picacomic/fregata/adapters/a;->ju:Landroid/view/Display;

    .line 62
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    div-int/lit8 p2, p2, 0x14

    add-int/2addr p2, v1

    iput p2, p0, Lcom/picacomic/fregata/adapters/a;->jr:I

    .line 64
    invoke-static {p1}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/picacomic/fregata/adapters/a;->jv:Z

    .line 65
    iput v0, p0, Lcom/picacomic/fregata/adapters/a;->hP:I

    .line 67
    invoke-static {p1}, Lcom/picacomic/fregata/utils/e;->al(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->af(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/a;->defaultUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/a;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/picacomic/fregata/adapters/a;->jr:I

    .line 83
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/a;->ja:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/a;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/picacomic/fregata/adapters/a;->jr:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 89
    rem-int/lit8 v0, v0, 0x15

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/a;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/picacomic/fregata/adapters/a;->jr:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 93
    :cond_2
    div-int/lit8 v0, p1, 0x15

    sub-int/2addr p1, v0

    .line 94
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/a;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-eqz p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 72
    rem-int/lit8 v0, v0, 0x15

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/a;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/picacomic/fregata/adapters/a;->jr:I

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 108
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/adapters/a;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    if-eqz p2, :cond_1

    .line 111
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/picacomic/fregata/holders/AdvertisementListSimpleViewHolder;

    if-nez p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/holders/AdvertisementListSimpleViewHolder;

    goto :goto_1

    .line 112
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/adapters/a;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0b0070

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 113
    new-instance p2, Lcom/picacomic/fregata/holders/AdvertisementListSimpleViewHolder;

    invoke-direct {p2, p1}, Lcom/picacomic/fregata/holders/AdvertisementListSimpleViewHolder;-><init>(Landroid/view/View;)V

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    .line 118
    :goto_1
    iget-object p1, p1, Lcom/picacomic/fregata/holders/AdvertisementListSimpleViewHolder;->webView_ads:Landroid/webkit/WebView;

    iget-object p3, p0, Lcom/picacomic/fregata/adapters/a;->defaultUrl:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_2
    if-nez v0, :cond_9

    if-eqz p2, :cond_4

    .line 122
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;

    if-nez v0, :cond_3

    goto :goto_2

    .line 127
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;

    goto :goto_3

    .line 123
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/picacomic/fregata/adapters/a;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0086

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 124
    new-instance p3, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;

    invoke-direct {p3, p2}, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;-><init>(Landroid/view/View;)V

    .line 125
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    :goto_3
    div-int/lit8 v0, p1, 0x15

    sub-int/2addr p1, v0

    .line 131
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/a;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/a;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_9

    .line 133
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/a;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ComicPageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicPageObject;->getMedia()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    if-nez v0, :cond_5

    .line 134
    iget-object v0, p3, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;->textView_page:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/a;->ja:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ComicPageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicPageObject;->getComicPageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p1, p3, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;->imageView_image:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    .line 138
    :cond_5
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/a;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ComicPageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicPageObject;->getComicPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/b;->az(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 143
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

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    .line 145
    sget-object v0, Lcom/picacomic/fregata/adapters/a;->TAG:Ljava/lang/String;

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

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 150
    :cond_6
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/a;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ComicPageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicPageObject;->getMedia()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v0

    .line 151
    sget-object v2, Lcom/picacomic/fregata/adapters/a;->TAG:Ljava/lang/String;

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

    goto :goto_4

    .line 154
    :cond_7
    sget-object v0, Lcom/picacomic/fregata/adapters/a;->TAG:Ljava/lang/String;

    const-string v1, "Read local image: "

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/a;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ComicPageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicPageObject;->getMedia()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_4
    iget-boolean v1, p0, Lcom/picacomic/fregata/adapters/a;->jv:Z

    const v2, 0x7f080135

    if-eqz v1, :cond_8

    .line 159
    iget-object v1, p0, Lcom/picacomic/fregata/adapters/a;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p3, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;->imageView_image:Landroid/widget/ImageView;

    .line 160
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_5

    .line 162
    :cond_8
    iget-object v1, p0, Lcom/picacomic/fregata/adapters/a;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p3, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;->imageView_image:Landroid/widget/ImageView;

    .line 163
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 165
    :goto_5
    iget-object p3, p3, Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;->textView_page:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    iget v1, p0, Lcom/picacomic/fregata/adapters/a;->hP:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_6
    return-object p2
.end method

.method public q(Z)V
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcom/picacomic/fregata/adapters/a;->hB:Z

    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/picacomic/fregata/adapters/a;->hC:Z

    return-void
.end method

.method public y(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/picacomic/fregata/adapters/a;->hP:I

    return-void
.end method
