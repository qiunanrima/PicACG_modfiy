.class Lcom/picacomic/fregata/fragments/ChatroomFragment$54;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iQ:Ljava/lang/String;

.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

.field final synthetic mo:Ljava/lang/String;

.field final synthetic mq:Ljava/lang/String;

.field final synthetic mv:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3056
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->mo:Ljava/lang/String;

    iput-object p3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->mv:Ljava/lang/String;

    iput-object p4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->iQ:Ljava/lang/String;

    iput-object p5, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->mq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 3060
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget p2, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lC:I

    if-ltz p2, :cond_0

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget p2, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lC:I

    const/4 v0, 0x7

    if-ge p2, v0, :cond_0

    .line 3061
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->v(Z)V

    .line 3062
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    new-instance v7, Lcom/picacomic/fregata/objects/chatroomObjects/SetAvatarAction;

    const-string v1, "set_avatar"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->mo:Ljava/lang/String;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->mv:Ljava/lang/String;

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->iQ:Ljava/lang/String;

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->mq:Ljava/lang/String;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lC:I

    add-int/lit8 v6, v0, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/picacomic/fregata/objects/chatroomObjects/SetAvatarAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-class v0, Lcom/picacomic/fregata/objects/chatroomObjects/SetAvatarAction;

    invoke-static {p2, v7, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Lcom/picacomic/fregata/fragments/ChatroomFragment;Lcom/picacomic/fregata/objects/chatroomObjects/ChatroomSystemAction;Ljava/lang/reflect/Type;)V

    .line 3064
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    const/4 v0, -0x1

    iput v0, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lC:I

    goto :goto_0

    .line 3067
    :cond_0
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->mo:Ljava/lang/String;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->mv:Ljava/lang/String;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->iQ:Ljava/lang/String;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;->mq:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3072
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
