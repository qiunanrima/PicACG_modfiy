.class public Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CommentRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CommentRecyclerViewAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private jA:Lcom/picacomic/fregata/a/e;

.field private jB:I

.field private jC:Z

.field private jD:I

.field private jE:I

.field private jF:I

.field private jG:Z

.field private jH:Lcom/picacomic/fregata/objects/UserBasicObject;

.field private jz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CommentWithReplyObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/picacomic/fregata/objects/UserBasicObject;Ljava/lang/String;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/picacomic/fregata/objects/UserBasicObject;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CommentWithReplyObject;",
            ">;",
            "Lcom/picacomic/fregata/a/e;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 56
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jH:Lcom/picacomic/fregata/objects/UserBasicObject;

    .line 57
    iput-object p4, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    .line 58
    iput-object p5, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jA:Lcom/picacomic/fregata/a/e;

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jB:I

    .line 60
    iput p1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jF:I

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jC:Z

    const/4 p2, 0x0

    .line 63
    iput-boolean p2, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jG:Z

    .line 81
    iput p2, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jE:I

    if-eqz p4, :cond_0

    .line 84
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jD:I

    goto :goto_0

    .line 86
    :cond_0
    iput p1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jD:I

    :goto_0
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 393
    iput p1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jF:I

    .line 394
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public B(I)V
    .locals 0

    .line 399
    iput p1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jE:I

    return-void
.end method

