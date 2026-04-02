.class Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;
.super Ljava/lang/Object;
.source "ComicDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 501
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getComicId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->b(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicListObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/b;->ax(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 502
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->b(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicListObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/b;->ax(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    move-result-object p1

    .line 503
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {v2}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "EXTRA_KEY_COMIC_ID"

    .line 505
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {v3}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->b(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicListObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "EXTRA_KEY_LAST_VIEW_EPISODE_ORDER"

    .line 506
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getEpisodeOrder()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "EXTRA_KEY_LAST_VIEW_PAGE"

    .line 507
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getPage()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "EXTRA_KEY_EPISODE_TOTAL"

    .line 508
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getEpisodeTotal()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "EXTRA_KEY_COMIC_TITLE"

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {v3}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "EXTRA_KEY_VIEW_FROM_RECORD"

    .line 510
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 511
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 514
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ig:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ig:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getEpisodeId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 515
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {v2}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "EXTRA_KEY_COMIC_ID"

    .line 517
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {v3}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->b(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicListObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "EXTRA_KEY_LAST_VIEW_EPISODE_ORDER"

    .line 518
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "EXTRA_KEY_LAST_VIEW_PAGE"

    .line 519
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "EXTRA_KEY_EPISODE_TOTAL"

    .line 520
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget v2, v2, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->episodeTotal:I

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "EXTRA_KEY_COMIC_TITLE"

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {v3}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_KEY_VIEW_FROM_RECORD"

    .line 522
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 523
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$5;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
