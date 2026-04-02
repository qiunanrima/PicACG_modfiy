.class public Lcom/picacomic/fregata/fragments/TitleEditPopupFragment_ViewBinding;
.super Ljava/lang/Object;
.source "TitleEditPopupFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private sa:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment_ViewBinding;->sa:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    const-string v0, "field \'textView_userId\'"

    .line 23
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902fa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->textView_userId:Landroid/widget/TextView;

    const-string v0, "field \'textView_title\'"

    .line 24
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902f9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->textView_title:Landroid/widget/TextView;

    const-string v0, "field \'editText_newTitle\'"

    .line 25
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900e6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->editText_newTitle:Landroid/widget/EditText;

    const-string v0, "field \'button_cancel\'"

    .line 26
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090097

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->button_cancel:Landroid/widget/Button;

    const-string v0, "field \'button_confirm\'"

    .line 27
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090098

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->button_confirm:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment_ViewBinding;->sa:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment_ViewBinding;->sa:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    .line 37
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->textView_userId:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->textView_title:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->editText_newTitle:Landroid/widget/EditText;

    .line 40
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->button_cancel:Landroid/widget/Button;

    .line 41
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->button_confirm:Landroid/widget/Button;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
