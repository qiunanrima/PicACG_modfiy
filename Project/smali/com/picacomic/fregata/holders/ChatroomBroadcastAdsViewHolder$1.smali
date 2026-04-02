.class Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder$1;
.super Ljava/lang/Object;
.source "ChatroomBroadcastAdsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;-><init>(Landroid/view/View;Lcom/picacomic/fregata/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ss:Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder$1;->ss:Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder$1;->ss:Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;

    iget-object p1, p1, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->jn:Lcom/picacomic/fregata/a/a;

    iget-object v0, p0, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder$1;->ss:Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;

    invoke-virtual {v0}, Lcom/picacomic/fregata/holders/ChatroomBroadcastAdsViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/a;->G(I)V

    return-void
.end method
