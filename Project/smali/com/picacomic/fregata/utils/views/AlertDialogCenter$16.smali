.class final Lcom/picacomic/fregata/utils/views/AlertDialogCenter$16;
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

    .line 703
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$16;->val$applicationObject:Lcom/picacomic/fregata/objects/LatestApplicationObject;

    iput-object p2, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$16;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 706
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$16;->val$applicationObject:Lcom/picacomic/fregata/objects/LatestApplicationObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LatestApplicationObject;->getApk()Lcom/picacomic/fregata/objects/ApkObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 708
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$16;->val$applicationObject:Lcom/picacomic/fregata/objects/LatestApplicationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/LatestApplicationObject;->getApk()Lcom/picacomic/fregata/objects/ApkObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ApkObject;->getFileServer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->aC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$16;->val$applicationObject:Lcom/picacomic/fregata/objects/LatestApplicationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/LatestApplicationObject;->getApk()Lcom/picacomic/fregata/objects/ApkObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ApkObject;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 709
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$16;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/picacomic/fregata/utils/g;->A(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$16;->val$context:Landroid/content/Context;

    const-string v0, "https://picacomic.com"

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/g;->A(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
