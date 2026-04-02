.class public Lcom/picacomic/fregata/fragments/ChatroomContainerFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ChatroomContainerFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private kV:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment_ViewBinding;->kV:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    const-string v0, "field \'viewPager_tags\'"

    .line 21
    const-class v1, Landroid/support/v4/view/ViewPager;

    const v2, 0x7f09031b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment_ViewBinding;->kV:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment_ViewBinding;->kV:Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    .line 31
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
