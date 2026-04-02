.class Lcom/picacomic/fregata/fragments/AnonymousChatFragment$2;
.super Ljava/lang/Object;
.source "AnonymousChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/AnonymousChatFragment;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$2;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 231
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$2;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->s(Z)V

    .line 232
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$2;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    const-string v0, "leave room"

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->J(Ljava/lang/String;)V

    return-void
.end method
