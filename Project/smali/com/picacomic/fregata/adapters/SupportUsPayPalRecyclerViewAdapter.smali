.class public Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SupportUsPayPalRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/picacomic/fregata/holders/SupportUsPayPalViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SupportUsPayPalRecyclerViewAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/SupportUsPayPalObject;",
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
            "Lcom/picacomic/fregata/objects/SupportUsPayPalObject;",
            ">;",
            "Lcom/picacomic/fregata/a/k;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    .line 28
    iput-object p3, p0, Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/holders/SupportUsPayPalViewHolder;I)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_4

    .line 40
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;

    if-eqz p2, :cond_4

    .line 44
    iget v0, p2, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->imageId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 45
    iget-object v0, p1, Lcom/picacomic/fregata/holders/SupportUsPayPalViewHolder;->imageView_image:Landroid/widget/ImageView;

    iget v1, p2, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->imageId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    :cond_0
    iget-object v0, p2, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p1, Lcom/picacomic/fregata/holders/SupportUsPayPalViewHolder;->textView_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_1
    iget-object v0, p2, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->priceUnit:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p1, Lcom/picacomic/fregata/holders/SupportUsPayPalViewHolder;->textView_priceUnit:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->priceUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_2
    iget-object v0, p2, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->price:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p1, Lcom/picacomic/fregata/holders/SupportUsPayPalViewHolder;->textView_price:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->price:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_3
    iget-object v0, p2, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->description:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 61
    iget-object p1, p1, Lcom/picacomic/fregata/holders/SupportUsPayPalViewHolder;->textView_description:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->description:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public l(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/SupportUsPayPalViewHolder;
    .locals 3

    .line 33
    new-instance p2, Lcom/picacomic/fregata/holders/SupportUsPayPalViewHolder;

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b00a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;->jb:Lcom/picacomic/fregata/a/k;

    invoke-direct {p2, p1, v0}, Lcom/picacomic/fregata/holders/SupportUsPayPalViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/k;)V

    return-object p2
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/picacomic/fregata/holders/SupportUsPayPalViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;->a(Lcom/picacomic/fregata/holders/SupportUsPayPalViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;->l(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/SupportUsPayPalViewHolder;

    move-result-object p1

    return-object p1
.end method
