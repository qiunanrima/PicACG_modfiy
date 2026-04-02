.class public Lcom/picacomic/fregata/holders/ComicCollectionView;
.super Landroid/widget/LinearLayout;
.source "ComicCollectionView.java"


# instance fields
.field imageView_icon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090143
    .end annotation
.end field

.field linearLayout_content:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090190
    .end annotation
.end field

.field textView_count:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09026c
    .end annotation
.end field

.field textView_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09026d
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b00a7

    .line 39
    invoke-static {p1, v0, p0}, Lcom/picacomic/fregata/holders/ComicCollectionView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0b00a7

    .line 45
    invoke-static {p1, p2, p0}, Lcom/picacomic/fregata/holders/ComicCollectionView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0b00a7

    .line 51
    invoke-static {p1, p2, p0}, Lcom/picacomic/fregata/holders/ComicCollectionView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicListObject;",
            ">;I",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b00a7

    .line 86
    invoke-static {p1, v0, p0}, Lcom/picacomic/fregata/holders/ComicCollectionView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 89
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 91
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 92
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    const/4 v1, 0x4

    :cond_0
    if-eqz p5, :cond_1

    .line 98
    iget-object v2, p0, Lcom/picacomic/fregata/holders/ComicCollectionView;->textView_count:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object p5, p0, Lcom/picacomic/fregata/holders/ComicCollectionView;->textView_count:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/4 p5, 0x0

    :goto_1
    if-ge p5, v1, :cond_2

    add-int v2, p5, p3

    .line 105
    new-instance v3, Lcom/picacomic/fregata/holders/SingleImageTextView;

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-direct {v3, p1, v4, p4}, Lcom/picacomic/fregata/holders/SingleImageTextView;-><init>(Landroid/content/Context;Lcom/picacomic/fregata/objects/ComicListObject;Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {v3, v0}, Lcom/picacomic/fregata/holders/SingleImageTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/picacomic/fregata/holders/SingleImageTextView;->setTag(Ljava/lang/Object;)V

    .line 108
    iget-object v2, p0, Lcom/picacomic/fregata/holders/ComicCollectionView;->linearLayout_content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getTextView_count()Landroid/widget/TextView;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/picacomic/fregata/holders/ComicCollectionView;->textView_count:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextView_title()Landroid/widget/TextView;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/picacomic/fregata/holders/ComicCollectionView;->textView_title:Landroid/widget/TextView;

    return-object v0
.end method

.method public setTextView_count(Landroid/widget/TextView;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/picacomic/fregata/holders/ComicCollectionView;->textView_count:Landroid/widget/TextView;

    return-void
.end method

.method public setTextView_title(Landroid/widget/TextView;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/picacomic/fregata/holders/ComicCollectionView;->textView_title:Landroid/widget/TextView;

    return-void
.end method
