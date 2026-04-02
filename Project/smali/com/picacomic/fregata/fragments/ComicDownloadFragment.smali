.class public Lcom/picacomic/fregata/fragments/ComicDownloadFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "ComicDownloadFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/k;


# static fields
.field public static final TAG:Ljava/lang/String; = "ComicDownloadFragment"


# instance fields
.field button_download:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090046
    .end annotation
.end field

.field button_manage:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090047
    .end annotation
.end field

.field comicId:Ljava/lang/String;

.field episodeTotal:I

.field hL:Ljava/lang/String;

.field hR:Z

.field hZ:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field public if:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicPageObject;",
            ">;"
        }
    .end annotation
.end field

.field ig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicEpisodeObject;",
            ">;"
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

.field nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

.field nk:Z

.field nm:I

.field private nt:Z

.field nu:Z

.field private final nv:Landroid/content/BroadcastReceiver;

.field recyclerView_episode:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901f7
    .end annotation
.end field

.field textView_testBroadcast:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090279
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
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nk:Z

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nu:Z

    .line 97
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->hR:Z

    .line 563
    new-instance v0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;-><init>(Lcom/picacomic/fregata/fragments/ComicDownloadFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nv:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private cP()V
    .locals 3

    .line 546
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->cQ()V

    .line 547
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 548
    sget-object v1, Lcom/picacomic/fregata/services/DownloadService;->tN:Ljava/lang/String;

    .line 549
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nv:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x1

    .line 552
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nt:Z

    return-void
.end method

.method private cQ()V
    .locals 2

    .line 556
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nt:Z

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nv:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 559
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nt:Z

    :cond_0
    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ComicDownloadFragment;
    .locals 3

    .line 112
    new-instance v0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;-><init>()V

    .line 113
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "COMIC_ID"

    .line 114
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "COMIC_TITLE"

    .line 115
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public C(I)V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 511
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setSelected(Z)V

    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setSelected(Z)V

    .line 516
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public J(I)V
    .locals 4

    .line 521
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getEpisodeId()Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-static {v0}, Lcom/picacomic/fregata/utils/b;->ay(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    new-instance v1, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->comicId:Ljava/lang/String;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, v3}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;-><init>(Ljava/lang/String;Lcom/picacomic/fregata/objects/ComicEpisodeObject;I)V

    .line 532
    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->save()J

    .line 536
    :goto_0
    sget-object p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->TAG:Ljava/lang/String;

    const-string v1, "Start Download Service"

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/picacomic/fregata/services/DownloadService;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "COMIC_ID"

    .line 538
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->comicId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EPISODE_ID"

    .line 540
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public bH()V
    .locals 3

    .line 328
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 330
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    :cond_0
    const v0, 0x7f0f0139

    .line 333
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->hL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->a(Landroid/support/v7/widget/Toolbar;Ljava/lang/String;Z)V

    .line 338
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->bN()V

    .line 340
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    invoke-static {v0}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->listAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    .line 342
    sget-object v2, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bI()V
    .locals 0

    .line 349
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    return-void
.end method

.method public bN()V
    .locals 4

    .line 419
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nu:Z

    if-eqz v0, :cond_0

    return-void

    .line 422
    :cond_0
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nk:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nu:Z

    .line 428
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->bA()V

    .line 430
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 432
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->comicId:Ljava/lang/String;

    iget v3, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nm:I

    invoke-interface {v0, v1, v2, v3}, Lcom/picacomic/fregata/b/a;->b(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nb:Lretrofit2/Call;

    .line 434
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nb:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;-><init>(Lcom/picacomic/fregata/fragments/ComicDownloadFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public cO()V
    .locals 7

    .line 164
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->comicId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->comicId:Ljava/lang/String;

    invoke-static {v0}, Lcom/picacomic/fregata/utils/b;->aw(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 167
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->setDownloadStatus(I)V

    const-wide/16 v2, 0x0

    .line 168
    invoke-virtual {v0, v2, v3}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->setDownloadedAt(J)V

    .line 169
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->save()J

    .line 171
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    const-string v2, "comic_id = ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->comicId:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v0, v2, v4}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->find(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 173
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 174
    invoke-static {}, Lcom/picacomic/fregata/utils/c;->ec()Ljava/lang/String;

    move-result-object v4

    .line 175
    new-instance v5, Ljava/io/File;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getEpisodeId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {v5}, Lcom/picacomic/fregata/utils/g;->g(Ljava/io/File;)V

    .line 177
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_0
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;

    const-string v2, "comic_id = ?"

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->comicId:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->deleteAll(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 185
    :goto_1
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setSelected(Z)V

    .line 187
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setStatus(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public ca()V
    .locals 3

    .line 237
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 239
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 240
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->recyclerView_episode:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 242
    new-instance v0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    .line 243
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->recyclerView_episode:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 245
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->recyclerView_episode:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$2;-><init>(Lcom/picacomic/fregata/fragments/ComicDownloadFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 263
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->button_download:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$3;-><init>(Lcom/picacomic/fregata/fragments/ComicDownloadFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->button_manage:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$4;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$4;-><init>(Lcom/picacomic/fregata/fragments/ComicDownloadFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public init()V
    .locals 1

    .line 227
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 228
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->cP()V

    const/4 v0, 0x1

    .line 229
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nm:I

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->if:Ljava/util/ArrayList;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 122
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "COMIC_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->comicId:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "COMIC_TITLE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->hL:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c0001

    .line 144
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 145
    invoke-super {p0, p1, p2}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b004d

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 135
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->comicId:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :cond_0
    const/4 p2, 0x1

    .line 137
    invoke-virtual {p0, p2}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->setHasOptionsMenu(Z)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nb:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nb:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->hZ:Lretrofit2/Call;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->hZ:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 501
    :cond_1
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->cQ()V

    .line 503
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 150
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090013

    if-ne v0, v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800e3

    const v4, 0x7f0f0057

    const v5, 0x7f0f0056

    new-instance v6, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$1;

    invoke-direct {v6, p0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ComicDownloadFragment;)V

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_0
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
