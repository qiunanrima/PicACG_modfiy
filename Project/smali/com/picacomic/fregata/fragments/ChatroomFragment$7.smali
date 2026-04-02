.class Lcom/picacomic/fregata/fragments/ChatroomFragment$7;
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

    .line 829
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$7;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 832
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$7;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$7;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 833
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$7;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$7;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AtMeObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AtMeObject;->getIndex()I

    move-result v0

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$7;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/AtMeObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/AtMeObject;->getIndex()I

    move-result p1

    if-ltz p1, :cond_1

    .line 834
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$7;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->recyclerView_chat:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$7;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AtMeObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AtMeObject;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 836
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$7;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 838
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$7;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 839
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$7;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->co()V

    goto :goto_0

    .line 841
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$7;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cp()V

    goto :goto_0

    .line 844
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$7;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cp()V

    :cond_2
    :goto_0
    return-void
.end method
