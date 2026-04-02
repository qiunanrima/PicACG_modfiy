.class public Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AnonymousChatRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AnonymousChatRecyclerViewAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/AnonymousChatDataObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/AnonymousChatDataObject;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 34
    iput-object p3, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    .line 35
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 66
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 51
    check-cast p1, Lcom/picacomic/fregata/holders/AnonymousChatViewHolder;

    .line 52
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/holders/AnonymousChatViewHolder;->a(Lcom/picacomic/fregata/objects/AnonymousChatDataObject;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 41
    new-instance p2, Lcom/picacomic/fregata/holders/AnonymousChatViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0073

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/picacomic/fregata/holders/AnonymousChatViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 43
    new-instance p2, Lcom/picacomic/fregata/holders/AnonymousChatViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0072

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/picacomic/fregata/holders/AnonymousChatViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->userId:Ljava/lang/String;

    return-void
.end method
