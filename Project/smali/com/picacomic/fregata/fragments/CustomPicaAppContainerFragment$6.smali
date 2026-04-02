.class Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$6;
.super Ljava/lang/Object;
.source "CustomPicaAppContainerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->df()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$6;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 264
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 265
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$6;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->ja:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$6;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oL:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$6;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oM:Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;

    invoke-virtual {p1}, Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
