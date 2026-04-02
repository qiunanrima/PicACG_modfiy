.class public Lcom/picacomic/fregata/fragments/ProfileComicFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "ProfileComicFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "ProfileComicFragment"


# instance fields
.field linearLayout_bookmarked:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901b5
    .end annotation
.end field

.field linearLayout_downloaded:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901b6
    .end annotation
.end field

.field linearLayout_recentView:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901b7
    .end annotation
.end field

.field qF:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field qG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicListObject;",
            ">;"
        }
    .end annotation
.end field

.field qH:I

.field qI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicListObject;",
            ">;"
        }
    .end annotation
.end field

.field qJ:J

.field qK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicListObject;",
            ">;"
        }
    .end annotation
.end field

.field qL:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bH()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 152
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qG:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->bI()V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->dz()V

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qI:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->dw()V

    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->dv()V

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qK:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->dy()V

    goto :goto_2

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->dx()V

    :goto_2
    return-void
.end method

.method public bI()V
    .locals 7

    .line 331
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 333
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qG:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 338
    :try_start_0
    new-instance v0, Lcom/picacomic/fregata/holders/ComicCollectionView;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qG:Ljava/util/ArrayList;

    const/16 v4, 0x64

    new-instance v6, Lcom/picacomic/fregata/fragments/ProfileComicFragment$3;

    invoke-direct {v6, p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment$3;-><init>(Lcom/picacomic/fregata/fragments/ProfileComicFragment;)V

    move-object v1, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/picacomic/fregata/holders/ComicCollectionView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 349
    invoke-virtual {v0}, Lcom/picacomic/fregata/holders/ComicCollectionView;->getTextView_count()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    invoke-virtual {v0}, Lcom/picacomic/fregata/holders/ComicCollectionView;->getTextView_title()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0f009c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 352
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->linearLayout_bookmarked:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public ca()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    return-void
.end method

.method public dv()V
    .locals 7

    .line 179
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    const-string v1, "SELECT * FROM db_comic_view_record_object WHERE last_view_timestamp > 0 ORDER BY last_view_timestamp DESC LIMIT 4"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->findWithQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qI:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 182
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 184
    const-class v3, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    const-string v4, "comic_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getComicId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->find(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 185
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 186
    new-instance v4, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    invoke-direct {v4, v3}, Lcom/picacomic/fregata/objects/ComicListObject;-><init>(Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;)V

    .line 187
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qI:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v3, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recent View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_1
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    invoke-static {v0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->count(Ljava/lang/Class;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qJ:J

    .line 194
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->dw()V

    :cond_2
    return-void
.end method

.method public dw()V
    .locals 7

    .line 199
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qI:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 205
    :try_start_0
    new-instance v0, Lcom/picacomic/fregata/holders/ComicCollectionView;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qI:Ljava/util/ArrayList;

    const/16 v4, 0xc8

    new-instance v6, Lcom/picacomic/fregata/fragments/ProfileComicFragment$1;

    invoke-direct {v6, p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ProfileComicFragment;)V

    move-object v1, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/picacomic/fregata/holders/ComicCollectionView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual {v0}, Lcom/picacomic/fregata/holders/ComicCollectionView;->getTextView_count()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qJ:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v0}, Lcom/picacomic/fregata/holders/ComicCollectionView;->getTextView_title()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0f0192

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 219
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->linearLayout_recentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public dx()V
    .locals 4

    .line 229
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    const-string v1, "SELECT * FROM db_comic_detail_object WHERE download_status > 0 ORDER BY downloaded_at DESC LIMIT 4 "

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->findWithQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qK:Ljava/util/ArrayList;

    .line 232
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 241
    new-instance v1, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    invoke-direct {v1, v3}, Lcom/picacomic/fregata/objects/ComicListObject;-><init>(Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;)V

    .line 242
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qK:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_0
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    const-string v1, "download_status > 0"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->count(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qL:J

    .line 249
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->dy()V

    :cond_1
    return-void
.end method

.method public dy()V
    .locals 7

    .line 254
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qK:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 260
    :try_start_0
    new-instance v0, Lcom/picacomic/fregata/holders/ComicCollectionView;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qK:Ljava/util/ArrayList;

    const/16 v4, 0x12c

    new-instance v6, Lcom/picacomic/fregata/fragments/ProfileComicFragment$2;

    invoke-direct {v6, p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment$2;-><init>(Lcom/picacomic/fregata/fragments/ProfileComicFragment;)V

    move-object v1, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/picacomic/fregata/holders/ComicCollectionView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 271
    invoke-virtual {v0}, Lcom/picacomic/fregata/holders/ComicCollectionView;->getTextView_count()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qL:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v0}, Lcom/picacomic/fregata/holders/ComicCollectionView;->getTextView_title()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0f013a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 274
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->linearLayout_downloaded:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public dz()V
    .locals 4

    .line 361
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->C(Ljava/lang/String;)V

    const-string v0, "Show Progress"

    .line 362
    invoke-static {v0}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 364
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 366
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/picacomic/fregata/c/c;->uQ:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qF:Lretrofit2/Call;

    .line 368
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qF:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ProfileComicFragment$4;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment$4;-><init>(Lcom/picacomic/fregata/fragments/ProfileComicFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public init()V
    .locals 0

    .line 91
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 419
    sget-object v0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLICK TAG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x12c

    const v1, 0x7f0900ab

    const v2, 0x7f010027

    const v3, 0x7f010026

    const v4, 0x7f010025

    const v5, 0x7f010024

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 422
    new-instance v0, Lcom/picacomic/fregata/objects/ComicListObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qK:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    rem-int/lit16 p1, p1, 0x12c

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/picacomic/fregata/objects/ComicListObject;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 424
    invoke-virtual {p1, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 425
    invoke-static {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/objects/ComicListObject;)Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    move-result-object v0

    sget-object v2, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    .line 426
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 427
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 430
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0xc8

    if-ne v0, v6, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 432
    new-instance v0, Lcom/picacomic/fregata/objects/ComicListObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qI:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    rem-int/lit16 p1, p1, 0xc8

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/picacomic/fregata/objects/ComicListObject;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 434
    invoke-virtual {p1, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 435
    invoke-static {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/objects/ComicListObject;)Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    move-result-object v0

    sget-object v2, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    .line 436
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 437
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 440
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    if-ne v0, v6, :cond_2

    .line 441
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 442
    new-instance v0, Lcom/picacomic/fregata/objects/ComicListObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qG:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    rem-int/lit8 p1, p1, 0x64

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/picacomic/fregata/objects/ComicListObject;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 444
    invoke-virtual {p1, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 445
    invoke-static {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/objects/ComicListObject;)Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    move-result-object v0

    sget-object v2, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    .line 446
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 447
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0062

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qF:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->qF:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 414
    :cond_0
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method
