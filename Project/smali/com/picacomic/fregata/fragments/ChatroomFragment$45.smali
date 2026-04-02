.class Lcom/picacomic/fregata/fragments/ChatroomFragment$45;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 633
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$45;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 641
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0x8

    if-lez p1, :cond_0

    .line 642
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$45;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_sendMessage:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-ne p1, p3, :cond_1

    .line 643
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$45;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_sendAudio:Landroid/widget/ImageButton;

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 644
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$45;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_sendMessage:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 647
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$45;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_sendAudio:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-ne p1, p3, :cond_1

    .line 648
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$45;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_sendAudio:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 649
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$45;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_sendMessage:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
