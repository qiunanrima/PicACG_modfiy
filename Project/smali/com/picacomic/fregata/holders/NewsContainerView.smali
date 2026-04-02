.class public Lcom/picacomic/fregata/holders/NewsContainerView;
.super Landroid/widget/LinearLayout;
.source "NewsContainerView.java"


# instance fields
.field imageView_icon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09016b
    .end annotation
.end field

.field imageView_viewMore:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09016c
    .end annotation
.end field

.field linearLayout_content:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901b4
    .end annotation
.end field

.field textView_count:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c4
    .end annotation
.end field

.field textView_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c3
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b00ae

    .line 42
    invoke-static {p1, v0, p0}, Lcom/picacomic/fregata/holders/NewsContainerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0b00ae

    .line 48
    invoke-static {p1, p2, p0}, Lcom/picacomic/fregata/holders/NewsContainerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0b00ae

    .line 54
    invoke-static {p1, p2, p0}, Lcom/picacomic/fregata/holders/NewsContainerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public getTextView_count()Landroid/widget/TextView;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/picacomic/fregata/holders/NewsContainerView;->textView_count:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextView_title()Landroid/widget/TextView;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/picacomic/fregata/holders/NewsContainerView;->textView_title:Landroid/widget/TextView;

    return-object v0
.end method

.method public setTextView_count(Landroid/widget/TextView;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/picacomic/fregata/holders/NewsContainerView;->textView_count:Landroid/widget/TextView;

    return-void
.end method

.method public setTextView_title(Landroid/widget/TextView;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/picacomic/fregata/holders/NewsContainerView;->textView_title:Landroid/widget/TextView;

    return-void
.end method
