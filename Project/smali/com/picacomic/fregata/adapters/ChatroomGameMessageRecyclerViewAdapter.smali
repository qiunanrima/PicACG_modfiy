.class public Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChatroomGameMessageRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ChatroomGameMessageRecyclerViewAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 26
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;I)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 37
    iget-object p1, p1, Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;->textView_message:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Game Message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;
    .locals 3

    .line 31
    new-instance p2, Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b007d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;->a(Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;->c(Landroid/view/ViewGroup;I)Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;

    move-result-object p1

    return-object p1
.end method
