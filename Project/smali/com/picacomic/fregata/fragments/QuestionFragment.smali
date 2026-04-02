.class public Lcom/picacomic/fregata/fragments/QuestionFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "QuestionFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bH()V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    return-void
.end method

.method public bI()V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    return-void
.end method

.method public ca()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    return-void
.end method

.method public init()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0067

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/QuestionFragment;->a(Landroid/view/View;)V

    return-object p1
.end method
