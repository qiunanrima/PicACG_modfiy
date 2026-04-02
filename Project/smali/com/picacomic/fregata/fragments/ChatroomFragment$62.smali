.class Lcom/picacomic/fregata/fragments/ChatroomFragment$62;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->cE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

.field final synthetic my:Landroid/widget/EditText;

.field final synthetic mz:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 3186
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$62;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$62;->my:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$62;->mz:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 3191
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$62;->my:Landroid/widget/EditText;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$62;->my:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$62;->my:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 3195
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$62;->mz:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$62;->mz:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$62;->mz:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3196
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$62;->mz:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p2, v0

    .line 3202
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$62;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$62;->my:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->b(ILjava/lang/String;)V

    .line 3204
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
