.class public Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment_ViewBinding;
.super Ljava/lang/Object;
.source "OneTimeIdUpdateFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private qq:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment_ViewBinding;->qq:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    const-string v0, "field \'toolbar\'"

    .line 23
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f09030d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'editText_username\'"

    .line 24
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900cf

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->editText_username:Landroid/widget/EditText;

    const-string v0, "field \'editText_email\'"

    .line 25
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900ce

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->editText_email:Landroid/widget/EditText;

    const-string v0, "field \'button_update\'"

    .line 26
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090079

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->button_update:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment_ViewBinding;->qq:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment_ViewBinding;->qq:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    .line 36
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 37
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->editText_username:Landroid/widget/EditText;

    .line 38
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->editText_email:Landroid/widget/EditText;

    .line 39
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->button_update:Landroid/widget/Button;

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
