.class Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$2;
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

    .line 1140
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$2;->this$0:Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1143
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
