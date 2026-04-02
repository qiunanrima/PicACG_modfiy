.class Lcom/picacomic/fregata/fragments/LoginFragment$3$2;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/LoginFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qd:Lcom/picacomic/fregata/fragments/LoginFragment$3;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/LoginFragment$3;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$3$2;->qd:Lcom/picacomic/fregata/fragments/LoginFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 237
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
