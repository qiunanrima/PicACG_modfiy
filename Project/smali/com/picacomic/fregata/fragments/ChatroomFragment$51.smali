.class Lcom/picacomic/fregata/fragments/ChatroomFragment$51;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 3011
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;->mo:Ljava/lang/String;

    iput-object p3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;->mv:Ljava/lang/String;

    iput-object p4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;->iQ:Ljava/lang/String;

    iput-object p5, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;->mq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 3015
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget p2, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lB:I

    if-gez p2, :cond_0

    return-void

    .line 3018
    :cond_0
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->m(Z)V

    const/16 p2, 0xa

    .line 3019
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    .line 3024
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;->mo:Ljava/lang/String;

    const-string v1, "ruff@picacomic.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;->mv:Ljava/lang/String;

    const-string v1, "ruff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3025
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    new-instance v8, Lcom/picacomic/fregata/objects/chatroomObjects/MuteAction;

    const-string v2, "mute"

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;->mo:Ljava/lang/String;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget v1, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lB:I

    aget v4, p2, v1

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;->mv:Ljava/lang/String;

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;->iQ:Ljava/lang/String;

    iget-object v7, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;->mq:Ljava/lang/String;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/picacomic/fregata/objects/chatroomObjects/MuteAction;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class p2, Lcom/picacomic/fregata/objects/chatroomObjects/MuteAction;

    invoke-static {v0, v8, p2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Lcom/picacomic/fregata/fragments/ChatroomFragment;Lcom/picacomic/fregata/objects/chatroomObjects/ChatroomSystemAction;Ljava/lang/reflect/Type;)V

    .line 3027
    :cond_1
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    const/4 v0, -0x1

    iput v0, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lB:I

    .line 3028
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x5
        0xf
        0x1e
        0x3c
        0xb4
        0x5a0
        0x10e0
        0x2760
    .end array-data
.end method
