.class public Lcom/picacomic/fregata/fragments/ComicDetailFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "ComicDetailFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/k;


# static fields
.field public static final TAG:Ljava/lang/String; = "ComicDetailFragment"


# instance fields
.field button_moreEpisode:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090044
    .end annotation
.end field

.field button_startRead:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090045
    .end annotation
.end field

.field coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ae
    .end annotation
.end field

.field downloadStatus:I

.field episodeTotal:I

.field ig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicEpisodeObject;",
            ">;"
        }
    .end annotation
.end field

.field imageButton_bookmark:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090125
    .end annotation
.end field

.field imageButton_comment:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090126
    .end annotation
.end field

.field imageButton_descriptionHeightControl:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090127
    .end annotation
.end field

.field imageButton_like:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090128
    .end annotation
.end field

.field imageButton_tagHeightControl:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090129
    .end annotation
.end field

.field imageView_cover:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090144
    .end annotation
.end field

.field imageView_knightAvatar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090145
    .end annotation
.end field

.field imageView_knightVerified:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090146
    .end annotation
.end field

.field isLiked:Z

.field kE:Z

.field linearLayout_tags:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090193
    .end annotation
.end field

.field mS:Landroid/graphics/drawable/TransitionDrawable;

.field mT:Landroid/graphics/drawable/TransitionDrawable;

.field mU:Landroid/view/animation/Animation;

.field mV:Landroid/view/animation/Animation;

.field mW:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ActionResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field mZ:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ActionResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field na:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ComicDetailResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field nb:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field nc:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ComicRandomListResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

.field ne:Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;

.field nestedScrollView:Landroid/support/v4/widget/NestedScrollView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090216
    .end annotation
.end field

.field nf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicListObject;",
            ">;"
        }
    .end annotation
.end field

.field ng:[Landroid/widget/Button;

.field nh:Z

.field ni:Z

.field nj:Z

.field nk:Z

.field nl:Z

.field nm:I

.field private nn:Lcom/picacomic/fregata/objects/ComicListObject;

.field private np:Lcom/picacomic/fregata/objects/ComicDetailObject;

.field recyclerView_episode:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901f6
    .end annotation
.end field

.field recyclerView_recommendation:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090200
    .end annotation
.end field

.field targetHeight:I

.field targetWidth:I

.field textView_author:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09026e
    .end annotation
.end field

.field textView_categories:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09026f
    .end annotation
.end field

.field textView_commentCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090270
    .end annotation
.end field

.field textView_description:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090271
    .end annotation
.end field

.field textView_knight:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090272
    .end annotation
.end field

.field textView_likeCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090273
    .end annotation
.end field

.field textView_timestamp:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090274
    .end annotation
.end field

.field textView_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090276
    .end annotation
.end field

.field textView_translate:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090277
    .end annotation
.end field

.field textView_viewCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090278
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030d
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 216
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->kE:Z

    .line 191
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nh:Z

    .line 192
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ni:Z

    .line 193
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nj:Z

    .line 194
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->isLiked:Z

    const/4 v1, 0x1

    .line 195
    iput-boolean v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nk:Z

    .line 198
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->downloadStatus:I

    return-void
.end method

.method public static a(Lcom/picacomic/fregata/objects/ComicListObject;)Lcom/picacomic/fregata/fragments/ComicDetailFragment;
    .locals 3

    .line 220
    new-instance v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;-><init>()V

    .line 221
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "COMIC_LIST_OBJECT"

    .line 222
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 223
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    return-object p0
.end method

.method static synthetic a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;Lcom/picacomic/fregata/objects/ComicDetailObject;)Lcom/picacomic/fregata/objects/ComicDetailObject;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    return-object p1
.end method

