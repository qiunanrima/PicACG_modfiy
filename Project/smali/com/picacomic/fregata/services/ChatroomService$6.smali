.class Lcom/picacomic/fregata/services/ChatroomService$6;
.super Ljava/lang/Object;
.source "ChatroomService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/services/ChatroomService;->bF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tI:Lcom/picacomic/fregata/services/ChatroomService;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/services/ChatroomService;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$6;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 406
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$6;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object p1, p1, Lcom/picacomic/fregata/services/ChatroomService;->recyclerView_chat:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$6;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object p1, p1, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$6;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object p1, p1, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 407
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$6;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object p1, p1, Lcom/picacomic/fregata/services/ChatroomService;->recyclerView_chat:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
