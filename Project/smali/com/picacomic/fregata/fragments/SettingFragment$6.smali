.class Lcom/picacomic/fregata/fragments/SettingFragment$6;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/SettingFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rE:Lcom/picacomic/fregata/fragments/SettingFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$6;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 442
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$6;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "https://www.picacomic.com/faq"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showFaqAlertDialog(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method
