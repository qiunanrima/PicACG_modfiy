.class final Lcom/picacomic/fregata/utils/views/AlertDialogCenter$17;
.super Ljava/lang/Object;
.source "AlertDialogCenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showUpdateApkAlertDialog(Landroid/content/Context;Lcom/picacomic/fregata/objects/LatestApplicationObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationObject:Lcom/picacomic/fregata/objects/LatestApplicationObject;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/objects/LatestApplicationObject;Landroid/content/Context;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$17;->val$applicationObject:Lcom/picacomic/fregata/objects/LatestApplicationObject;

    iput-object p2, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$17;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 724
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$17;->val$applicationObject:Lcom/picacomic/fregata/objects/LatestApplicationObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LatestApplicationObject;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 725
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$17;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$17;->val$applicationObject:Lcom/picacomic/fregata/objects/LatestApplicationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/LatestApplicationObject;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/g;->A(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$17;->val$context:Landroid/content/Context;

    const-string v0, "https://picacomic.com"

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/g;->A(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
