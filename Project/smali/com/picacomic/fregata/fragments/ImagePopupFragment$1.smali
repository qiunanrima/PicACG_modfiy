.class Lcom/picacomic/fregata/fragments/ImagePopupFragment$1;
.super Ljava/lang/Object;
.source "ImagePopupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ImagePopupFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pB:Lcom/picacomic/fregata/fragments/ImagePopupFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ImagePopupFragment;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ImagePopupFragment$1;->pB:Lcom/picacomic/fregata/fragments/ImagePopupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ImagePopupFragment$1;->pB:Lcom/picacomic/fregata/fragments/ImagePopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ImagePopupFragment;->dismiss()V

    return-void
.end method
