.class public Lcom/picacomic/fregata/fragments/ChangePinFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ChangePinFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private kR:Lcom/picacomic/fregata/fragments/ChangePinFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/ChangePinFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment_ViewBinding;->kR:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    const-string v0, "field \'toolbar\'"

    .line 23
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f09030d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChangePinFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'editText_pin\'"

    .line 24
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900c0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChangePinFragment;->editText_pin:Landroid/widget/EditText;

    const-string v0, "field \'editText_pinConfirm\'"

    .line 25
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900c1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChangePinFragment;->editText_pinConfirm:Landroid/widget/EditText;

    const-string v0, "field \'button_change\'"

    .line 26
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090035

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChangePinFragment;->button_change:Landroid/widget/Button;

    const-string v0, "field \'button_cancel\'"

    .line 27
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090036

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/ChangePinFragment;->button_cancel:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment_ViewBinding;->kR:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment_ViewBinding;->kR:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    .line 37
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChangePinFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 38
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChangePinFragment;->editText_pin:Landroid/widget/EditText;

    .line 39
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChangePinFragment;->editText_pinConfirm:Landroid/widget/EditText;

    .line 40
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChangePinFragment;->button_change:Landroid/widget/Button;

    .line 41
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChangePinFragment;->button_cancel:Landroid/widget/Button;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
