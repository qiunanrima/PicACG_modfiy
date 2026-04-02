.class public Lcom/picacomic/fregata/fragments/GameFragment$ItemOffsetDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picacomic/fregata/fragments/GameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemOffsetDecoration"
.end annotation


# instance fields
.field private offset:I

.field final synthetic pl:Lcom/picacomic/fregata/fragments/GameFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/GameFragment;I)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/GameFragment$ItemOffsetDecoration;->pl:Lcom/picacomic/fregata/fragments/GameFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 223
    iput p2, p0, Lcom/picacomic/fregata/fragments/GameFragment$ItemOffsetDecoration;->offset:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 229
    iget p4, p0, Lcom/picacomic/fregata/fragments/GameFragment$ItemOffsetDecoration;->offset:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 230
    iget p4, p0, Lcom/picacomic/fregata/fragments/GameFragment$ItemOffsetDecoration;->offset:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 231
    iget p4, p0, Lcom/picacomic/fregata/fragments/GameFragment$ItemOffsetDecoration;->offset:I

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 232
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 233
    :cond_0
    iget p2, p0, Lcom/picacomic/fregata/fragments/GameFragment$ItemOffsetDecoration;->offset:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    return-void
.end method
