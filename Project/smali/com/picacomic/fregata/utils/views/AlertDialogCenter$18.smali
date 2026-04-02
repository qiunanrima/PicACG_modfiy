.class final Lcom/picacomic/fregata/utils/views/AlertDialogCenter$18;
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
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$forceUpdate:Z


# direct methods
.method constructor <init>(ZLandroid/content/Context;Landroid/app/Dialog;)V
    .locals 0

    .line 735
    iput-boolean p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$18;->val$forceUpdate:Z

    iput-object p2, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$18;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$18;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 738
    iget-boolean p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$18;->val$forceUpdate:Z

    if-eqz p1, :cond_0

    .line 739
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$18;->val$context:Landroid/content/Context;

    const v0, 0x7f0f003d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 741
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$18;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method
