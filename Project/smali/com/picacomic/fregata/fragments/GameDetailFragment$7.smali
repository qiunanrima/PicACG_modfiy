.class Lcom/picacomic/fregata/fragments/GameDetailFragment$7;
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

    .line 318
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$7;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 322
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$7;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->c(IZ)V

    return-void
.end method
