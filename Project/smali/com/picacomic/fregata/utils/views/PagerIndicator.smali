.class public Lcom/picacomic/fregata/utils/views/PagerIndicator;
.super Ljava/lang/Object;
.source "PagerIndicator.java"


# instance fields
.field private context:Landroid/content/Context;

.field private currentIndex:I

.field imageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field linearLayout_indicator_container:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;I)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->linearLayout_indicator_container:Landroid/widget/LinearLayout;

    .line 24
    invoke-virtual {p0, p3}, Lcom/picacomic/fregata/utils/views/PagerIndicator;->init(I)V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    return v0
.end method

.method public getCurrentView()Landroid/widget/ImageView;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    if-le v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    iget v1, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    if-le v0, v3, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public init(I)V
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 41
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0800f6

    .line 42
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v3, 0x1

    .line 44
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 45
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    .line 46
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v3, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v3, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->linearLayout_indicator_container:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-lez p1, :cond_2

    .line 54
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f0800f7

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iput v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    goto :goto_2

    :cond_2
    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    :goto_2
    return-void
.end method

.method public next()I
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    if-le v0, v1, :cond_0

    .line 108
    iget v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    .line 109
    iget v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/utils/views/PagerIndicator;->setCurrentIndex(I)Z

    .line 110
    iget v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    .line 113
    iget v1, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/utils/views/PagerIndicator;->setCurrentIndex(I)Z

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public previous()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 127
    iget v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    if-lez v0, :cond_0

    .line 129
    iget v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/utils/views/PagerIndicator;->setCurrentIndex(I)Z

    .line 131
    iget v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    return v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/utils/views/PagerIndicator;->setCurrentIndex(I)Z

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public setCurrentIndex(I)Z
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f0800f6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0800f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    iput p1, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->currentIndex:I

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public setSize(I)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->linearLayout_indicator_container:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PagerIndicator;->linearLayout_indicator_container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/utils/views/PagerIndicator;->init(I)V

    :cond_0
    return-void
.end method
