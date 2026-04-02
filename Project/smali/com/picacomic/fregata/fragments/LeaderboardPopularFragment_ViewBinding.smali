.class public Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment_ViewBinding;
.super Ljava/lang/Object;
.source "LeaderboardPopularFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private pO:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment_ViewBinding;->pO:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    const-string v0, "field \'radioGroup_time\'"

    .line 23
    const-class v1, Landroid/widget/RadioGroup;

    const v2, 0x7f0901ea

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->radioGroup_time:Landroid/widget/RadioGroup;

    const-string v0, "field \'radioButton_24hr\'"

    .line 24
    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901e7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->radioButton_24hr:Landroid/widget/RadioButton;

    const-string v0, "field \'radioButton_7days\'"

    .line 25
    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901e9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->radioButton_7days:Landroid/widget/RadioButton;

    const-string v0, "field \'radioButton_30days\'"

    .line 26
    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901e8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->radioButton_30days:Landroid/widget/RadioButton;

    const-string v0, "field \'recyclerView_popular\'"

    .line 27
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901fe

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->recyclerView_popular:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment_ViewBinding;->pO:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment_ViewBinding;->pO:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    .line 37
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->radioGroup_time:Landroid/widget/RadioGroup;

    .line 38
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->radioButton_24hr:Landroid/widget/RadioButton;

    .line 39
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->radioButton_7days:Landroid/widget/RadioButton;

    .line 40
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->radioButton_30days:Landroid/widget/RadioButton;

    .line 41
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->recyclerView_popular:Landroid/support/v7/widget/RecyclerView;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
