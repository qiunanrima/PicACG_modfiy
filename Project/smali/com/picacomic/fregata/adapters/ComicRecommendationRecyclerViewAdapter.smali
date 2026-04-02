.class public Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ComicRecommendationRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ComicRecommendationRecyclerViewAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicListObject;",
            ">;"
        }
    .end annotation
.end field

.field private jq:Lcom/picacomic/fregata/a/b;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field targetHeight:I

.field targetWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicListObject;",
            ">;",
            "Lcom/picacomic/fregata/a/b;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0x50

    .line 42
    iput v0, p0, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->targetWidth:I

    const/16 v0, 0x78

    .line 43
    iput v0, p0, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->targetHeight:I

    .line 52
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 54
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    .line 55
    iput-object p3, p0, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->jq:Lcom/picacomic/fregata/a/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;I)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;->b(Lcom/picacomic/fregata/objects/ComicListObject;)V

    :cond_0
    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;
    .locals 4

    .line 70
    new-instance p2, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0088

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->jq:Lcom/picacomic/fregata/a/b;

    invoke-direct {p2, v0, p1, v1}, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/b;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->a(Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->e(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/ComicRecommendationViewHolder;

    move-result-object p1

    return-object p1
.end method
