.class Lcom/picacomic/fregata/fragments/GameDetailFragment$5;
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

    .line 303
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$5;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 306
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$5;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->giftNotReady(Landroid/content/Context;)V

    return-void
.end method
