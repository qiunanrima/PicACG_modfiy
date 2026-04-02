.class Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$1;
.super Ljava/lang/Object;
.source "TitleEditPopupFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$1;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/16 p1, 0x54

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
