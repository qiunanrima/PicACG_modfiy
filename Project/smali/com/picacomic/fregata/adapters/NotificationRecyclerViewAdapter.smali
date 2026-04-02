.class public Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NotificationRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/picacomic/fregata/holders/NotificationViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NotificationRecyclerViewAdapter"


# instance fields
.field context:Landroid/content/Context;

.field jN:Lcom/picacomic/fregata/a/h;

.field ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/NotificationObject;",
            ">;"
        }
    .end annotation
.end field

.field jc:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/NotificationObject;",
            ">;",
            "Lcom/picacomic/fregata/a/h;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 30
    iget-object p1, p0, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;->jc:Landroid/view/LayoutInflater;

    .line 31
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    .line 32
    iput-object p3, p0, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;->jN:Lcom/picacomic/fregata/a/h;

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/holders/NotificationViewHolder;I)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 43
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/holders/NotificationViewHolder;->a(Lcom/picacomic/fregata/objects/NotificationObject;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public k(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/NotificationViewHolder;
    .locals 4

    .line 37
    new-instance p2, Lcom/picacomic/fregata/holders/NotificationViewHolder;

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;->jc:Landroid/view/LayoutInflater;

    const v2, 0x7f0b009f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;->jN:Lcom/picacomic/fregata/a/h;

    invoke-direct {p2, v0, p1, v1}, Lcom/picacomic/fregata/holders/NotificationViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/h;)V

    return-object p2
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/picacomic/fregata/holders/NotificationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;->a(Lcom/picacomic/fregata/holders/NotificationViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;->k(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/NotificationViewHolder;

    move-result-object p1

    return-object p1
.end method
