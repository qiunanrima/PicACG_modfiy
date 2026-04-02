.class Lcom/picacomic/fregata/activities/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/activities/MainActivity;->bY()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iO:Lcom/picacomic/fregata/activities/MainActivity;

.field iR:I

.field iS:I

.field iT:Z


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/MainActivity;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 776
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 777
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 781
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 795
    :pswitch_0
    iget p2, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iR:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v3, 0xa

    if-ge p2, v3, :cond_0

    iget p2, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iS:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p2, v3, :cond_0

    .line 796
    iput-boolean v2, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iT:Z

    goto :goto_0

    .line 798
    :cond_0
    iput-boolean v1, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iT:Z

    .line 801
    :goto_0
    iget-object p2, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    iget-object p2, p2, Lcom/picacomic/fregata/activities/MainActivity;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    invoke-static {v2}, Lcom/picacomic/fregata/activities/MainActivity;->a(Lcom/picacomic/fregata/activities/MainActivity;)I

    move-result v2

    sub-int/2addr p1, v2

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 802
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/MainActivity;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    invoke-static {p2}, Lcom/picacomic/fregata/activities/MainActivity;->b(Lcom/picacomic/fregata/activities/MainActivity;)I

    move-result p2

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 803
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/MainActivity;->button_controlExp:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    iget-object p2, p2, Lcom/picacomic/fregata/activities/MainActivity;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 808
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    iget-wide v3, v0, Lcom/picacomic/fregata/activities/MainActivity;->iL:J

    sub-long/2addr p1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v0, p1, v3

    if-gez v0, :cond_1

    iget-boolean p1, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iT:Z

    if-eqz p1, :cond_1

    .line 809
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz p1, :cond_1

    .line 810
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    invoke-virtual {p1, v2}, Lcom/picacomic/fregata/activities/MainActivity;->v(I)V

    goto :goto_1

    .line 783
    :pswitch_2
    iput p1, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iR:I

    .line 784
    iput v0, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iS:I

    .line 785
    iput-boolean v2, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iT:Z

    .line 786
    iget-object p2, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/picacomic/fregata/activities/MainActivity;->iL:J

    .line 787
    iget-object p2, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    iget-object v2, v2, Lcom/picacomic/fregata/activities/MainActivity;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p1, v2

    invoke-static {p2, p1}, Lcom/picacomic/fregata/activities/MainActivity;->a(Lcom/picacomic/fregata/activities/MainActivity;I)I

    .line 788
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    iget-object p2, p0, Lcom/picacomic/fregata/activities/MainActivity$9;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    iget-object p2, p2, Lcom/picacomic/fregata/activities/MainActivity;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    iget p2, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/picacomic/fregata/activities/MainActivity;->b(Lcom/picacomic/fregata/activities/MainActivity;I)I

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
