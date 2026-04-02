.class Lcom/picacomic/fregata/fragments/ChatroomFragment$58;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic mw:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3098
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->mw:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->mo:Ljava/lang/String;

    iput-object p4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->mv:Ljava/lang/String;

    iput-object p5, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->iQ:Ljava/lang/String;

    iput-object p6, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->mq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 3104
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->mw:Landroid/widget/EditText;

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->mw:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->mw:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 3106
    :try_start_0
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->mw:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v7, p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3108
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v7, -0x1

    :goto_0
    if-lez v7, :cond_1

    .line 3114
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->v(Z)V

    .line 3115
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    new-instance v8, Lcom/picacomic/fregata/objects/chatroomObjects/SetAvatarExtraAction;

    const-string v2, "set_avatar"

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->mo:Ljava/lang/String;

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->mv:Ljava/lang/String;

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->iQ:Ljava/lang/String;

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->mq:Ljava/lang/String;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/picacomic/fregata/objects/chatroomObjects/SetAvatarExtraAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-class v1, Lcom/picacomic/fregata/objects/chatroomObjects/SetAvatarExtraAction;

    invoke-static {p2, v8, v1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Lcom/picacomic/fregata/fragments/ChatroomFragment;Lcom/picacomic/fregata/objects/chatroomObjects/ChatroomSystemAction;Ljava/lang/reflect/Type;)V

    .line 3116
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput v0, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lC:I

    .line 3119
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