.method public a(ILjava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CommentObject;",
            ">;Z)V"
        }
    .end annotation

    .line 370
    iput-boolean p3, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jC:Z

    .line 372
    iget p2, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jB:I

    .line 373
    iput p1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jB:I

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 377
    invoke-virtual {p0, p2}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->notifyItemChanged(I)V

    .line 380
    :cond_0
    iget p1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jB:I

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jH:Lcom/picacomic/fregata/objects/UserBasicObject;

    if-nez v0, :cond_2

    .line 112
    iget v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jE:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x2

    return p1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isTop()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 127
    instance-of v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;

    const v1, 0x7f0800dc

    const v2, 0x7f0800dd

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_b

    .line 128
    check-cast p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;

    .line 130
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_18

    .line 131
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_content:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_likeCount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getLikesCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_replyCount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getChildsCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_createdDate:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCreatedAt()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/picacomic/fregata/utils/g;->B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jH:Lcom/picacomic/fregata/objects/UserBasicObject;

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jH:Lcom/picacomic/fregata/objects/UserBasicObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserBasicObject;->getCharacter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jH:Lcom/picacomic/fregata/objects/UserBasicObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserBasicObject;->getCharacter()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->imageView_userVerified:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v5, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jH:Lcom/picacomic/fregata/objects/UserBasicObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserBasicObject;->getCharacter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v5, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->imageView_userVerified:Landroid/widget/ImageView;

    .line 146
    invoke-virtual {v0, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->imageView_userVerified:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :goto_0
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_username:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jH:Lcom/picacomic/fregata/objects/UserBasicObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/UserBasicObject;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_title:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_level:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jH:Lcom/picacomic/fregata/objects/UserBasicObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/UserBasicObject;->getLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getComicId()Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;

    move-result-object v0

    const v5, 0x7f0f0127

    const v6, 0x7f0f0126

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_viewContentPage:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getComicId()Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 158
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_noReply:Landroid/widget/TextView;

    const v5, 0x7f0f0124

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getGameId()Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_viewContentPage:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getGameId()Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 164
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_noReply:Landroid/widget/TextView;

    const v5, 0x7f0f0125

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 167
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v5, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jH:Lcom/picacomic/fregata/objects/UserBasicObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserBasicObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v5

    invoke-static {v5}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v5, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->imageView_userThumb:Landroid/widget/ImageView;

    .line 168
    invoke-virtual {v0, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isLiked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->imageView_likeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 174
    :cond_4
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->imageView_likeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    :goto_2
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_floor:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jD:I

    sub-int/2addr v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->linearLayout_reply:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 178
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->button_viewMore:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 179
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_noReply:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-boolean v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jG:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isHide()Z

    move-result v0

    if-nez v0, :cond_5

    .line 181
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->button_hide:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 183
    :cond_5
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->button_hide:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 186
    :goto_3
    iget v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jB:I

    if-ne p2, v0, :cond_18

    .line 187
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getChildsCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 188
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->textView_noReply:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    :cond_6
    iget-boolean v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jC:Z

    if-eqz v0, :cond_7

    .line 190
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->button_viewMore:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    :cond_7
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 192
    :goto_4
    iget-object v5, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_18

    .line 195
    new-instance v5, Lcom/picacomic/fregata/holders/CommentReplyView;

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jA:Lcom/picacomic/fregata/a/e;

    invoke-direct {v5, v6, v7, p2, v0}, Lcom/picacomic/fregata/holders/CommentReplyView;-><init>(Landroid/content/Context;Lcom/picacomic/fregata/a/e;II)V

    .line 197
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_username:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_title:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/UserProfileObject;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_content:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentObject;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_floor:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getChildsCount()I

    move-result v8

    sub-int/2addr v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_level:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_likeCount:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentObject;->getLikesCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_createdDate:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentObject;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/picacomic/fregata/utils/g;->B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 211
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_userVerified:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v6

    iget-object v7, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    iget-object v7, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_userVerified:Landroid/widget/ImageView;

    .line 213
    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_5

    .line 215
    :cond_8
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_userVerified:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    :goto_5
    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentObject;->isLiked()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 219
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_likeIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 221
    :cond_9
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_likeIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    :goto_6
    iget-boolean v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jG:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentObject;->isHide()Z

    move-result v6

    if-nez v6, :cond_a

    .line 225
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->button_hide:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7

    .line 227
    :cond_a
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->button_hide:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    :goto_7
    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v6

    iget-object v7, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v7

    invoke-static {v7}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    iget-object v7, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_userThumb:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 232
    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 233
    iget-object v6, p1, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;->linearLayout_reply:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 240
    :cond_b
    instance-of v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;

    if-eqz v0, :cond_17

    .line 241
    check-cast p1, Lcom/picacomic/fregata/holders/CommentViewHolder;

    .line 243
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_18

    .line 244
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_content:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_likeCount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getLikesCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_replyCount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getChildsCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_createdDate:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCreatedAt()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/picacomic/fregata/utils/g;->B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 258
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 259
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_userVerified:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v5, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v5, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_userVerified:Landroid/widget/ImageView;

    .line 261
    invoke-virtual {v0, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_8

    .line 263
    :cond_c
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_userVerified:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    :goto_8
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_username:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_title:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/UserProfileObject;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_level:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v5, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v5

    invoke-static {v5}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v5, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_userThumb:Landroid/widget/ImageView;

    .line 270
    invoke-virtual {v0, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 273
    :cond_d
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isLiked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 274
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_likeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 276
    :cond_e
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->imageView_likeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 278
    :goto_9
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_floor:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jD:I

    sub-int/2addr v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->linearLayout_reply:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 280
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_viewMore:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_noReply:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-boolean v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jG:Z

    if-eqz v0, :cond_11

    .line 284
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_tools:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 286
    iget v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jF:I

    if-ne p2, v0, :cond_10

    .line 288
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->linearLayout_tools:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    iget-boolean v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jG:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isHide()Z

    move-result v0

    if-nez v0, :cond_f

    .line 291
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_hide:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_a

    .line 293
    :cond_f
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_hide:Landroid/widget/Button;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_a

    .line 295
    :cond_10
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->linearLayout_tools:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    :cond_11
    :goto_a
    iget v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jB:I

    if-ne p2, v0, :cond_18

    .line 303
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getChildsCount()I

    move-result v0

    if-nez v0, :cond_12

    .line 304
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->textView_noReply:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    :cond_12
    iget-boolean v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jC:Z

    if-eqz v0, :cond_13

    .line 306
    iget-object v0, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->button_viewMore:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 307
    :cond_13
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 308
    :goto_b
    iget-object v5, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_18

    .line 311
    new-instance v5, Lcom/picacomic/fregata/holders/CommentReplyView;

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jA:Lcom/picacomic/fregata/a/e;

    invoke-direct {v5, v6, v7, p2, v0}, Lcom/picacomic/fregata/holders/CommentReplyView;-><init>(Landroid/content/Context;Lcom/picacomic/fregata/a/e;II)V

    .line 313
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_username:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_title:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/UserProfileObject;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_content:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentObject;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_floor:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getChildsCount()I

    move-result v8

    sub-int/2addr v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_level:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_likeCount:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentObject;->getLikesCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->textView_createdDate:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/CommentObject;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/picacomic/fregata/utils/g;->B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 326
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_userVerified:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v6

    iget-object v7, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    iget-object v7, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_userVerified:Landroid/widget/ImageView;

    .line 328
    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_c

    .line 330
    :cond_14
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_userVerified:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    :goto_c
    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentObject;->isLiked()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 334
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_likeIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 336
    :cond_15
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_likeIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    :goto_d
    iget-boolean v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jG:Z

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/CommentObject;->isHide()Z

    move-result v6

    if-nez v6, :cond_16

    .line 340
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->button_hide:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_e

    .line 342
    :cond_16
    iget-object v6, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->button_hide:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 346
    :goto_e
    iget-object v6, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v6

    iget-object v7, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v7

    invoke-static {v7}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    iget-object v7, v5, Lcom/picacomic/fregata/holders/CommentReplyView;->imageView_userThumb:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 347
    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 348
    iget-object v6, p1, Lcom/picacomic/fregata/holders/CommentViewHolder;->linearLayout_reply:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    .line 354
    :cond_17
    check-cast p1, Lcom/picacomic/fregata/holders/CommentTopReplacementViewHolder;

    .line 356
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_18

    .line 357
    iget-object p1, p1, Lcom/picacomic/fregata/holders/CommentTopReplacementViewHolder;->textView_floor:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jD:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 104
    new-instance p2, Lcom/picacomic/fregata/holders/CommentViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b008b

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jA:Lcom/picacomic/fregata/a/e;

    invoke-direct {p2, p1, v0}, Lcom/picacomic/fregata/holders/CommentViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/e;)V

    return-object p2

    .line 102
    :pswitch_0
    new-instance p2, Lcom/picacomic/fregata/holders/CommentTopReplacementViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b008e

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jA:Lcom/picacomic/fregata/a/e;

    invoke-direct {p2, p1, v0}, Lcom/picacomic/fregata/holders/CommentTopReplacementViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/e;)V

    return-object p2

    .line 100
    :pswitch_1
    new-instance p2, Lcom/picacomic/fregata/holders/CommentViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b008d

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jA:Lcom/picacomic/fregata/a/e;

    invoke-direct {p2, p1, v0}, Lcom/picacomic/fregata/holders/CommentViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/e;)V

    return-object p2

    .line 98
    :pswitch_2
    new-instance p2, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jA:Lcom/picacomic/fregata/a/e;

    invoke-direct {p2, p1, v0}, Lcom/picacomic/fregata/holders/CommentProfileViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/e;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public z(I)V
    .locals 0

    .line 388
    iput p1, p0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->jD:I

    return-void
.end method
