.class public Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PicaAppListRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/picacomic/fregata/holders/ChatroomListViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PicaAppListRecyclerViewAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/PicaAppObject;",
            ">;"
        }
    .end annotation
.end field

.field private jb:Lcom/picacomic/fregata/a/k;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/PicaAppObject;",
            ">;",
            "Lcom/picacomic/fregata/a/k;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 29
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    .line 30
    iput-object p3, p0, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/holders/ChatroomListViewHolder;I)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 41
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/PicaAppObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/PicaAppObject;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f080133

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p1, Lcom/picacomic/fregata/holders/ChatroomListViewHolder;->imageView_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 42
    iget-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomListViewHolder;->textView_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/PicaAppObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/PicaAppObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomListViewHolder;->textView_description:Landroid/widget/TextView;

    const v1, 0x7f0f01fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 44
    iget-object p1, p1, Lcom/picacomic/fregata/holders/ChatroomListViewHolder;->textView_description:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/PicaAppObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/PicaAppObject;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/ChatroomListViewHolder;
    .locals 4

    .line 35
    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomListViewHolder;

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0080

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, v0, p1, v1}, Lcom/picacomic/fregata/holders/ChatroomListViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/picacomic/fregata/holders/ChatroomListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->a(Lcom/picacomic/fregata/holders/ChatroomListViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/PicaAppListRecyclerViewAdapter;->d(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/ChatroomListViewHolder;

    move-result-object p1

    return-object p1
.end method
