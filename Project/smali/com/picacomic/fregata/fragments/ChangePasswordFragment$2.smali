.class Lcom/picacomic/fregata/fragments/ChangePasswordFragment$2;
.super Ljava/lang/Object;
.source "ChangePasswordFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChangePasswordFragment;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$2;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 101
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$2;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_password:Landroid/widget/EditText;

    const/16 p2, 0x81

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 102
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$2;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_passwordConfirm:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$2;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_password:Landroid/widget/EditText;

    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 108
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$2;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_passwordConfirm:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    return-void
.end method
