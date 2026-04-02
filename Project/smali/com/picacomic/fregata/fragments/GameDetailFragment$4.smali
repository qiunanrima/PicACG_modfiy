.class Lcom/picacomic/fregata/fragments/GameDetailFragment$4;
.super Ljava/lang/Object;
.source "GameDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/GameDetailFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$4;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 298
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$4;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->a(Lcom/picacomic/fregata/fragments/GameDetailFragment;)Lcom/picacomic/fregata/objects/GameDetailObject;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$4;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->a(Lcom/picacomic/fregata/fragments/GameDetailFragment;)Lcom/picacomic/fregata/objects/GameDetailObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/GameDetailObject;->getAndroidLinks()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$4;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->a(Lcom/picacomic/fregata/fragments/GameDetailFragment;)Lcom/picacomic/fregata/objects/GameDetailObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/GameDetailObject;->getAndroidLinks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 299
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$4;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$4;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-static {v0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->a(Lcom/picacomic/fregata/fragments/GameDetailFragment;)Lcom/picacomic/fregata/objects/GameDetailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/GameDetailObject;->getAndroidLinks()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/g;->A(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
