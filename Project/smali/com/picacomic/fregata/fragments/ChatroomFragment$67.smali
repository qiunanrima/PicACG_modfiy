.class Lcom/picacomic/fregata/fragments/ChatroomFragment$67;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->ca()V
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

    .line 692
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$67;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 695
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$67;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 696
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$67;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$67;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$67$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$67$1;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment$67;)V

    new-instance v2, Lcom/picacomic/fregata/fragments/ChatroomFragment$67$2;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$67$2;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment$67;)V

    invoke-static {p1, v0, v1, v2}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showChatroomSettingDialog(Landroid/content/Context;Lcom/picacomic/fregata/objects/UserProfileObject;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
