.class public Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EpisodeRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/picacomic/fregata/holders/EpisodeViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "EpisodeRecyclerViewAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicEpisodeObject;",
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
            "Lcom/picacomic/fregata/objects/ComicEpisodeObject;",
            ">;",
            "Lcom/picacomic/fregata/a/k;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 30
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    .line 31
    iput-object p3, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/holders/EpisodeViewHolder;I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 54
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/holders/EpisodeViewHolder;->a(Lcom/picacomic/fregata/objects/ComicEpisodeObject;)V

    :cond_0
    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/EpisodeViewHolder;
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    const v0, 0x7f0b0090

    packed-switch p2, :pswitch_data_0

    .line 46
    new-instance p2, Lcom/picacomic/fregata/holders/EpisodeViewHolder;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, v2, p1, v0}, Lcom/picacomic/fregata/holders/EpisodeViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

    return-object p2

    .line 42
    :pswitch_0
    new-instance p2, Lcom/picacomic/fregata/holders/EpisodeViewHolder;

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0091

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, v0, p1, v1}, Lcom/picacomic/fregata/holders/EpisodeViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

    return-object p2

    .line 40
    :pswitch_1
    new-instance p2, Lcom/picacomic/fregata/holders/EpisodeViewHolder;

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0092

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, v0, p1, v1}, Lcom/picacomic/fregata/holders/EpisodeViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

    return-object p2

    .line 44
    :pswitch_2
    new-instance p2, Lcom/picacomic/fregata/holders/EpisodeViewHolder;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, v2, p1, v0}, Lcom/picacomic/fregata/holders/EpisodeViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

    return-object p2

    .line 38
    :cond_0
    new-instance p2, Lcom/picacomic/fregata/holders/EpisodeViewHolder;

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0093

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, v0, p1, v1}, Lcom/picacomic/fregata/holders/EpisodeViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    return p1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getStatus()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/picacomic/fregata/holders/EpisodeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->a(Lcom/picacomic/fregata/holders/EpisodeViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->f(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/EpisodeViewHolder;

    move-result-object p1

    return-object p1
.end method
