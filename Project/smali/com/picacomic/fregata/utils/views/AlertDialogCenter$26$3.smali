.class Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$3;
.super Ljava/lang/Object;
.source "AlertDialogCenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;)V
    .locals 0

    .line 1133
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$3;->this$0:Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1136
    iget-object p2, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$3;->this$0:Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;

    iget-object p2, p2, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;->val$context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/picacomic/fregata/utils/e;->u(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1137
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
