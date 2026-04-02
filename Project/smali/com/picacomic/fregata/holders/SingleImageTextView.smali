.class public Lcom/picacomic/fregata/holders/SingleImageTextView;
.super Landroid/widget/LinearLayout;
.source "SingleImageTextView.java"


# instance fields
.field imageView_image:Lcom/picacomic/fregata/utils/views/ComicThumbImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090175
    .end annotation
.end field

.field targetHeight:I

.field targetWidth:I

.field textView_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f1
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x50

    .line 30
    iput p1, p0, Lcom/picacomic/fregata/holders/SingleImageTextView;->targetWidth:I

    const/16 p1, 0x78

    .line 31
    iput p1, p0, Lcom/picacomic/fregata/holders/SingleImageTextView;->targetHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x50

    .line 30
    iput p1, p0, Lcom/picacomic/fregata/holders/SingleImageTextView;->targetWidth:I

    const/16 p1, 0x78

    .line 31
    iput p1, p0, Lcom/picacomic/fregata/holders/SingleImageTextView;->targetHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x50

    .line 30
    iput p1, p0, Lcom/picacomic/fregata/holders/SingleImageTextView;->targetWidth:I

    const/16 p1, 0x78

    .line 31
    iput p1, p0, Lcom/picacomic/fregata/holders/SingleImageTextView;->targetHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/picacomic/fregata/objects/ComicListObject;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x50

    .line 30
    iput v0, p0, Lcom/picacomic/fregata/holders/SingleImageTextView;->targetWidth:I

    const/16 v0, 0x78

    .line 31
    iput v0, p0, Lcom/picacomic/fregata/holders/SingleImageTextView;->targetHeight:I

    const v0, 0x7f0b00a0

    .line 74
    invoke-static {p1, v0, p0}, Lcom/picacomic/fregata/holders/SingleImageTextView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 76
    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ComicListObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget v0, p0, Lcom/picacomic/fregata/holders/SingleImageTextView;->targetWidth:I

    iget v1, p0, Lcom/picacomic/fregata/holders/SingleImageTextView;->targetHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/holders/SingleImageTextView;->imageView_image:Lcom/picacomic/fregata/utils/views/ComicThumbImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 77
    iget-object p1, p0, Lcom/picacomic/fregata/holders/SingleImageTextView;->textView_title:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ComicListObject;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0, p3}, Lcom/picacomic/fregata/holders/SingleImageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
