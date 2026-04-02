.class Lcom/picacomic/fregata/activities/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/activities/MainActivity;->i(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iO:Lcom/picacomic/fregata/activities/MainActivity;

.field final synthetic iP:Landroid/widget/EditText;

.field final synthetic iQ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/MainActivity;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity$2;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    iput-object p2, p0, Lcom/picacomic/fregata/activities/MainActivity$2;->iP:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/picacomic/fregata/activities/MainActivity$2;->iQ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 882
    iget-object p2, p0, Lcom/picacomic/fregata/activities/MainActivity$2;->iP:Landroid/widget/EditText;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/picacomic/fregata/activities/MainActivity$2;->iP:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/picacomic/fregata/activities/MainActivity$2;->iP:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 883
    iget-object p2, p0, Lcom/picacomic/fregata/activities/MainActivity$2;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity$2;->iP:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/picacomic/fregata/activities/MainActivity$2;->iQ:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->a(ILjava/lang/String;)V

    .line 884
    iget-object p2, p0, Lcom/picacomic/fregata/activities/MainActivity$2;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/picacomic/fregata/activities/MainActivity;->l(Z)V

    .line 885
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
