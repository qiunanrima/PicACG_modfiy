.class Lcom/picacomic/fregata/fragments/ChatroomFragment$11;
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

    .line 878
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$11;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 881
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$11;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$11;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->T(Ljava/lang/String;)V

    return-void
.end method
