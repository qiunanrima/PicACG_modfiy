.class Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder$2;
.super Ljava/lang/Object;
.source "ChatroomAudioViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sq:Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder$2;->sq:Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder$2;->sq:Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;

    iget-object p1, p1, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->jn:Lcom/picacomic/fregata/a/a;

    iget-object v0, p0, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder$2;->sq:Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;

    invoke-virtual {v0}, Lcom/picacomic/fregata/holders/ChatroomAudioViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/a;->G(I)V

    return-void
.end method
