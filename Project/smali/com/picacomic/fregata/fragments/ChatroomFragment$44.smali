.class Lcom/picacomic/fregata/fragments/ChatroomFragment$44;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->cw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V
    .locals 0

    .line 2621
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$44;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 2624
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$44;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->b(Lcom/picacomic/fregata/fragments/ChatroomFragment;Z)V

    return-void
.end method
