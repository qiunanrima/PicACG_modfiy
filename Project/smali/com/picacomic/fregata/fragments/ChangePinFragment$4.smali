.class Lcom/picacomic/fregata/fragments/ChangePinFragment$4;
.super Ljava/lang/Object;
.source "ChangePinFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChangePinFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChangePinFragment;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment$4;->kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 136
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment$4;->kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChangePinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment$4;->kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChangePinFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment$4;->kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    iget-boolean p1, p1, Lcom/picacomic/fregata/fragments/ChangePinFragment;->kK:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment$4;->kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    iget-boolean p1, p1, Lcom/picacomic/fregata/fragments/ChangePinFragment;->kL:Z

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment$4;->kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChangePinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0f00b5

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 138
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment$4;->kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChangePinFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment$4;->kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChangePinFragment;->editText_pinConfirm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->g(Landroid/content/Context;Ljava/lang/String;)Z

    .line 139
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment$4;->kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChangePinFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :cond_0
    return-void
.end method
