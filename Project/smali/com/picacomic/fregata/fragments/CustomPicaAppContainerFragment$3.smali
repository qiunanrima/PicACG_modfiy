.class Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;
.super Ljava/lang/Object;
.source "CustomPicaAppContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field iR:I

.field iS:I

.field iT:Z

.field final synthetic oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 135
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 152
    :pswitch_0
    iget p2, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->iR:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v2, 0xa

    if-ge p2, v2, :cond_0

    iget p2, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->iS:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p2, v2, :cond_0

    .line 153
    iput-boolean v1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->iT:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 155
    iput-boolean p2, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->iT:Z

    .line 158
    :goto_0
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    invoke-static {v2}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->a(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;)I

    move-result v2

    sub-int/2addr p1, v2

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 159
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    invoke-static {p2}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->b(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;)I

    move-result p2

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 160
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->fab_add:Landroid/support/design/widget/FloatingActionButton;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 165
    :pswitch_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->fab_add:Landroid/support/design/widget/FloatingActionButton;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    iget-wide v2, v0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->iL:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    iget-boolean p1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->iT:Z

    if-eqz p1, :cond_1

    .line 173
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->dd()V

    goto :goto_1

    .line 139
    :pswitch_2
    iput p1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->iR:I

    .line 140
    iput v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->iS:I

    .line 141
    iput-boolean v1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->iT:Z

    .line 142
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->iL:J

    .line 143
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p1, v2

    invoke-static {p2, p1}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->a(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;I)I

    .line 144
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    iget p2, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->b(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;I)I

    :cond_1
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
