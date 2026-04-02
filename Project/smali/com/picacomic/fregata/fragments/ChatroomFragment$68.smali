.class Lcom/picacomic/fregata/fragments/ChatroomFragment$68;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

.field final synthetic mD:Landroid/widget/EditText;

.field final synthetic mp:Ljava/lang/String;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Ljava/lang/String;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .line 3582
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$68;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$68;->mp:Ljava/lang/String;

    iput-object p3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$68;->mD:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$68;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 3585
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$68;->mp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$68;->mD:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3586
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$68;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3587
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$68;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3588
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$68;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
