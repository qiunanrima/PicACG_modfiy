.class Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment$1;
.super Ljava/lang/Object;
.source "SupportUsOfficalGroupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rQ:Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment$1;->rQ:Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 40
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment$1;->rQ:Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment$1;->rQ:Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "https://www.picacomic.com/faq"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showFaqAlertDialog(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
