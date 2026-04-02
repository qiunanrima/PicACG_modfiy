.class Lcom/picacomic/fregata/fragments/ChatroomFragment$63;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->T(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

.field final synthetic mo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Ljava/lang/String;)V
    .locals 0

    .line 3221
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$63;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$63;->mo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 3225
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$63;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$63;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 3231
    :pswitch_0
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$63;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    new-instance v0, Lcom/picacomic/fregata/objects/chatroomObjects/TimeAction;

    const-string v1, "time"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$63;->mo:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$63;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v4, v4, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/picacomic/fregata/objects/chatroomObjects/TimeAction;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-class v1, Lcom/picacomic/fregata/objects/chatroomObjects/TimeAction;

    invoke-static {p2, v0, v1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Lcom/picacomic/fregata/fragments/ChatroomFragment;Lcom/picacomic/fregata/objects/chatroomObjects/ChatroomSystemAction;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 3228
    :pswitch_1
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$63;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    new-instance v0, Lcom/picacomic/fregata/objects/chatroomObjects/TimeAction;

    const-string v1, "time"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$63;->mo:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$63;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v4, v4, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/picacomic/fregata/objects/chatroomObjects/TimeAction;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-class v1, Lcom/picacomic/fregata/objects/chatroomObjects/TimeAction;

    invoke-static {p2, v0, v1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Lcom/picacomic/fregata/fragments/ChatroomFragment;Lcom/picacomic/fregata/objects/chatroomObjects/ChatroomSystemAction;Ljava/lang/reflect/Type;)V

    .line 3234
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
