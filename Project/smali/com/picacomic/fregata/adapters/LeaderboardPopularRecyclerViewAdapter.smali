.class public Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LeaderboardPopularRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LeaderboardPopularRecyclerViewAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field jM:Ljava/lang/String;

.field private ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/LeaderboardComicListObject;",
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
            "Lcom/picacomic/fregata/objects/LeaderboardComicListObject;",
            ">;",
            "Lcom/picacomic/fregata/a/k;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 39
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    .line 40
    iput-object p3, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    const-string p1, "H24"

    .line 41
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->jM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public H(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->jM:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;I)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->jM:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, v1}, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->a(Lcom/picacomic/fregata/objects/LeaderboardComicListObject;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

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

.method public j(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;
    .locals 4

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 54
    new-instance p2, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b009d

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, v1, p1, v0}, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

    return-object p2

    .line 52
    :pswitch_0
    new-instance p2, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b009c

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, v1, p1, v0}, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

    return-object p2

    .line 50
    :pswitch_1
    new-instance p2, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b009b

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, v1, p1, v0}, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

    return-object p2

    .line 48
    :pswitch_2
    new-instance p2, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b009a

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, v1, p1, v0}, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

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

    .line 19
    check-cast p1, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->a(Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->j(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;

    move-result-object p1

    return-object p1
.end method
