.class Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$5;
.super Ljava/lang/Object;
.source "AlertDialogCenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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

.field final synthetic val$selected:[Z


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;[Z)V
    .locals 0

    .line 1086
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$5;->this$0:Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;

    iput-object p2, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$5;->val$selected:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    .line 1089
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$5;->val$selected:[Z

    aput-boolean p3, p1, p2

    return-void
.end method
