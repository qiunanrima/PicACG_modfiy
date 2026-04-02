.class public Lcom/picacomic/fregata/fragments/ProfileEditFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ProfileEditFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private qQ:Lcom/picacomic/fregata/fragments/ProfileEditFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/ProfileEditFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment_ViewBinding;->qQ:Lcom/picacomic/fregata/fragments/ProfileEditFragment;

    const-string v0, "field \'toolbar\'"

    .line 25
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f09030d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'textView_name\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902cc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->textView_name:Landroid/widget/TextView;

    const-string v0, "field \'textView_email\'"

    .line 27
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902c9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->textView_email:Landroid/widget/TextView;

    const-string v0, "field \'textView_birth\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902c8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->textView_birth:Landroid/widget/TextView;

    const-string v0, "field \'editText_slogan\'"

    .line 29
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900d6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->editText_slogan:Landroid/widget/EditText;

    const-string v0, "field \'button_update\'"

    .line 30
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09007f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->button_update:Landroid/widget/Button;

    const-string v0, "field \'imageView_avatar\'"

    .line 31
    const-class v1, Lde/hdodenhof/circleimageview/CircleImageView;

    const v2, 0x7f09016e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment_ViewBinding;->qQ:Lcom/picacomic/fregata/fragments/ProfileEditFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment_ViewBinding;->qQ:Lcom/picacomic/fregata/fragments/ProfileEditFragment;

    .line 41
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 42
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->textView_name:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->textView_email:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->textView_birth:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->editText_slogan:Landroid/widget/EditText;

    .line 46
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->button_update:Landroid/widget/Button;

    .line 47
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
