.class public Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChatroomRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ChatroomRecyclerViewAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ChatBaseObject;",
            ">;"
        }
    .end annotation
.end field

.field public jk:Z

.field public jl:Z

.field public jm:Z

.field private jn:Lcom/picacomic/fregata/a/a;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ChatBaseObject;",
            ">;",
            "Lcom/picacomic/fregata/a/a;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 67
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    .line 68
    iput-object p3, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jn:Lcom/picacomic/fregata/a/a;

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jk:Z

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jm:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/TextView;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, ""

    .line 427
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 429
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 430
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    if-ge v2, v3, :cond_1

    .line 433
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v5, 0xd83c

    if-eq v3, v5, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v5, 0xd83d

    if-ne v3, v5, :cond_1

    .line 434
    :cond_0
    sget-object v3, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found emoji at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x2

    .line 435
    invoke-virtual {p3, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 436
    new-instance v5, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 437
    array-length v6, p2

    rem-int/2addr v1, v6

    aget-object v1, p2, v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 438
    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->x(I)I

    move-result v1

    .line 439
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-interface {v5, v6, v0, v1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 440
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    move v1, v2

    goto :goto_1

    .line 445
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    .line 448
    array-length v3, p2

    rem-int v3, v1, v3

    aget-object v3, p2, v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 449
    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->x(I)I

    move-result v3

    .line 450
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v2, v5, v0, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 451
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 398
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/objects/ChatSystemObject;

    if-eqz v0, :cond_0

    const/16 p1, 0xc

    return p1

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getType()I

    move-result p1

    return p1

    .line 403
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    .line 405
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public n(Z)V
    .locals 0

    .line 410
    iput-boolean p1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jk:Z

    return-void
.end method

.method public o(Z)V
    .locals 0

    .line 419
    iput-boolean p1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jl:Z

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 131
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAvatar()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 135
    :goto_0
    iget-boolean v2, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jm:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/picacomic/fregata/objects/ChatSystemObject;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    .line 136
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/picacomic/fregata/objects/ChatMessageObject;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAvatar()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAvatar()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 147
    :cond_2
    instance-of v1, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    const v2, 0x7f060038

    const v3, 0x7f060061

    const v4, 0x7f080155

    const v5, 0x7f080133

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v1, :cond_d

    .line 149
    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    .line 153
    invoke-virtual {p0, p2}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->getItemViewType(I)I

    move-result v8

    const/16 v9, 0x9

    if-eq v8, v9, :cond_4

    invoke-virtual {p0, p2}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->getItemViewType(I)I

    move-result p2

    const/16 v8, 0xa

    if-ne p2, v8, :cond_3

    goto :goto_1

    .line 156
    :cond_3
    move-object p2, p1

    check-cast p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object p2, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->container:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    const v9, 0x7f06009e

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 154
    :cond_4
    :goto_1
    move-object p2, p1

    check-cast p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object p2, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->container:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    const v9, 0x7f060063

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 164
    :goto_2
    iget-object p2, v1, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    if-eqz p2, :cond_5

    iget-object p2, v1, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 165
    move-object p2, p1

    check-cast p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object v4, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v4, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    iget-object v8, v1, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object p2, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v4, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_3

    .line 168
    :cond_5
    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getCharacter()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getCharacter()Ljava/lang/String;

    move-result-object p2

    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 169
    move-object p2, p1

    check-cast p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object v4, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v4, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getCharacter()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object p2, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v4, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_3

    .line 171
    :cond_6
    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->isVerified()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 172
    move-object p2, p1

    check-cast p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object v8, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object p2, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 175
    :cond_7
    move-object p2, p1

    check-cast p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object p2, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :goto_3
    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getActivationDate()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getActivationDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_8

    .line 184
    move-object p2, p1

    check-cast p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object p2, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p2, v2}, Lde/hdodenhof/circleimageview/CircleImageView;->setBorderColorResource(I)V

    goto :goto_4

    .line 186
    :cond_8
    move-object p2, p1

    check-cast p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object p2, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p2, v3}, Lde/hdodenhof/circleimageview/CircleImageView;->setBorderColorResource(I)V

    .line 188
    :goto_4
    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAt()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAt()Ljava/lang/String;

    move-result-object p2

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 189
    move-object p2, p1

    check-cast p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object v2, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_at:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAt()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u55f6\u5494_"

    const-string v4, " @"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 191
    iget-object p2, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_at:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 193
    :cond_9
    move-object p2, p1

    check-cast p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object p2, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_at:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    :goto_5
    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getReplyName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getReplyName()Ljava/lang/String;

    move-result-object p2

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 197
    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getReply()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getReply()Ljava/lang/String;

    move-result-object p2

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 199
    move-object p2, p1

    check-cast p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object v2, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->linearLayout_replyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v2, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_replyName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getReplyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object p2, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_replyMessage:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getReply()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 203
    :cond_a
    move-object p2, p1

    check-cast p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object p2, p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->linearLayout_replyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    :goto_6
    check-cast p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object p2, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_level:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lv."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object p2, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_name:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object p2, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getEventColors()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getEventColors()[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-lez p2, :cond_b

    .line 212
    iget-object p2, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_message:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getEventColors()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v2, v3}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->a(Landroid/widget/TextView;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 214
    :cond_b
    iget-object p2, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_message:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_7
    iget-boolean p2, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jk:Z

    if-eqz p2, :cond_c

    .line 217
    iget-object p2, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_timestamp:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object p2, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_timestamp:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hh:mm:ss"

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 221
    :cond_c
    iget-object p2, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_timestamp:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    :goto_8
    iget-object p2, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object p1, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_16

    .line 227
    :cond_d
    instance-of v1, p1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;

    const/4 v8, 0x1

    if-eqz v1, :cond_15

    .line 229
    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/ChatMessageObject;

    .line 235
    iget-object v1, p2, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p2, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 236
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;

    iget-object v4, v1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v4, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    iget-object v9, p2, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_9

    .line 239
    :cond_e
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getCharacter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getCharacter()Ljava/lang/String;

    move-result-object v1

    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 240
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;

    iget-object v4, v1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object v4, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getCharacter()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_9

    .line 242
    :cond_f
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->isVerified()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 243
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;

    iget-object v9, v1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 246
    :cond_10
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    :goto_9
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getActivationDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getActivationDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    .line 250
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v1, v2}, Lde/hdodenhof/circleimageview/CircleImageView;->setBorderColorResource(I)V

    goto :goto_a

    .line 252
    :cond_11
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v1, v3}, Lde/hdodenhof/circleimageview/CircleImageView;->setBorderColorResource(I)V

    .line 255
    :goto_a
    check-cast p1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;

    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->textView_level:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lv."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->textView_name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->textView_title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-boolean v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jk:Z

    if-eqz v1, :cond_12

    .line 260
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->textView_timestamp:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->textView_timestamp:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "hh:mm:ss"

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v4, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 263
    :cond_12
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->textView_timestamp:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    :goto_b
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getImage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_14

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getImage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_14

    .line 266
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 267
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getImage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 268
    array-length v1, p2

    invoke-static {p2, v7, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 269
    iget-boolean v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jl:Z

    if-eqz v1, :cond_13

    .line 270
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->imageView_image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/16 v2, 0x32

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_c

    .line 272
    :cond_13
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->imageView_image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 274
    :goto_c
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->imageView_image:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_d

    .line 276
    :cond_14
    iget-object p2, p1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->imageView_image:Landroid/widget/ImageView;

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    :goto_d
    iget-object p2, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object p1, p1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_16

    .line 284
    :cond_15
    instance-of v1, p1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;

    if-eqz v1, :cond_1b

    .line 285
    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/ChatMessageObject;

    .line 292
    iget-object v1, p2, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p2, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 293
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;

    iget-object v4, v1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v4, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    iget-object v8, p2, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_e

    .line 296
    :cond_16
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getCharacter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getCharacter()Ljava/lang/String;

    move-result-object v1

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 297
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;

    iget-object v4, v1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v4, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getCharacter()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_e

    .line 299
    :cond_17
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->isVerified()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 300
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;

    iget-object v8, v1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 303
    :cond_18
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    :goto_e
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getActivationDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getActivationDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_19

    .line 307
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v1, v2}, Lde/hdodenhof/circleimageview/CircleImageView;->setBorderColorResource(I)V

    goto :goto_f

    .line 309
    :cond_19
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v1, v3}, Lde/hdodenhof/circleimageview/CircleImageView;->setBorderColorResource(I)V

    .line 311
    :goto_f
    check-cast p1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;

    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->textView_level:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lv."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->textView_name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->textView_title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-boolean v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jk:Z

    if-eqz v1, :cond_1a

    .line 315
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->textView_timestamp:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->textView_timestamp:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getPlatform()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "hh:mm:ss"

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 319
    :cond_1a
    iget-object p2, p1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->textView_timestamp:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :goto_10
    iget-object p2, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object p1, p1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_16

    .line 325
    :cond_1b
    instance-of v1, p1, Lcom/picacomic/fregata/holders/ChatroomConnectionViewHolder;

    if-eqz v1, :cond_1c

    .line 326
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/ChatMessageObject;

    .line 327
    check-cast p1, Lcom/picacomic/fregata/holders/ChatroomConnectionViewHolder;

    iget-object p1, p1, Lcom/picacomic/fregata/holders/ChatroomConnectionViewHolder;->textView_connection:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 330
    :cond_1c
    instance-of v1, p1, Lcom/picacomic/fregata/holders/ChatroomSystemNotificationViewHolder;

    if-eqz v1, :cond_1d

    .line 331
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/ChatSystemObject;

    .line 332
    check-cast p1, Lcom/picacomic/fregata/holders/ChatroomSystemNotificationViewHolder;

    iget-object p1, p1, Lcom/picacomic/fregata/holders/ChatroomSystemNotificationViewHolder;->textView_notification:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatSystemObject;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 336
    :cond_1d
    instance-of v1, p1, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;

    if-eqz v1, :cond_1f

    .line 337
    iget-boolean p2, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jk:Z

    if-eqz p2, :cond_1e

    .line 338
    check-cast p1, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;

    iget-object p2, p1, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;->textView_timestamp:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object p1, p1, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;->textView_timestamp:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "hh:mm:ss"

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 341
    :cond_1e
    check-cast p1, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;

    iget-object p1, p1, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;->textView_timestamp:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_16

    .line 344
    :cond_1f
    instance-of v1, p1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;

    if-eqz v1, :cond_27

    .line 345
    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/ChatMessageObject;

    .line 347
    iget-object v1, p2, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v1, p2, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 348
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;

    iget-object v4, v1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    iget-object v4, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    iget-object v9, p2, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_11

    .line 351
    :cond_20
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getCharacter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getCharacter()Ljava/lang/String;

    move-result-object v1

    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 352
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;

    iget-object v4, v1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    iget-object v4, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getCharacter()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_11

    .line 354
    :cond_21
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->isVerified()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 355
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;

    iget-object v9, v1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11

    .line 358
    :cond_22
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    :goto_11
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getActivationDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getActivationDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_23

    .line 362
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v1, v2}, Lde/hdodenhof/circleimageview/CircleImageView;->setBorderColorResource(I)V

    goto :goto_12

    .line 364
    :cond_23
    move-object v1, p1

    check-cast v1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;

    iget-object v1, v1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v1, v3}, Lde/hdodenhof/circleimageview/CircleImageView;->setBorderColorResource(I)V

    .line 366
    :goto_12
    check-cast p1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;

    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->textView_level:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lv."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->textView_name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->textView_title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-boolean v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jk:Z

    if-eqz v1, :cond_24

    .line 371
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->textView_timestamp:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->textView_timestamp:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "hh:mm:ss"

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v4, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 374
    :cond_24
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->textView_timestamp:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    :goto_13
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getImage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_25

    .line 377
    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->imageView_image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 378
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->imageView_image:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    .line 380
    :cond_25
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->imageView_image:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    :goto_14
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_26

    .line 384
    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->textView_message:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object p2, p1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->textView_message:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15

    .line 387
    :cond_26
    iget-object p2, p1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->textView_message:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    :goto_15
    iget-object p2, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object p1, p1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :cond_27
    :goto_16
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    const v1, 0x7f0b0081

    const v2, 0x7f0b0082

    packed-switch p2, :pswitch_data_0

    .line 121
    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jn:Lcom/picacomic/fregata/a/a;

    invoke-direct {p2, p1, v0}, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V

    return-object p2

    .line 112
    :pswitch_0
    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomSystemNotificationViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0083

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/picacomic/fregata/holders/ChatroomSystemNotificationViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 118
    :pswitch_1
    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0077

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jn:Lcom/picacomic/fregata/a/a;

    invoke-direct {p2, p1, v0}, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V

    return-object p2

    .line 91
    :pswitch_2
    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jn:Lcom/picacomic/fregata/a/a;

    invoke-direct {p2, p1, v0}, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V

    return-object p2

    .line 88
    :pswitch_3
    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jn:Lcom/picacomic/fregata/a/a;

    invoke-direct {p2, p1, v0}, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V

    return-object p2

    .line 115
    :pswitch_4
    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b007a

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jn:Lcom/picacomic/fregata/a/a;

    invoke-direct {p2, p1, v0}, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V

    return-object p2

    .line 109
    :pswitch_5
    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomConnectionViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b007b

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/picacomic/fregata/holders/ChatroomConnectionViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 106
    :pswitch_6
    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomConnectionViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b007c

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/picacomic/fregata/holders/ChatroomConnectionViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 103
    :pswitch_7
    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0078

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jn:Lcom/picacomic/fregata/a/a;

    invoke-direct {p2, p1, v0}, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V

    return-object p2

    .line 97
    :pswitch_8
    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b007e

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jn:Lcom/picacomic/fregata/a/a;

    invoke-direct {p2, p1, v0}, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V

    return-object p2

    .line 85
    :pswitch_9
    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jn:Lcom/picacomic/fregata/a/a;

    invoke-direct {p2, p1, v0}, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V

    return-object p2

    .line 100
    :pswitch_a
    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0079

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jn:Lcom/picacomic/fregata/a/a;

    invoke-direct {p2, p1, v0}, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V

    return-object p2

    .line 94
    :pswitch_b
    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b007f

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jn:Lcom/picacomic/fregata/a/a;

    invoke-direct {p2, p1, v0}, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V

    return-object p2

    .line 82
    :pswitch_c
    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jn:Lcom/picacomic/fregata/a/a;

    invoke-direct {p2, p1, v0}, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p(Z)V
    .locals 0

    .line 423
    iput-boolean p1, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->jm:Z

    return-void
.end method

.method public x(I)I
    .locals 8

    .line 459
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->af(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xff

    rsub-int v2, v0, 0xff

    .line 462
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 463
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 464
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 465
    iget-object v6, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/picacomic/fregata/utils/e;->al(Landroid/content/Context;)I

    move-result v6

    if-nez v6, :cond_1

    if-le v3, v2, :cond_0

    if-le v4, v2, :cond_0

    if-le v5, v2, :cond_0

    sub-int/2addr v3, v2

    sub-int/2addr v4, v2

    sub-int/2addr v5, v2

    .line 471
    sget-object p1, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change color = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1

    :cond_0
    return p1

    .line 476
    :cond_1
    iget-object v6, p0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/picacomic/fregata/utils/e;->al(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    if-ge v3, v0, :cond_2

    if-ge v4, v0, :cond_2

    if-ge v5, v0, :cond_2

    add-int/2addr v3, v2

    add-int/2addr v4, v2

    add-int/2addr v5, v2

    .line 481
    sget-object p1, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change color = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1

    :cond_2
    return p1
.end method
