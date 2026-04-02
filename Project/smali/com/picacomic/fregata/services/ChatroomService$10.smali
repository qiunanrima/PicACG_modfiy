.class Lcom/picacomic/fregata/services/ChatroomService$10;
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

    .line 438
    iput-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$10;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 444
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 446
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    iget-object p2, p0, Lcom/picacomic/fregata/services/ChatroomService$10;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object p2, p2, Lcom/picacomic/fregata/services/ChatroomService;->tE:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService$10;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    invoke-static {v0}, Lcom/picacomic/fregata/services/ChatroomService;->b(Lcom/picacomic/fregata/services/ChatroomService;)I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 457
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$10;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    invoke-static {p1}, Lcom/picacomic/fregata/services/ChatroomService;->c(Lcom/picacomic/fregata/services/ChatroomService;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/picacomic/fregata/services/ChatroomService$10;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object p2, p2, Lcom/picacomic/fregata/services/ChatroomService;->tD:Landroid/view/View;

    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService$10;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object v0, v0, Lcom/picacomic/fregata/services/ChatroomService;->tE:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 449
    :cond_1
    iput p1, p0, Lcom/picacomic/fregata/services/ChatroomService$10;->iS:I

    .line 450
    iget-object p2, p0, Lcom/picacomic/fregata/services/ChatroomService$10;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService$10;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object v0, v0, Lcom/picacomic/fregata/services/ChatroomService;->tE:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr p1, v0

    invoke-static {p2, p1}, Lcom/picacomic/fregata/services/ChatroomService;->a(Lcom/picacomic/fregata/services/ChatroomService;I)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
