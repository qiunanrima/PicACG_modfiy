.class Lcom/picacomic/fregata/fragments/HomeFragment$5;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/HomeFragment;->bH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic py:Lcom/picacomic/fregata/fragments/HomeFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/HomeFragment;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$5;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 311
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$5;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment$5;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getAnnouncementId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->p(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
