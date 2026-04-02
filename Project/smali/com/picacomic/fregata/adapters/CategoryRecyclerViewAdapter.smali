.class public Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CategoryRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CategoryRecyclerViewAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private jb:Lcom/picacomic/fregata/a/k;

.field jg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/DefaultCategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field jh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field final ji:I

.field final jj:Lcom/squareup/picasso/Transformation;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final radius:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/DefaultCategoryObject;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CategoryObject;",
            ">;",
            "Lcom/picacomic/fregata/a/k;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0x28

    .line 40
    iput v0, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->radius:I

    const/4 v1, 0x0

    .line 41
    iput v1, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->ji:I

    .line 45
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 47
    iput-object p3, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jh:Ljava/util/ArrayList;

    .line 48
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jg:Ljava/util/ArrayList;

    .line 49
    iput-object p4, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    .line 52
    new-instance p1, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;

    invoke-direct {p1, v0, v1}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;-><init>(II)V

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jj:Lcom/squareup/picasso/Transformation;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jh:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jg:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jg:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 68
    instance-of v0, p1, Lcom/picacomic/fregata/holders/CategoryWebViewHolder;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Lcom/picacomic/fregata/holders/CategoryWebViewHolder;

    .line 70
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jg:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/DefaultCategoryObject;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/holders/CategoryWebViewHolder;->a(Lcom/picacomic/fregata/objects/DefaultCategoryObject;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0, p2}, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jg:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_3

    .line 84
    check-cast p1, Lcom/picacomic/fregata/holders/CategoryViewHolder;

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jg:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/DefaultCategoryObject;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/holders/CategoryViewHolder;->a(Lcom/picacomic/fregata/objects/DefaultCategoryObject;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 88
    iget-object v1, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jg:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jh:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jh:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p2, v0

    if-le v1, p2, :cond_3

    .line 100
    check-cast p1, Lcom/picacomic/fregata/holders/CategoryViewHolder;

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jh:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/CategoryObject;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/holders/CategoryViewHolder;->a(Lcom/picacomic/fregata/objects/CategoryObject;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 58
    new-instance p2, Lcom/picacomic/fregata/holders/CategoryWebViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/picacomic/fregata/holders/CategoryWebViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p2

    .line 60
    :cond_0
    new-instance p2, Lcom/picacomic/fregata/holders/CategoryViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0075

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, v1, p1, v0}, Lcom/picacomic/fregata/holders/CategoryViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

    return-object p2
.end method
