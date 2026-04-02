.class Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;
.super Landroid/content/BroadcastReceiver;
.source "ComicDownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picacomic/fregata/fragments/ComicDownloadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicDownloadFragment;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 566
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/services/DownloadService;->tN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "COMIC_ID"

    .line 567
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "COMIC_NAME"

    .line 568
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EPISODE_ID"

    .line 569
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EPISODE_TITLE"

    .line 570
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PROGRESS_CURRENT"

    const/4 v3, 0x0

    .line 571
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "PROGRESS_TOTAL"

    const/4 v5, 0x1

    .line 572
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 574
    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v4, v4, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 575
    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v4, v4, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    .line 577
    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v6, v6, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v6, v6, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v5, :cond_1

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v6, v6, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getEpisodeId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-ne v2, p2, :cond_0

    .line 579
    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v6, v6, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v6, v6, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v6, v6, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v5, :cond_1

    .line 580
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setStatus(I)V

    .line 581
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setTitle(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    invoke-virtual {v0, v5}, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 586
    :cond_0
    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v6, v6, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v6, v6, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v6, v6, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v5, :cond_1

    .line 587
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setTitle(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    invoke-virtual {v0, v5}, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 596
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->textView_testBroadcast:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 597
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->textView_testBroadcast:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$6;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->textView_testBroadcast:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
