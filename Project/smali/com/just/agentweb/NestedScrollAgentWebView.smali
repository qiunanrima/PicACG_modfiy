.class public Lcom/just/agentweb/NestedScrollAgentWebView;
.super Lcom/just/agentweb/AgentWebView;
.source "NestedScrollAgentWebView.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;


# instance fields
.field private mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private mLastMotionY:I

.field private mNestedYOffset:I

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Lcom/just/agentweb/AgentWebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 36
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    .line 37
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollConsumed:[I

    .line 45
    invoke-direct {p0}, Lcom/just/agentweb/NestedScrollAgentWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/AgentWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 36
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    .line 37
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollConsumed:[I

    .line 50
    invoke-direct {p0}, Lcom/just/agentweb/NestedScrollAgentWebView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 54
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Lcom/just/agentweb/NestedScrollAgentWebView;->setNestedScrollingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 62
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 64
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 67
    iput v2, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 72
    iget v4, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 81
    :pswitch_0
    iget p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionY:I

    sub-int/2addr p1, v3

    .line 83
    iget-object v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollConsumed:[I

    iget-object v4, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    invoke-virtual {p0, v2, p1, v1, v4}, Lcom/just/agentweb/NestedScrollAgentWebView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollConsumed:[I

    aget v1, v1, v4

    sub-int/2addr p1, v1

    .line 85
    iget-object v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    aget v1, v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 86
    iget v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    iget-object v6, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    aget v6, v6, v4

    add-int/2addr v1, v6

    iput v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    aget v1, v1, v4

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionY:I

    .line 91
    invoke-virtual {p0}, Lcom/just/agentweb/NestedScrollAgentWebView;->getScrollY()I

    move-result v1

    add-int v3, v1, p1

    .line 92
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v8, v2, v1

    sub-int v10, p1, v8

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 96
    iget-object v11, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/just/agentweb/NestedScrollAgentWebView;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 97
    iget p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionY:I

    iget-object v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    aget v1, v1, v4

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionY:I

    .line 98
    iget-object p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    aget p1, p1, v4

    int-to-float p1, p1

    invoke-virtual {v0, v5, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 99
    iget p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    iget-object v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    aget v1, v1, v4

    add-int/2addr p1, v1

    iput p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    .line 102
    :cond_2
    invoke-super {p0, v0}, Lcom/just/agentweb/AgentWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 103
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 76
    :pswitch_1
    iput v3, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionY:I

    const/4 v0, 0x2

    .line 77
    invoke-virtual {p0, v0}, Lcom/just/agentweb/NestedScrollAgentWebView;->startNestedScroll(I)Z

    .line 78
    invoke-super {p0, p1}, Lcom/just/agentweb/AgentWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 108
    :cond_3
    :pswitch_2
    invoke-virtual {p0}, Lcom/just/agentweb/NestedScrollAgentWebView;->stopNestedScroll()V

    .line 109
    invoke-super {p0, p1}, Lcom/just/agentweb/AgentWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
