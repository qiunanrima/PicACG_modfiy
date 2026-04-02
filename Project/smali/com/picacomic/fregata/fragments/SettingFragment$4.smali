.class Lcom/picacomic/fregata/fragments/SettingFragment$4;
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

    .line 402
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$4;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 405
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$4;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/e;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 406
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$4;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f00c0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 409
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    .line 411
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$4;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/BaseActivity;->bE()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 412
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$4;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/picacomic/fregata/services/ChatroomService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.picacomic.fregata.interfaces.foregroundservice.action.startforeground"

    .line 413
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$4;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 418
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$4;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/picacomic/fregata/services/ChatroomService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.picacomic.fregata.interfaces.foregroundservice.action.startforeground"

    .line 419
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$4;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    :goto_0
    return-void
.end method
