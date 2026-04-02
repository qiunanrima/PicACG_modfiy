.class Lcom/picacomic/fregata/fragments/ProfilePopupFragment$12;
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

    .line 213
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$12;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 216
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$12;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->ax(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$12;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$12;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$12;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$12;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->dismiss()V

    .line 218
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$12;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/activities/MainActivity;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$12;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$12;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
