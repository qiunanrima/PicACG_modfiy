.class Lcom/picacomic/fregata/fragments/ProfilePopupFragment$1;
.super Ljava/lang/Object;
.source "ProfilePopupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$1;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$1;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->linearLayout_adminFunction:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$1;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->linearLayout_adminFunction:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$1;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->linearLayout_adminFunction:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
