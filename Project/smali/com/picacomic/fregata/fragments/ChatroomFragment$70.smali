.class Lcom/picacomic/fregata/fragments/ChatroomFragment$70;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$70;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 720
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$70;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gridView_emojiList:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 721
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$70;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gridView_emojiList:Landroid/widget/GridView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 723
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$70;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gridView_emojiList:Landroid/widget/GridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    :goto_0
    return-void
.end method
