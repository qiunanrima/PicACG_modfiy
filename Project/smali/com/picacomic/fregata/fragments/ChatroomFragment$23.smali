.class Lcom/picacomic/fregata/fragments/ChatroomFragment$23;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field iR:I

.field iS:I

.field iT:Z

.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 577
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 578
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 580
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 595
    :pswitch_0
    iget p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->iR:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v2, 0xa

    if-ge p2, v2, :cond_0

    iget p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->iS:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p2, v2, :cond_0

    .line 596
    iput-boolean v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->iT:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 598
    iput-boolean p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->iT:Z

    .line 601
    :goto_0
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-static {v2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Lcom/picacomic/fregata/fragments/ChatroomFragment;)I

    move-result v2

    sub-int/2addr p1, v2

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 602
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-static {p2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->b(Lcom/picacomic/fregata/fragments/ChatroomFragment;)I

    move-result p2

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 603
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->fab_command:Landroid/support/design/widget/FloatingActionButton;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 608
    :pswitch_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->fab_command:Landroid/support/design/widget/FloatingActionButton;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-wide v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iL:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    iget-boolean p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->iT:Z

    if-eqz p1, :cond_1

    .line 616
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    const-string p2, "@\u6307\u4ee4"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->c(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    goto :goto_1

    .line 582
    :pswitch_2
    iput p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->iR:I

    .line 583
    iput v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->iS:I

    .line 584
    iput-boolean v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->iT:Z

    .line 585
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iL:J

    .line 586
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p1, v2

    invoke-static {p2, p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Lcom/picacomic/fregata/fragments/ChatroomFragment;I)I

    .line 587
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    iget p2, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->b(Lcom/picacomic/fregata/fragments/ChatroomFragment;I)I

    :cond_1
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
