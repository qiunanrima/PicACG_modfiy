.class Lcom/picacomic/fregata/fragments/ChatroomFragment$60;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iQ:Ljava/lang/String;

.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

.field final synthetic mo:Ljava/lang/String;

.field final synthetic mq:Ljava/lang/String;

.field final synthetic mv:Ljava/lang/String;

.field final synthetic mx:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3148
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;->mx:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;->mo:Ljava/lang/String;

    iput-object p4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;->mq:Ljava/lang/String;

    iput-object p5, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;->mv:Ljava/lang/String;

    iput-object p6, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;->iQ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 3153
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;->mx:Landroid/widget/EditText;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;->mx:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;->mx:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 3154
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->w(Z)V

    .line 3156
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;->mo:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;->mx:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;->mq:Ljava/lang/String;

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;->mv:Ljava/lang/String;

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;->iQ:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3158
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
