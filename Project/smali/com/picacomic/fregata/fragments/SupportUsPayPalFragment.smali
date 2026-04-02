.class public Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "SupportUsPayPalFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/k;


# static fields
.field public static final TAG:Ljava/lang/String; = "SupportUsPayPalFragment"


# instance fields
.field arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/SupportUsPayPalObject;",
            ">;"
        }
    .end annotation
.end field

.field description:Ljava/lang/String;

.field jQ:Landroid/support/v7/widget/LinearLayoutManager;

.field priceUnit:Ljava/lang/String;

.field rS:Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;

.field rT:[Ljava/lang/String;

.field rU:[Ljava/lang/String;

.field rV:[Ljava/lang/String;

.field recyclerView_paypal:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090202
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x6

    .line 38
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MB2YUFR74MDJC"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=SLMX9KT5QG2TJ"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=CZ9ZGGEV5JFC8"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BP6DZ5GMR4A9N"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=6U3R7MRUR5HZJ"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=UFRC5P8VGMPWU"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->rT:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public C(I)V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->rT:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-static {v0, p1}, Lcom/picacomic/fregata/utils/g;->A(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bH()V
    .locals 0

    .line 107
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    return-void
.end method

.method public bI()V
    .locals 0

    .line 112
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    return-void
.end method

.method public ca()V
    .locals 0

    .line 98
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    return-void
.end method

.method public init()V
    .locals 9

    .line 68
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 70
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->rU:[Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->rV:[Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->priceUnit:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->description:Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->arrayList:Ljava/util/ArrayList;

    :goto_0
    const/4 v0, 0x6

    if-ge v2, v0, :cond_0

    .line 79
    new-instance v0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->rU:[Ljava/lang/String;

    aget-object v5, v1, v2

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->priceUnit:Ljava/lang/String;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->rV:[Ljava/lang/String;

    aget-object v7, v1, v2

    iget-object v8, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->description:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->rS:Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;

    .line 89
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->recyclerView_paypal:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 90
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->recyclerView_paypal:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->rS:Lcom/picacomic/fregata/adapters/SupportUsPayPalRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b006d

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/SupportUsPayPalFragment;->a(Landroid/view/View;)V

    return-object p1
.end method
