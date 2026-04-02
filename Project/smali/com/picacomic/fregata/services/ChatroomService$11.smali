.class Lcom/picacomic/fregata/services/ChatroomService$11;
.super Ljava/lang/Object;
.source "ChatroomService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/services/ChatroomService;->bF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field iS:I

.field final synthetic tI:Lcom/picacomic/fregata/services/ChatroomService;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/services/ChatroomService;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$11;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 476
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 478
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    iget-object p2, p0, Lcom/picacomic/fregata/services/ChatroomService$11;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    invoke-static {p2}, Lcom/picacomic/fregata/services/ChatroomService;->b(Lcom/picacomic/fregata/services/ChatroomService;)I

    move-result p2

    iget v1, p0, Lcom/picacomic/fregata/services/ChatroomService$11;->iS:I

    sub-int/2addr v1, p1

    sub-int p1, p2, v1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 491
    :cond_1
    iget-object p2, p0, Lcom/picacomic/fregata/services/ChatroomService$11;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object p2, p2, Lcom/picacomic/fregata/services/ChatroomService;->recyclerView_chat:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 492
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$11;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    invoke-static {p1}, Lcom/picacomic/fregata/services/ChatroomService;->c(Lcom/picacomic/fregata/services/ChatroomService;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/picacomic/fregata/services/ChatroomService$11;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object p2, p2, Lcom/picacomic/fregata/services/ChatroomService;->tD:Landroid/view/View;

    iget-object v1, p0, Lcom/picacomic/fregata/services/ChatroomService$11;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object v1, v1, Lcom/picacomic/fregata/services/ChatroomService;->tE:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 481
    :cond_2
    iput p1, p0, Lcom/picacomic/fregata/services/ChatroomService$11;->iS:I

    .line 482
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$11;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object p2, p0, Lcom/picacomic/fregata/services/ChatroomService$11;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object p2, p2, Lcom/picacomic/fregata/services/ChatroomService;->recyclerView_chat:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p1, p2}, Lcom/picacomic/fregata/services/ChatroomService;->a(Lcom/picacomic/fregata/services/ChatroomService;I)I

    :goto_0
    return v0
.end method
