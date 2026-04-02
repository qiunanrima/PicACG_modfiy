.class public Lcom/picacomic/fregata/holders/ComicListViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ComicListViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "ComicListViewHolder"


# instance fields
.field context:Landroid/content/Context;

.field public frameLayout_bl:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090100
    .end annotation
.end field

.field public frameLayout_forbidden:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090101
    .end annotation
.end field

.field public frameLayout_nonChinese:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090102
    .end annotation
.end field

.field public imageView_image:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090148
    .end annotation
.end field

.field public linearLayout_container:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090195
    .end annotation
.end field

.field public linearLayout_content:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090196
    .end annotation
.end field

.field public linearLayout_filter:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090197
    .end annotation
.end field

.field sD:Lcom/picacomic/fregata/a/b;

.field targetHeight:I

.field targetWidth:I

.field public textView_author:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09027a
    .end annotation
.end field

.field public textView_bl:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09027c
    .end annotation
.end field

.field public textView_category:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09027b
    .end annotation
.end field

.field public textView_forbidden:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09027d
    .end annotation
.end field

.field public textView_likeCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09027f
    .end annotation
.end field

.field public textView_name:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090280
    .end annotation
.end field

.field public textView_nonChinese:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09027e
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/b;)V
    .locals 2

    .line 80
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/16 v0, 0x50

    .line 76
    iput v0, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->targetWidth:I

    const/16 v1, 0x78

    .line 77
    iput v1, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->targetHeight:I

    .line 82
    iput-object p1, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->context:Landroid/content/Context;

    .line 84
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 86
    iput-object p3, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->sD:Lcom/picacomic/fregata/a/b;

    .line 88
    iget-object p3, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->imageView_image:Landroid/widget/ImageView;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700ca

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->targetWidth:I

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700cc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->targetHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    iput v0, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->targetWidth:I

    .line 106
    iput v1, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->targetHeight:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/objects/ComicListObject;[Ljava/lang/String;)V
    .locals 8

    const/16 v0, 0x8

    .line 122
    new-array v1, v0, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 124
    aput-boolean v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getCategories()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 129
    :goto_1
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getCategories()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_2

    .line 132
    aget-boolean v6, v1, v5

    if-nez v6, :cond_1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getCategories()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    aput-boolean v4, v1, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 140
    :cond_3
    iget-object p2, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p2

    .line 141
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v3

    invoke-static {v3}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    const v3, 0x7f080133

    .line 142
    invoke-virtual {p2, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget v3, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->targetWidth:I

    iget v5, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->targetHeight:I

    .line 143
    invoke-virtual {p2, v3, v5}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    .line 144
    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object v3, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->imageView_image:Landroid/widget/ImageView;

    .line 146
    invoke-virtual {p2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 148
    iget-object p2, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getPagesCount()I

    move-result v6

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->isFinished()Z

    move-result v7

    invoke-static {p2, v3, v5, v6, v7}, Lcom/picacomic/fregata/utils/g;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;IZ)V

    const-string p2, ""

    move-object v3, p2

    const/4 p2, 0x0

    .line 151
    :goto_4
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getCategories()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_4

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getCategories()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 154
    :cond_4
    iget-object p2, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_author:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getAuthor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p2, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_category:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p2, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->textView_likeCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getLikesCount()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->linearLayout_filter:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    aget-boolean p1, v1, v2

    if-eqz p1, :cond_5

    .line 161
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->frameLayout_forbidden:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5

    .line 163
    :cond_5
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->frameLayout_forbidden:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 165
    :goto_5
    aget-boolean p1, v1, v4

    if-eqz p1, :cond_6

    .line 166
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->frameLayout_nonChinese:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_6

    .line 168
    :cond_6
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->frameLayout_nonChinese:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_6
    const/4 p1, 0x2

    .line 170
    aget-boolean p1, v1, p1

    if-eqz p1, :cond_7

    .line 171
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->frameLayout_bl:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_7

    .line 173
    :cond_7
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->frameLayout_bl:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090148

    if-ne p1, v0, :cond_0

    .line 113
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->sD:Lcom/picacomic/fregata/a/b;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/ComicListViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/b;->I(I)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ComicListViewHolder;->sD:Lcom/picacomic/fregata/a/b;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/ComicListViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/b;->C(I)V

    .line 117
    :goto_0
    sget-object p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick--> position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/ComicListViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
