.class public Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment_ViewBinding;
.super Ljava/lang/Object;
.source "OneTimeUpdateQAFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private qt:Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment_ViewBinding;->qt:Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;

    const-string v0, "field \'editText_question_1\'"

    .line 23
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900dd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_1:Landroid/widget/EditText;

    const-string v0, "field \'editText_question_2\'"

    .line 24
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900de

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_2:Landroid/widget/EditText;

    const-string v0, "field \'editText_question_3\'"

    .line 25
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900df

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_3:Landroid/widget/EditText;

    const-string v0, "field \'editText_answer_1\'"

    .line 26
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900d7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_1:Landroid/widget/EditText;

    const-string v0, "field \'editText_answer_2\'"

    .line 27
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900d8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_2:Landroid/widget/EditText;

    const-string v0, "field \'editText_answer_3\'"

    .line 28
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900d9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_3:Landroid/widget/EditText;

    const-string v0, "field \'button_update\'"

    .line 29
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090099

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->button_update:Landroid/widget/Button;

    const-string v0, "field \'toolbar\'"

    .line 30
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f09030d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/Toolbar;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment_ViewBinding;->qt:Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment_ViewBinding;->qt:Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;

    .line 40
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_1:Landroid/widget/EditText;

    .line 41
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_2:Landroid/widget/EditText;

    .line 42
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_3:Landroid/widget/EditText;

    .line 43
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_1:Landroid/widget/EditText;

    .line 44
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_2:Landroid/widget/EditText;

    .line 45
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_3:Landroid/widget/EditText;

    .line 46
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->button_update:Landroid/widget/Button;

    .line 47
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
