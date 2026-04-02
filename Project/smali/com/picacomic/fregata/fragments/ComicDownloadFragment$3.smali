.class Lcom/picacomic/fregata/fragments/ComicDownloadFragment$3;
.super Ljava/lang/Object;
.source "ComicDownloadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ca()V
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

    .line 263
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$3;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 267
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$3;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    .line 271
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$3;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 273
    :goto_0
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$3;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$3;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$3;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-virtual {v2, v0}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->J(I)V

    .line 276
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$3;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setStatus(I)V

    .line 277
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$3;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v2, p1}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_3

    .line 284
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$3;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->comicId:Ljava/lang/String;

    invoke-static {p1}, Lcom/picacomic/fregata/utils/b;->aw(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    .line 286
    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->setDownloadStatus(I)V

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->setDownloadedAt(J)V

    .line 288
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->save()J

    goto :goto_1

    .line 290
    :cond_2
    sget-object p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->TAG:Ljava/lang/String;

    const-string v0, "Some ERROR must occur as DbComicDetailObject must NOT be null!"

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$3;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 298
    :cond_4
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$3;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$3;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/picacomic/fregata/activities/BaseActivity;

    if-eqz p1, :cond_5

    .line 299
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$3;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/BaseActivity;->requestPermission()V

    :cond_5
    :goto_2
    return-void
.end method
