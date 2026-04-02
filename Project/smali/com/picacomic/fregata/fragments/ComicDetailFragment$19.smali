.class Lcom/picacomic/fregata/fragments/ComicDetailFragment$19;
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

    .line 405
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$19;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 408
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$19;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$19;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 409
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$19;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$19;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CreatorObject;->getCreatorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->E(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
