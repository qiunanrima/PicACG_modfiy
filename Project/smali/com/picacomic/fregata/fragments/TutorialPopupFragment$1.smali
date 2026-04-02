.class Lcom/picacomic/fregata/fragments/TutorialPopupFragment$1;
.super Ljava/lang/Object;
.source "TutorialPopupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/TutorialPopupFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sb:Lcom/picacomic/fregata/fragments/TutorialPopupFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/TutorialPopupFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/TutorialPopupFragment$1;->sb:Lcom/picacomic/fregata/fragments/TutorialPopupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/TutorialPopupFragment$1;->sb:Lcom/picacomic/fregata/fragments/TutorialPopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/TutorialPopupFragment;->dismiss()V

    return-void
.end method
