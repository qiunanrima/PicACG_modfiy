.class public Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GameListRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/picacomic/fregata/holders/GameListViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GameListRecyclerViewAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/GameListObject;",
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
            "Lcom/picacomic/fregata/objects/GameListObject;",
            ">;",
            "Lcom/picacomic/fregata/a/k;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 30
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    .line 31
    iput-object p3, p0, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/holders/GameListViewHolder;I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 42
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/GameListObject;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/holders/GameListViewHolder;->a(Lcom/picacomic/fregata/objects/GameListObject;)V

    :cond_0
    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/GameListViewHolder;
    .locals 4

    .line 36
    new-instance p2, Lcom/picacomic/fregata/holders/GameListViewHolder;

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, v0, p1, v1}, Lcom/picacomic/fregata/holders/GameListViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/picacomic/fregata/holders/GameListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;->a(Lcom/picacomic/fregata/holders/GameListViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;->g(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/GameListViewHolder;

    move-result-object p1

    return-object p1
.end method
