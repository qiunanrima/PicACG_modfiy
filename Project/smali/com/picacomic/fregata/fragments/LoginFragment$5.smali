.class Lcom/picacomic/fregata/fragments/LoginFragment$5;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/LoginFragment;->a(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qc:Lcom/picacomic/fregata/fragments/LoginFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/LoginFragment;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$5;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 386
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
