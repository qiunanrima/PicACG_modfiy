.class public Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ComicListRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ComicListRecyclerViewAdapter"


# instance fields
.field final VIEW_TYPE_NORMAL:I

.field private final context:Landroid/content/Context;

.field final defaultUrl:Ljava/lang/String;

.field private ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicListObject;",
            ">;"
        }
    .end annotation
.end field

.field final jo:I

.field final jp:I

.field private jq:Lcom/picacomic/fregata/a/b;

.field jr:I

.field js:[Ljava/lang/String;

.field jt:[Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/b;)V
    .locals 5
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

    .line 53
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->VIEW_TYPE_NORMAL:I

    const/4 v1, 0x1

    .line 32
    iput v1, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->jo:I

    const/4 v2, 0x2

    .line 33
    iput v2, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->jp:I

    .line 54
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 56
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    .line 57
    iput-object p3, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->jq:Lcom/picacomic/fregata/a/b;

    .line 62
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    div-int/lit8 p2, p2, 0x14

    add-int/2addr p2, v1

    iput p2, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->jr:I

    const/16 p2, 0x8

    .line 64
    new-array p3, p2, [Ljava/lang/String;

    iput-object p3, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->js:[Ljava/lang/String;

    .line 65
    iget-object p3, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->js:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v0

    .line 66
    iget-object p3, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->js:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v1

    .line 67
    iget-object p3, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->js:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f00f7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v2

    .line 68
    iget-object p3, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->js:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, p3, v2

    .line 69
    iget-object p3, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->js:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, p3, v2

    .line 70
    iget-object p3, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->js:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, p3, v2

    .line 71
    iget-object p3, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->js:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, p3, v2

    .line 72
    iget-object p3, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->js:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, p3, v2

    .line 74
    new-array p3, p2, [Z

    iput-object p3, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->jt:[Z

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->jt:[Z

    aput-boolean v0, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {p1}, Lcom/picacomic/fregata/utils/e;->al(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->af(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->defaultUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->jt:[Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->jt:[Z

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->jt:[Z

    aput-boolean p2, v0, p1

    .line 340
    invoke-virtual {p0}, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->jr:I

    .line 329
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->jr:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 8

    .line 106
    div-int/lit8 v0, p1, 0x15

    sub-int v0, p1, v0

    if-eqz p1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 110
    rem-int/lit8 v1, v1, 0x15

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->jr:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x2

    return p1

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v0, :cond_9

    const/16 p1, 0x8

    .line 119
    new-array v3, p1, [Z

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_3

    .line 121
    aput-boolean v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    :cond_3
    iget-object v4, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/ComicListObject;->getCategories()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    .line 127
    :goto_1
    iget-object v5, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/ComicListObject;->getCategories()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    const/4 v5, 0x0

    :goto_2
    if-ge v5, p1, :cond_5

    .line 130
    aget-boolean v6, v3, v5

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/ComicListObject;->getCategories()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->js:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 131
    aput-boolean v2, v3, v5

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-ge v0, p1, :cond_8

    .line 139
    iget-object v4, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->jt:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_7

    aget-boolean v4, v3, v0

    if-eqz v4, :cond_7

    return v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    return v1

    :cond_9
    return v1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 185
    div-int/lit8 v0, p2, 0x15

    sub-int/2addr p2, v0

    .line 189
    instance-of v0, p1, Lcom/picacomic/fregata/holders/AdvertisementListViewHolder;

    if-eqz v0, :cond_0

    .line 190
    check-cast p1, Lcom/picacomic/fregata/holders/AdvertisementListViewHolder;

    iget-object p1, p1, Lcom/picacomic/fregata/holders/AdvertisementListViewHolder;->webView_ads:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->defaultUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_0
    instance-of v0, p1, Lcom/picacomic/fregata/holders/ComicListEmptyHolder;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    instance-of v0, p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;

    if-eqz v0, :cond_2

    .line 198
    check-cast p1, Lcom/picacomic/fregata/holders/ComicListViewHolder;

    .line 200
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 202
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/ComicListObject;

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->js:[Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/picacomic/fregata/holders/ComicListViewHolder;->a(Lcom/picacomic/fregata/objects/ComicListObject;[Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 99
    new-instance p2, Lcom/picacomic/fregata/holders/ComicListViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0085

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->jq:Lcom/picacomic/fregata/a/b;

    invoke-direct {p2, v1, p1, v0}, Lcom/picacomic/fregata/holders/ComicListViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/b;)V

    return-object p2

    .line 96
    :pswitch_0
    new-instance p2, Lcom/picacomic/fregata/holders/AdvertisementListViewHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0070

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/picacomic/fregata/holders/AdvertisementListViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 93
    :pswitch_1
    new-instance p2, Lcom/picacomic/fregata/holders/ComicListEmptyHolder;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0084

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/picacomic/fregata/holders/ComicListEmptyHolder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
