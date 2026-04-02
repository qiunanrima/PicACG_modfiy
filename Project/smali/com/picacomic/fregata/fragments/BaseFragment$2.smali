.class Lcom/picacomic/fregata/fragments/BaseFragment$2;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/BaseFragment;->a(Landroid/support/v7/widget/Toolbar;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kr:Lcom/picacomic/fregata/fragments/BaseFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/BaseFragment;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/BaseFragment$2;->kr:Lcom/picacomic/fregata/fragments/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 211
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/BaseFragment$2;->kr:Lcom/picacomic/fregata/fragments/BaseFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/BaseFragment$2;->kr:Lcom/picacomic/fregata/fragments/BaseFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/picacomic/fregata/activities/BaseActivity;

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/BaseFragment$2;->kr:Lcom/picacomic/fregata/fragments/BaseFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
