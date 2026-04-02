.class Lcom/picacomic/fregata/fragments/ProfilePopupFragment$10;
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

    .line 191
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$10;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 194
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$10;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$10;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/picacomic/fregata/activities/BaseActivity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$10;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$10;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$10;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/activities/BaseActivity;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$10;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/activities/BaseActivity;->D(Ljava/lang/String;)V

    .line 196
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$10;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->dismiss()V

    :cond_0
    return-void
.end method
