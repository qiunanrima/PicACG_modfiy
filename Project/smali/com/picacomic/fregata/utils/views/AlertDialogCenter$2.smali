.class final Lcom/picacomic/fregata/utils/views/AlertDialogCenter$2;
.super Ljava/lang/Object;
.source "AlertDialogCenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->commentOptions(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$reportComment:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$2;->val$reportComment:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 203
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-nez p2, :cond_0

    .line 205
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$2;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$2;->val$reportComment:Landroid/view/View$OnClickListener;

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->reportComment(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
