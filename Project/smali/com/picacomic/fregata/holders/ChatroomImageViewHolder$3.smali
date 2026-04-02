.class Lcom/picacomic/fregata/holders/ChatroomImageViewHolder$3;
.super Ljava/lang/Object;
.source "ChatroomImageViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sw:Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder$3;->sw:Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 68
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder$3;->sw:Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;

    iget-object p1, p1, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->jn:Lcom/picacomic/fregata/a/a;

    iget-object v0, p0, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder$3;->sw:Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;

    invoke-virtual {v0}, Lcom/picacomic/fregata/holders/ChatroomImageViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/a;->F(I)V

    return-void
.end method