.method static synthetic b(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicListObject;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    return-object p0
.end method


# virtual methods
.method public A(Z)V
    .locals 4

    .line 852
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nk:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 858
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->bA()V

    .line 860
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 862
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nm:I

    invoke-interface {v0, v1, v2, v3}, Lcom/picacomic/fregata/b/a;->b(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nb:Lretrofit2/Call;

    .line 864
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nb:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :goto_0
    return-void
.end method

.method public C(I)V
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ig:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getEpisodeId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 791
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_KEY_COMIC_ID"

    .line 793
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getComicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_KEY_LAST_VIEW_EPISODE_ORDER"

    .line 794
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getOrder()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "EXTRA_KEY_LAST_VIEW_PAGE"

    const/4 v1, 0x1

    .line 795
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "EXTRA_KEY_EPISODE_TOTAL"

    .line 796
    iget v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->episodeTotal:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "EXTRA_KEY_COMIC_TITLE"

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "EXTRA_KEY_VIEW_FROM_RECORD"

    const/4 v1, 0x0

    .line 798
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 799
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public Y(Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 809
    :cond_0
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    const-string v1, "comic_id = ?"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->find(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 814
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 815
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    .line 817
    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getComicEpisodeObject()Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    move-result-object v5

    const/4 v6, 0x4

    if-eqz v3, :cond_5

    .line 820
    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getStatus()I

    move-result v7

    if-eq v7, v2, :cond_4

    .line 821
    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getStatus()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    .line 822
    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getStatus()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_2

    goto :goto_1

    .line 824
    :cond_2
    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getStatus()I

    move-result v7

    if-ne v7, v6, :cond_3

    .line 825
    invoke-virtual {v5, v8}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setStatus(I)V

    goto :goto_2

    .line 827
    :cond_3
    invoke-virtual {v5, v4}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setStatus(I)V

    goto :goto_2

    .line 823
    :cond_4
    :goto_1
    invoke-virtual {v5, v2}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setStatus(I)V

    :cond_5
    :goto_2
    if-nez v1, :cond_6

    .line 831
    iget-object v7, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/picacomic/fregata/utils/b;->ax(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    move-result-object v7

    if-eqz v7, :cond_6

    if-eqz v3, :cond_6

    .line 833
    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getEpisodeOrder()I

    move-result v7

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getEpisodeOrder()I

    move-result v3

    if-ne v7, v3, :cond_6

    .line 834
    invoke-virtual {v5, v6}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setStatus(I)V

    const/4 v1, 0x1

    .line 839
    :cond_6
    invoke-virtual {v5, v4}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setSelected(Z)V

    .line 840
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public bH()V
    .locals 3

    .line 579
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 581
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicListObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicListObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicListObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Landroid/support/v7/widget/Toolbar;Ljava/lang/String;Z)V

    goto :goto_0

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f0f01f4

    invoke-virtual {p0, v0, v2, v1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Landroid/support/v7/widget/Toolbar;IZ)V

    :goto_0
    const/4 v0, 0x0

    .line 592
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nj:Z

    .line 593
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->isLiked:Z

    .line 605
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 607
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/b;->aw(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 609
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getDownloadStatus()I

    move-result v1

    iput v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->downloadStatus:I

    .line 611
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getComicDetailObject()Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    .line 612
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->bI()V

    goto :goto_1

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicListObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_author:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicListObject;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_likeCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicListObject;->getLikesCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    .line 619
    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ComicListObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageView_cover:Landroid/widget/ImageView;

    .line 620
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    const-string v0, ""

    .line 622
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_categories:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    :goto_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->Y(Ljava/lang/String;)V

    .line 628
    :cond_3
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->kE:Z

    if-eqz v0, :cond_4

    .line 629
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->cJ()V

    .line 631
    :cond_4
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->cM()V

    return-void
.end method

.method public bI()V
    .locals 8

    .line 636
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 638
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 639
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    if-eqz v0, :cond_a

    .line 641
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/b;->ax(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 643
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->button_startRead:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f9e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nP."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getPage()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u958b\u59cb"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->button_startRead:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    goto :goto_0

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->button_startRead:Landroid/widget/Button;

    const v2, 0x7f0f00ea

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 647
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->button_startRead:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 651
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getPagesCount()I

    move-result v4

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/ComicDetailObject;->isFinished()Z

    move-result v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/picacomic/fregata/utils/g;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;IZ)V

    .line 652
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_translate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getChineseTeam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_likeCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getLikesCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_description:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->isAllowComment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_commentCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCommentsCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_commentCount:Landroid/widget/TextView;

    const-string v2, "\u7981"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    :goto_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_viewCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getViewsCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_author:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_timestamp:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getUpdatedAt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/picacomic/fregata/utils/g;->B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 665
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_knight:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/CreatorObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CreatorObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CreatorObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CreatorObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getFileServer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CreatorObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getOriginalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 667
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CreatorObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getPath()Ljava/lang/String;

    .line 668
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/CreatorObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v2, 0x7f080133

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageView_knightAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 671
    :cond_2
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->isLiked:Z

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicDetailObject;->isLiked()Z

    move-result v2

    if-eq v0, v2, :cond_3

    .line 672
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->isLiked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->isLiked:Z

    .line 673
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->isLiked:Z

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->z(Z)V

    .line 674
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->isLiked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nl:Z

    .line 676
    :cond_3
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nj:Z

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicDetailObject;->isFavourite()Z

    move-result v2

    if-eq v0, v2, :cond_4

    .line 677
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->isFavourite()Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nj:Z

    .line 678
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nj:Z

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->y(Z)V

    .line 681
    :cond_4
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nk:Z

    const/16 v2, 0x8

    if-nez v0, :cond_5

    .line 682
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->button_moreEpisode:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 685
    :cond_5
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 686
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_descriptionHeightControl:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 688
    :cond_6
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_descriptionHeightControl:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 690
    :goto_2
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    .line 691
    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v4

    invoke-static {v4}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageView_cover:Landroid/widget/ImageView;

    .line 692
    invoke-virtual {v0, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    const-string v0, ""

    .line 704
    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCategories()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_8

    move-object v4, v0

    const/4 v0, 0x0

    .line 705
    :goto_3
    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCategories()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 706
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCategories()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move-object v0, v4

    .line 708
    :cond_8
    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_categories:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getTags()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 712
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ng:[Landroid/widget/Button;

    .line 713
    :goto_4
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 715
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ng:[Landroid/widget/Button;

    new-instance v4, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x7f1000ed

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    aput-object v4, v0, v1

    .line 716
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ng:[Landroid/widget/Button;

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06007f

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 717
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ng:[Landroid/widget/Button;

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080086

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 718
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ng:[Landroid/widget/Button;

    aget-object v0, v0, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getTags()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ng:[Landroid/widget/Button;

    aget-object v0, v0, v1

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getTags()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 720
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ng:[Landroid/widget/Button;

    aget-object v0, v0, v1

    new-instance v4, Lcom/picacomic/fregata/fragments/ComicDetailFragment$9;

    invoke-direct {v4, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$9;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 733
    :cond_9
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->linearLayout_tags:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ng:[Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_tagHeightControl:Landroid/widget/ImageButton;

    invoke-static {v0, v1, v4, v5}, Lcom/picacomic/fregata/utils/g;->a(Landroid/widget/LinearLayout;[Landroid/view/View;Landroid/content/Context;Landroid/view/View;)I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 734
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_tagHeightControl:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public cJ()V
    .locals 3

    .line 946
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->bA()V

    .line 948
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 950
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/b/a;->r(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->na:Lretrofit2/Call;

    .line 952
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->na:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$11;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$11;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public cK()V
    .locals 3

    .line 996
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->bA()V

    .line 998
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 1000
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/b/a;->t(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mZ:Lretrofit2/Call;

    .line 1002
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mZ:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$13;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$13;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public cL()V
    .locals 3

    .line 1048
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->bA()V

    .line 1050
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 1052
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/b/a;->s(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mW:Lretrofit2/Call;

    .line 1054
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mW:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public cM()V
    .locals 3

    .line 1105
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 1106
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/b/a;->u(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nc:Lretrofit2/Call;

    .line 1107
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nc:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$15;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$15;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public cN()V
    .locals 3

    .line 1143
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/b;->ax(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1146
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->delete()Z

    .line 1147
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->bI()V

    .line 1148
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0051

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public ca()V
    .locals 4

    .line 334
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 336
    new-instance v0, Lcom/picacomic/fregata/utils/FullGridLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/picacomic/fregata/utils/FullGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 337
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->recyclerView_episode:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 339
    new-instance v0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ig:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    .line 340
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->recyclerView_episode:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 342
    new-instance v0, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nf:Ljava/util/ArrayList;

    new-instance v3, Lcom/picacomic/fregata/fragments/ComicDetailFragment$12;

    invoke-direct {v3, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$12;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/b;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ne:Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;

    .line 359
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 360
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->recyclerView_recommendation:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 361
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->recyclerView_recommendation:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ne:Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 364
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_author:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$16;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$16;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_translate:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$17;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$17;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    new-instance v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$18;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$18;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    .line 402
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_knight:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageView_knightAvatar:Landroid/widget/ImageView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$19;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$19;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageView_cover:Landroid/widget/ImageView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$20;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$20;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_bookmark:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$21;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$21;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_like:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$22;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$22;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_comment:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$2;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_tagHeightControl:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$3;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_descriptionHeightControl:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$4;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$4;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->button_startRead:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->button_moreEpisode:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$6;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$6;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$7;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$7;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 559
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->recyclerView_episode:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment$8;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$8;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 771
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 772
    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 773
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mU:Landroid/view/animation/Animation;

    .line 776
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mU:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 780
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 781
    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 782
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mV:Landroid/view/animation/Animation;

    .line 785
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mV:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public init()V
    .locals 7

    .line 289
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 292
    :try_start_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->targetWidth:I

    .line 293
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->targetHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x50

    .line 295
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->targetWidth:I

    const/16 v0, 0x78

    .line 296
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->targetHeight:I

    .line 299
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 303
    :cond_0
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    .line 304
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800d6

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 305
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0800d7

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-static {v3, v5, v6}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-direct {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mT:Landroid/graphics/drawable/TransitionDrawable;

    .line 307
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 308
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ef

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-static {v2, v3, v6}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 309
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ee

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-static {v2, v3, v6}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mS:Landroid/graphics/drawable/TransitionDrawable;

    .line 311
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_bookmark:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mS:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->imageButton_like:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mT:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mU:Landroid/view/animation/Animation;

    .line 315
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mV:Landroid/view/animation/Animation;

    .line 317
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ig:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ig:Ljava/util/ArrayList;

    .line 319
    iput-boolean v5, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->kE:Z

    .line 320
    iput-boolean v5, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nk:Z

    .line 321
    iput v5, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nm:I

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nf:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nf:Ljava/util/ArrayList;

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->recyclerView_episode:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 229
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "COMIC_LIST_OBJECT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ComicListObject;

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const/high16 v0, 0x7f0c0000

    .line 247
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 248
    invoke-super {p0, p1, p2}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b004c

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 240
    invoke-virtual {p0, p2}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->setHasOptionsMenu(Z)V

    .line 241
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->na:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->na:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mW:Lretrofit2/Call;

    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mW:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mZ:Lretrofit2/Call;

    if-eqz v0, :cond_2

    .line 1190
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mZ:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1191
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nb:Lretrofit2/Call;

    if-eqz v0, :cond_3

    .line 1192
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nb:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1193
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nc:Lretrofit2/Call;

    if-eqz v0, :cond_4

    .line 1194
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nc:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1196
    :cond_4
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 253
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09000f

    if-ne v0, v1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800e3

    const v4, 0x7f0f0052

    const v5, 0x7f0f0050

    new-instance v6, Lcom/picacomic/fregata/fragments/ComicDetailFragment$1;

    invoke-direct {v6, p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 263
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090015

    if-ne v0, v1, :cond_2

    .line 266
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->np:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->isAllowDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010024

    const v2, 0x7f010025

    const v3, 0x7f010026

    const v4, 0x7f010027

    .line 270
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0900ab

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    .line 271
    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nn:Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ComicListObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    move-result-object v2

    sget-object v3, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->TAG:Ljava/lang/String;

    .line 272
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800e3

    const v2, 0x7f0f005a

    const v3, 0x7f0f0059

    invoke-static {v0, v1, v2, v3}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;III)V

    .line 284
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public y(Z)V
    .locals 2

    const v0, 0x7f0a0002

    if-eqz p1, :cond_0

    .line 749
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mS:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 753
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mS:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    :goto_0
    return-void
.end method

.method public z(Z)V
    .locals 2

    const v0, 0x7f0a0002

    if-eqz p1, :cond_0

    .line 760
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mT:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 765
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->mT:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    :goto_0
    return-void
.end method
