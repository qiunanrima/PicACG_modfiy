.class public Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LeaderboardKnightViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "LeaderboardKnightViewHolder"


# instance fields
.field context:Landroid/content/Context;

.field public imageView_avatar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090163
    .end annotation
.end field

.field public imageView_characterIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090165
    .end annotation
.end field

.field public imageView_order:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090164
    .end annotation
.end field

.field je:Lcom/picacomic/fregata/a/k;

.field public textView_comic:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b5
    .end annotation
.end field

.field public textView_level:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b6
    .end annotation
.end field

.field public textView_name:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b7
    .end annotation
.end field

.field public textView_order:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b8
    .end annotation
.end field

.field public textView_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V
    .locals 0

    .line 53
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 54
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 55
    iput-object p1, p0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->context:Landroid/content/Context;

    .line 56
    iput-object p3, p0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->je:Lcom/picacomic/fregata/a/k;

    .line 58
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/objects/LeaderboardKnightObject;I)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->textView_order:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p2, p0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->textView_level:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p2, p0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->textView_name:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p2, p0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->textView_comic:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->getComicsUploaded()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->getCharacter()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->getCharacter()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 74
    iget-object p2, p0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p2

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->getCharacter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object v0, p0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->imageView_characterIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 75
    iget-object p2, p0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->imageView_characterIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p2, p0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->imageView_characterIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    :goto_0
    iget-object p2, p0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p2

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const p2, 0x7f080133

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->imageView_avatar:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->je:Lcom/picacomic/fregata/a/k;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/k;->C(I)V

    .line 64
    sget-object p1, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick--> position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
