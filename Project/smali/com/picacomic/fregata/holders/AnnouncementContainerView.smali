.class public Lcom/picacomic/fregata/holders/AnnouncementContainerView;
.super Landroid/widget/LinearLayout;
.source "AnnouncementContainerView.java"


# instance fields
.field context:Landroid/content/Context;

.field imageView_icon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09013c
    .end annotation
.end field

.field linearLayout_content:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090180
    .end annotation
.end field

.field sf:Landroid/widget/LinearLayout$LayoutParams;

.field sg:Landroid/view/View$OnClickListener;

.field sh:I

.field textView_count:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090246
    .end annotation
.end field

.field textView_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090245
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->sh:I

    const v0, 0x7f0b00a3

    .line 47
    invoke-static {p1, v0, p0}, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 43
    iput p2, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->sh:I

    const p2, 0x7f0b00a3

    .line 53
    invoke-static {p1, p2, p0}, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 43
    iput p2, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->sh:I

    const p2, 0x7f0b00a3

    .line 59
    invoke-static {p1, p2, p0}, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
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
            "Lcom/picacomic/fregata/objects/AnnouncementObject;",
            ">;I",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->sh:I

    const v1, 0x7f0b00a3

    .line 78
    invoke-static {p1, v1, p0}, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 81
    iput-object p1, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->context:Landroid/content/Context;

    .line 82
    iput-object p4, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->sg:Landroid/view/View$OnClickListener;

    .line 83
    iput p3, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->sh:I

    .line 84
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v1, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->sf:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p5, :cond_0

    .line 88
    iget-object v1, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->textView_count:Landroid/widget/TextView;

    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 92
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge v0, p5, :cond_1

    add-int p5, v0, p3

    .line 94
    new-instance v1, Lcom/picacomic/fregata/holders/AnnouncementCellView;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-direct {v1, p1, v2, p4}, Lcom/picacomic/fregata/holders/AnnouncementCellView;-><init>(Landroid/content/Context;Lcom/picacomic/fregata/objects/AnnouncementObject;Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v2, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->sf:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/picacomic/fregata/holders/AnnouncementCellView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, p5}, Lcom/picacomic/fregata/holders/AnnouncementCellView;->setTag(Ljava/lang/Object;)V

    .line 97
    iget-object p5, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->linearLayout_content:Landroid/widget/LinearLayout;

    invoke-virtual {p5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/AnnouncementObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 105
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->linearLayout_content:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    return-void

    .line 108
    :cond_0
    iget v1, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->sh:I

    add-int/2addr v1, v0

    .line 109
    new-instance v2, Lcom/picacomic/fregata/holders/AnnouncementCellView;

    iget-object v3, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picacomic/fregata/objects/AnnouncementObject;

    iget-object v5, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->sg:Landroid/view/View$OnClickListener;

    invoke-direct {v2, v3, v4, v5}, Lcom/picacomic/fregata/holders/AnnouncementCellView;-><init>(Landroid/content/Context;Lcom/picacomic/fregata/objects/AnnouncementObject;Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v3, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->sf:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Lcom/picacomic/fregata/holders/AnnouncementCellView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/holders/AnnouncementCellView;->setTag(Ljava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->linearLayout_content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dL()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->linearLayout_content:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->linearLayout_content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public getTextView_count()Landroid/widget/TextView;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->textView_count:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextView_title()Landroid/widget/TextView;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->textView_title:Landroid/widget/TextView;

    return-object v0
.end method

.method public setTextView_count(Landroid/widget/TextView;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->textView_count:Landroid/widget/TextView;

    return-void
.end method

.method public setTextView_title(Landroid/widget/TextView;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->textView_title:Landroid/widget/TextView;

    return-void
.end method
