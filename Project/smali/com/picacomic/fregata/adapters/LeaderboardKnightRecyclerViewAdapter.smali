.class public Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LeaderboardKnightRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/LeaderboardKnightObject;",
            ">;"
        }
    .end annotation
.end field

.field private jb:Lcom/picacomic/fregata/a/k;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/LeaderboardKnightObject;",
            ">;",
            "Lcom/picacomic/fregata/a/k;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 35
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    .line 37
    iput-object p3, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;I)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;

    invoke-virtual {p1, v0, p2}, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->a(Lcom/picacomic/fregata/objects/LeaderboardKnightObject;I)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    if-ne p1, v1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public i(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;
    .locals 4

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 50
    new-instance p2, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0099

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, v1, p1, v0}, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

    return-object p2

    .line 48
    :pswitch_0
    new-instance p2, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0098

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, v1, p1, v0}, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

    return-object p2

    .line 46
    :pswitch_1
    new-instance p2, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0097

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, v1, p1, v0}, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

    return-object p2

    .line 44
    :pswitch_2
    new-instance p2, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0096

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, v1, p1, v0}, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->a(Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->i(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;

    move-result-object p1

    return-object p1
.end method
