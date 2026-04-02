.class public Lcom/picacomic/fregata/fragments/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/i;


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseFragment"


# instance fields
.field private kq:Lbutterknife/Unbinder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/BaseActivity;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/activities/BaseActivity;->C(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/BaseActivity;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/activities/BaseActivity;->D(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/BaseActivity;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/activities/BaseActivity;->E(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/Toolbar;IZ)V
    .locals 0

    .line 190
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    if-eqz p3, :cond_0

    const p2, 0x7f0800cc

    .line 192
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 193
    new-instance p2, Lcom/picacomic/fregata/fragments/BaseFragment$1;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/fragments/BaseFragment$1;-><init>(Lcom/picacomic/fregata/fragments/BaseFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/Toolbar;Ljava/lang/String;Z)V
    .locals 0

    .line 205
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    const p2, 0x7f0800cc

    .line 207
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 208
    new-instance p2, Lcom/picacomic/fregata/fragments/BaseFragment$2;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/fragments/BaseFragment$2;-><init>(Lcom/picacomic/fregata/fragments/BaseFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 88
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/BaseFragment;->kq:Lbutterknife/Unbinder;

    .line 89
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 90
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 91
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    return-void
.end method

.method public a(Lcom/picacomic/fregata/objects/UserProfileObject;)V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/BaseActivity;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/activities/BaseActivity;->a(Lcom/picacomic/fregata/objects/UserProfileObject;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/picacomic/fregata/activities/BaseActivity;

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public bA()V
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/BaseActivity;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/BaseActivity;->bA()V

    :cond_0
    return-void
.end method

.method public bB()V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/BaseActivity;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/BaseActivity;->bB()V

    :cond_0
    return-void
.end method

.method public bC()V
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/BaseActivity;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/BaseActivity;->bC()V

    :cond_0
    return-void
.end method

.method public bH()V
    .locals 6

    .line 59
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->P(Landroid/content/Context;)J

    move-result-wide v0

    .line 62
    sget-object v2, Lcom/picacomic/fregata/fragments/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last Time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " Current Time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " Diff = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x6ddd00

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    invoke-static {}, Lcom/picacomic/fregata/utils/a;->dS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->G(Ljava/lang/String;)V

    .line 71
    :cond_0
    instance-of v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/MainActivity;->bV()V

    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    invoke-static {}, Lcom/picacomic/fregata/utils/a;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->F(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bI()V
    .locals 0

    return-void
.end method

.method public ca()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 98
    instance-of p1, p1, Lcom/picacomic/fregata/activities/BaseActivity;

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/picacomic/fregata/activities/BaseActivity;->a(Lcom/picacomic/fregata/a/i;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 114
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 115
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/BaseFragment;->kq:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/BaseFragment;->kq:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    goto :goto_0

    .line 118
    :cond_0
    sget-object v0, Lcom/picacomic/fregata/fragments/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "unbinder = null"

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/BaseActivity;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/BaseActivity;->a(Lcom/picacomic/fregata/a/i;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bC()V

    .line 109
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    return-void
.end method
