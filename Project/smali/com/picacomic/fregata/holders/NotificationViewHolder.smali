.class public Lcom/picacomic/fregata/holders/NotificationViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NotificationViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "NotificationViewHolder"


# instance fields
.field context:Landroid/content/Context;

.field imageView_avatar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090140
    .end annotation
.end field

.field imageView_character:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090142
    .end annotation
.end field

.field imageView_image:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09016d
    .end annotation
.end field

.field jN:Lcom/picacomic/fregata/a/h;

.field sV:Lcom/picacomic/fregata/objects/NotificationObject;

.field textView_content:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c5
    .end annotation
.end field

.field textView_timestamp:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/h;)V
    .locals 0

    .line 47
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    iput-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->context:Landroid/content/Context;

    .line 49
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 50
    iput-object p3, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->jN:Lcom/picacomic/fregata/a/h;

    .line 51
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->imageView_avatar:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->imageView_image:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->imageView_character:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/objects/NotificationObject;)V
    .locals 3

    .line 58
    iput-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->sV:Lcom/picacomic/fregata/objects/NotificationObject;

    .line 59
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->sV:Lcom/picacomic/fregata/objects/NotificationObject;

    if-eqz p1, :cond_3

    .line 62
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->sV:Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/NotificationObject;->getSender()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->sV:Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/NotificationObject;->getSender()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->sV:Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/NotificationObject;->getSender()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iget-object v2, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->sV:Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/NotificationObject;->getSender()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v2, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->imageView_character:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 65
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->imageView_character:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->imageView_character:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iget-object v2, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->sV:Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/NotificationObject;->getSender()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const v2, 0x7f080133

    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v2, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->imageView_avatar:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->sV:Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/NotificationObject;->getCover()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 74
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iget-object v1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->sV:Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/NotificationObject;->getCover()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->imageView_image:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 75
    sget-object p1, Lcom/picacomic/fregata/holders/NotificationViewHolder;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->sV:Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/NotificationObject;->getCover()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->imageView_image:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->imageView_image:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    :goto_1
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->textView_content:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->sV:Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/NotificationObject;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->textView_timestamp:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->sV:Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/NotificationObject;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/g;->B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->jN:Lcom/picacomic/fregata/a/h;

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->imageView_image:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 93
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->jN:Lcom/picacomic/fregata/a/h;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/NotificationViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/h;->Y(I)V

    goto :goto_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->imageView_avatar:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->imageView_character:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->jN:Lcom/picacomic/fregata/a/h;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/NotificationViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/h;->W(I)V

    goto :goto_1

    .line 97
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/holders/NotificationViewHolder;->jN:Lcom/picacomic/fregata/a/h;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/NotificationViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/h;->X(I)V

    :cond_3
    :goto_1
    return-void
.end method
