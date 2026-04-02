.class Lcom/picacomic/fregata/fragments/ChatroomFragment$66;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->X(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

.field final synthetic mA:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;[Ljava/lang/String;)V
    .locals 0

    .line 3529
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$66;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$66;->mA:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 3533
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$66;->mA:[Ljava/lang/String;

    aget-object p2, v0, p2

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 3535
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$66;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3536
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$66;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 3538
    aget-object p2, p2, v1

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 3540
    array-length v0, p2

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 3541
    aget-object v0, p2, v2

    const-string v3, "\u65b0\u7684\u7a31\u865f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, p2, v2

    const-string v3, "\u55f6\u5494\u5e63"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, p2, v2

    const-string v3, "\u7de8\u865f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, p2, v2

    const-string v3, "\u9801\u78bc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3542
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$66;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$66;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {v3}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    aget-object v1, p2, v1

    aget-object p2, p2, v2

    invoke-virtual {v0, v3, v1, p2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3546
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
